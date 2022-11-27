package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.PrdDetailRevDAO;
import kr.co.salad.user.dao.ReviewDAO;
import kr.co.salad.user.domain.ReviewDomain;
import kr.co.salad.user.vo.ReviewVO;

@Component
public class ReviewService {
	
	@Autowired(required = false)
	private ReviewDAO revDAO;
	
	@Autowired(required = false)
	private PrdDetailRevDAO pdrDAO;
	
	//후기리스트
	public String searchRevList(ReviewVO revVO) {
		List<ReviewDomain> revDomain=new ArrayList<ReviewDomain>();
		int paramCurrentPage=revVO.getCurrentPage();
		
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
		}//catch
		
		//전체 데이터 개수
		totalCount=revDAO.selectRevListCount(revVO);
		
		//총 페이지 수
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//if
							
		startNum = (currentPage) * pageScale-pageScale+1;//각 페이지의 시작 지점
		
		endNum = startNum+pageScale-1;
		
		//VO set
		revVO.setStartNum(startNum);
		revVO.setEndNum(endNum);
		
		revDomain=revDAO.selectRevList(revVO);
		
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
		jsonObj.put("isEmpty", revDomain.isEmpty());
		jsonObj.put("listSize", revDomain.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		

		for(ReviewDomain tempDomain : revDomain){//예외가 발생했거나 조회결과가 없을 경우
			jsonTemp=new JSONObject();
			jsonTemp.put("revNum", tempDomain.getRevNum());
			jsonTemp.put("name", tempDomain.getName());
			jsonTemp.put("revWriteDate", tempDomain.getRevWriteDate());
			jsonTemp.put("thum", tempDomain.getThum());
			jsonTemp.put("revTitle", tempDomain.getRevTitle());
			jsonTemp.put("revHits", tempDomain.getRevHits());
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	//후기 상세보기
	public ReviewDomain searchRevDetail(int revNum) {
		ReviewDomain revDomain=new ReviewDomain();
		revDomain=revDAO.selectRevDetail(revNum);
		return revDomain;
	}
	
	//후기 이미지 리스트
	public List<String> searchRevImgList(int revNum) {
		List<String> list = new ArrayList<String>();
		
		list=pdrDAO.selectRevImgList(revNum);
		
		return list;
	}
	
	//후기 조회수
	public int updateRevCount(int revNum) {
		int hitsCnt=0;
		
		hitsCnt=revDAO.updateRevCount(revNum);
		
		return hitsCnt;
	}

}
