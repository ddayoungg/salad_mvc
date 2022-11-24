package kr.co.salad.manager.service;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngPrdDAO;
import kr.co.salad.manager.domain.MngPrdDomain;
import kr.co.salad.manager.vo.MngPrdVO;
@Component
public class MngPrdService {
	
	@Autowired(required = false)
	private MngPrdDAO mpDAO;
	
	public String searchPrdTotal() {//등록된 전체 상품 수
		
		int totalPrdCnt=0;
		
		MngPrdVO mpVO=new MngPrdVO();
		
		mpVO.setKeyword("");
		
		totalPrdCnt=mpDAO.selectPrdTotalCount(mpVO);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("totalPrdCnt", totalPrdCnt);
		
		return jsonObj.toJSONString();
	}//등록된 전체 상품 수
	
	public String searchMainCate() {
		JSONObject jsonObj=new JSONObject();
		jsonObj.put("result", true);
		
		JSONObject jsonTemp=null;
		
		List<MngPrdDomain> list=mpDAO.selectMainCate();
		JSONArray jsonArr=new JSONArray();
		for(MngPrdDomain mpDomain : list) {
			jsonTemp=new JSONObject();
			jsonTemp.put("mainCateNum", mpDomain.getMainCateNum());
			jsonTemp.put("mainCateName", mpDomain.getMainCateName());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		//데이터를 가진 JSONArray를 JSONObject에 할당
		jsonObj.put("mainCateData", jsonArr);
		
		return jsonObj.toJSONString();
	}//selectMainCate
	
	public String searchSubCate(int mainCateNum) {
		
		JSONObject jsonObj=new JSONObject();
		
		boolean resultFlag=false;
		
		List<MngPrdDomain> list=mpDAO.selectSubCate(mainCateNum);
		resultFlag=true;
			
		JSONObject jsonTemp=null;
		JSONArray jsonArr=new JSONArray();
			
		for(MngPrdDomain mpDomain : list) {
			jsonTemp=new JSONObject();
			//DB조회 결과를 JSONObject에 할당
			jsonTemp.put("subCateNum", mpDomain.getSubCateNum());
			jsonTemp.put("subCateName", mpDomain.getSubCateName());
			//값을 가진 JSONObject을 JSONArray 할당
			jsonArr.add(jsonTemp);
		}//end for
		//모든 조회결과를 가진 JSONArray를 JSONObject 할당
		jsonObj.put("subCateData", jsonArr);
		jsonObj.put("resultFlag", resultFlag);
		jsonObj.put("searchMainCateNum", mainCateNum);
		//{"searchKeyword":"국산", "resultFlag", true, 
		//"makerData":[{"maker":"현대"},{"maker":"기아"},,,,]}
		
		return jsonObj.toJSONString();
	}//searchSubCate
	
	public String searchPrdListJson(MngPrdVO mpVO) {//상품 관리 리스트
		List<MngPrdDomain> list=null;
		
		int paramCurrentPage=mpVO.getCurrentPage();
		
		//페이징 시작
		int currentPage=1;//현재 페이지
		int totalCount=0;//전체 행 수
		int totalPage=0;//전체 페이지 수
		int pageScale=10;//한 페이지 보여줄 행 수
		int startNum=0;//페이지의 시작 지점
		int endNum=0;//페이지의 끝 지점
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//파라미터가 null이 나올 경우
			currentPage=1;
		}//end catch
		
		//전체 데이터 개수
		totalCount=mpDAO.selectPrdTotalCount(mpVO);
		
		//총 페이지 수
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//end if
		
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
							
		startNum = (currentPage) * pageScale-pageScale+1;//각 페이지의 시작 지점
		
		endNum = startNum+pageScale-1;
		
		//VO set
		mpVO.setStartNum(startNum);
		mpVO.setEndNum(endNum);
		
		list=mpDAO.selectPrdList(mpVO);
		
		//페이지 블럭
		int pageLength=5;//페이지 블록 길이 1~5페이지
						
		int currentBlock=currentPage % pageLength == 0 ? currentPage / pageLength : (currentPage / pageLength) +1;//현재 페이지가 어디 블럭에 속해있는지 알려줌.
		int startPage = (currentBlock - 1) * pageLength + 1;
		int endPage=startPage + pageLength - 1;
						
		//마지막 페이지 묶음에서 총 페이지 수를 넘어가면 끝 페이즈를 마지막 페이지 숫자로 지정
		if(endPage > totalPage) {
			endPage = totalPage;
		}//end if

		JSONObject jsonObj=new JSONObject();
		jsonObj.put("currentPage", currentPage);
		jsonObj.put("startPage", startPage);
		jsonObj.put("endPage", endPage);
		jsonObj.put("totalCount", totalCount);
		jsonObj.put("totalPage", totalPage);
		jsonObj.put("isEmpty", list.isEmpty());
		jsonObj.put("listSize", list.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		
		for(MngPrdDomain tempDomain : list){//예외가 발생했거나 조회결과가 없을 경우
			jsonTemp=new JSONObject();
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			jsonTemp.put("thum", tempDomain.getThum());
			jsonTemp.put("prdName", tempDomain.getPrdName());
			jsonTemp.put("prdRegistDate", tempDomain.getPrdRegistDate());
			
			int prdPrice=tempDomain.getPrdPrice();
			int prdDiscount=tempDomain.getPrdDiscount();
			
			double prdDouble=((double)prdDiscount/(double)100);
			
			double prdDCPrice=(prdPrice-(prdPrice*prdDouble));//할인 적용한 판매가
			
			jsonTemp.put("prdDCPrice", (int)prdDCPrice);
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchPrdListJson
	
	public MngPrdDomain searchPrdDetail(int prdNum) {//상품 상세정보
		
		MngPrdDomain mpDomain=mpDAO.selectPrdDetail(prdNum);
		
		List<String> prdImgList=null; 
		List<String> prdBodyImgList=null; 
		
		prdImgList=mpDAO.selectPrdImgList(prdNum);
		prdBodyImgList=mpDAO.selectPrdBodyImgList(prdNum);
		
		mpDomain.setPrdImgList(prdImgList);
		mpDomain.setPrdBodyImgList(prdBodyImgList);
		
		return mpDomain;
	}//searchPrdDetail
	
	public void addPrd(MngPrdVO mpVO) {
		
		mpDAO.insertPrd(mpVO);
		
	}//addPrd
	
	public void editPrd(MngPrdVO mpVO) {
		
		mpDAO.updatePrd(mpVO);
		
	}//editPrd
	
}//class
