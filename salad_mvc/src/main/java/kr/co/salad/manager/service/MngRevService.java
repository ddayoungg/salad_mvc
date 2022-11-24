package kr.co.salad.manager.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngRevDAO;
import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.vo.MngRevVO;

@Component
public class MngRevService {
	
	@Autowired(required = false)
	private MngRevDAO mrDAO;
	
	//후기전체,검색리스트
	public String searchRevList(MngRevVO mrVO) {
		List<MngRevDomain> mrDomain=new ArrayList<MngRevDomain>();
		
		int paramCurrentPage=mrVO.getCurrentPage();
		
		//페이징 시작
		int currentPage=1;//현재 페이지
		int totalCount=0;//전체 행 수
		int totalPage=0;//전체 페이지 수
		int pageScale=10;//한 페이지 보여줄 행 수
		int startNum=0;//페이지의 시작 지점
		int endNum=0;
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//파라미터가 null이 나올 경우
			currentPage=1;
		}//end catch
		
		//전체 데이터 개수
		totalCount=mrDAO.selectRevListCount(mrVO);
		
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
		mrVO.setStartNum(startNum);
		mrVO.setEndNum(endNum);
		
		mrDomain=mrDAO.selectRevList(mrVO);
		
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
		jsonObj.put("isEmpty", mrDomain.isEmpty());
		jsonObj.put("listSize", mrDomain.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		

		for(MngRevDomain tempDomain : mrDomain){//예외가 발생했거나 조회결과가 없을 경우
			jsonTemp=new JSONObject();
			jsonTemp.put("revNum", tempDomain.getRevNum());
			jsonTemp.put("name", tempDomain.getName());
			jsonTemp.put("revWriteDate", tempDomain.getRevWriteDate());
			jsonTemp.put("prdName", tempDomain.getPrdName());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	//후기 상세보기
	public MngRevDomain searchRevDetail(int revNum) {
		MngRevDomain mrDomain=new MngRevDomain();
		mrDomain=mrDAO.selectRevDetail(revNum);
		return mrDomain;
	}
	
	//후기 삭제
	public int removeRev(int revNum) {
		int removeFlag=0;
		removeFlag=mrDAO.deleteRev(revNum);
		return removeFlag; //1은 삭제완료, 0은 삭제실패
	}
	
	//베스트 후기 등록
	public int editBestRev(int revNum) {
		int bestFlag=0;
		bestFlag=mrDAO.updateBestRev(revNum);
		return bestFlag;//1은 등록,0은 미등록
	}
	
	//메인카테고리
	public String searchMainCate() {
		JSONObject jsonObj=new JSONObject();
		
		boolean resultFlag=true;
		
		List<MngRevDomain> list=mrDAO.selectMainCate();
		
		JSONObject jsonTemp=null;
		JSONArray jsonArr=new JSONArray();
		for(MngRevDomain md:list) {
			jsonTemp=new JSONObject();
			jsonTemp.put("mainNum", md.getMainCateNum());
			jsonTemp.put("mainName", md.getMainCateName());
			
			jsonArr.add(jsonTemp);
		}
		
		if(jsonArr==null) {
			resultFlag=false;
		}
		
		jsonObj.put("mainData", jsonArr);
		jsonObj.put("result", resultFlag);
		
		return jsonObj.toJSONString();
	}
	
	//서브카테고리
	public String searchSubCate(int mainCate) {
		
		JSONObject jsonObj=new JSONObject();
		
		boolean resultFlag=true;
		
		List<MngRevDomain> list=mrDAO.selectSubCate(mainCate);
		
		JSONObject jsonTemp=null;
		JSONArray jsonArr=new JSONArray();
		for(MngRevDomain md:list) {
			jsonTemp=new JSONObject();
			jsonTemp.put("subNum", md.getSubCateNum());
			jsonTemp.put("subName", md.getSubCateName());
			
			jsonArr.add(jsonTemp);
		}
		
		if(jsonArr==null) {
			resultFlag=false;
		}
		
		jsonObj.put("subData", jsonArr);
		jsonObj.put("resultFlag", resultFlag);
		
		return jsonObj.toJSONString();
	}
	
	//페이징//
	
	

}
