package kr.co.salad.user.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.PrdDetailRevDAO;
import kr.co.salad.user.domain.PrdDetailRevDomain;
import kr.co.salad.user.vo.PrdDetailRevVO;
@Component
public class PrdDetailRevService {
	
	@Autowired(required = false)
	private PrdDetailRevDAO pdrDAO;
	
	
	public List<PrdDetailRevDomain> searchBestRevList(int prdNum) {
		//이부분은 다시 한번 보기..
		List<PrdDetailRevDomain> list=new ArrayList<PrdDetailRevDomain>();
		
		list=pdrDAO.selectBestRevList(prdNum);
		
		List<PrdDetailRevDomain> tempList=new ArrayList<PrdDetailRevDomain>();
		List<String> revImgList=null; 
		for(PrdDetailRevDomain rDomain : list) {
			revImgList=pdrDAO.selectRevImgList(rDomain.getRevNum());
			rDomain.setRevImgList(revImgList); 
			
			tempList.add(rDomain);
		 }//end for
		 	
		return tempList;
	}//searchBestRevList
	
	public String searchRevListJson(PrdDetailRevVO pdrVO) {
		List<PrdDetailRevDomain> list=null;
		
		int prdNum=pdrVO.getPrdNum();
		int paramCurrentPage=pdrVO.getCurrentPage();
		
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
		totalCount=pdrDAO.selectRevTotalCount(prdNum);
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
		pdrVO.setStartNum(startNum);
		pdrVO.setEndNum(endNum);
						
		list=pdrDAO.selectRevList(pdrVO);
		
		//페이지 블럭
		int pageLength=5;//페이지 블록 길이 1~5페이지
				
		int currentBlock=currentPage % pageLength == 0 ? (currentPage / pageLength) : (currentPage / pageLength) +1;//현재 페이지가 어디 블럭에 속해있는지 알려줌.
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
		
		String reserInfo="";//reserFlag에 따른 예약 상태 저장
		String strDate="";//Date형을 문자형으로 변환 값 저장
		
		List<String> revImgList=null;
		for(PrdDetailRevDomain tempDomain : list){//예외가 발생했거나 조회결과가 없을 경우
			jsonTemp=new JSONObject();
			strDate=new SimpleDateFormat("yyyy-MM-dd").format(tempDomain.getRevWriteDate());
			revImgList=pdrDAO.selectRevImgList(tempDomain.getRevNum());
			
			jsonTemp.put("revNum", tempDomain.getRevNum());
			jsonTemp.put("name", tempDomain.getName());
			jsonTemp.put("revWriteDate", strDate);
			if(!revImgList.isEmpty()) {
				jsonObj.put("revImgThum", revImgList.get(0));
				jsonTemp.put("revImgList", revImgList);
			}//end if
			jsonTemp.put("revTitle", tempDomain.getRevTitle());
			jsonTemp.put("revCont", tempDomain.getRevCont());
			jsonTemp.put("revHits", tempDomain.getRevHits());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchRevListJson
	
	public String searchRevDetailJson(int revNum) {//후기 팝업 상세정보
		PrdDetailRevDomain rDomain=pdrDAO.selectRevDetail(revNum);

		JSONObject jsonObj=new JSONObject();

		
		String reserInfo="";//reserFlag에 따른 예약 상태 저장
		String strDate="";//Date형을 문자형으로 변환 값 저장
		strDate=new SimpleDateFormat("yyyy-MM-dd").format(rDomain.getRevWriteDate());
		
		List<String> revImgList=pdrDAO.selectRevImgList(rDomain.getRevNum());
		
		jsonObj.put("revNum", rDomain.getRevNum());
		jsonObj.put("name", rDomain.getName());
		jsonObj.put("revWriteDate", strDate);
		if(!revImgList.isEmpty()) {
			jsonObj.put("revImgThum", revImgList.get(0));
			jsonObj.put("revImgList", revImgList);
		}//end if
		jsonObj.put("revTitle", rDomain.getRevTitle());
		jsonObj.put("revCont", rDomain.getRevCont());
		jsonObj.put("revHits", rDomain.getRevHits());
		
		return jsonObj.toJSONString();
	}//searchRevDetailJson
	
	public int editRevHits(int revNum) { //후기 조회수 증가
		int resultCnt=0;
		
		resultCnt=pdrDAO.updateRevHits(revNum);
		
		return resultCnt;
	}//editRevHits
	
	public int searchRevWriteOrderNum(PrdDetailRevVO pdrVO) { //후기 작성 가능 여부
		int orderNum=0;
		
		orderNum=pdrDAO.selectRevWriteOrderNum(pdrVO);
		
		return orderNum;
	}//searchRevFlag
	
	public void addRevWrite(PrdDetailRevVO pdrVO) {//후기 작성
		
		pdrDAO.insertRevWrite(pdrVO);
		
	}//addRevWrite
	
}//class
