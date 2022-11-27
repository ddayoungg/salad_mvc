package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MyRevDAO;
import kr.co.salad.user.dao.PrdDetailRevDAO;
import kr.co.salad.user.domain.MyRevDomain;
import kr.co.salad.user.vo.MyRevVO;

@Component
public class MyRevService {
	
	@Autowired(required = false)
	private MyRevDAO mrDAO;
	
	@Autowired(required = false)
	private PrdDetailRevDAO pdrDAO;
	
	
	//나의 후기리스트, 검색리스트
	public String searchMyRevList(MyRevVO mrVO) { //
		List<MyRevDomain> list=new ArrayList<MyRevDomain>();
		
		int paramCurrentPage=mrVO.getCurrentPage();
		
		System.out.println("현재 페이지 : "+paramCurrentPage);
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
		
		System.out.println("현재 페이지 : "+currentPage);
		
		//전체 데이터 개수
		totalCount=mrDAO.selectMyRevCount(mrVO.getId());
		System.out.println("전체 데이터개수"+totalCount);
		
		//총 페이지 수
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
		totalPage = 1;
		}//end if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
		
		System.out.println("현재 페이지는?"+currentPage);
		
		startNum = (currentPage) * pageScale-pageScale+1;//각 페이지의 시작 지점
		
		endNum = startNum+pageScale-1;
		
		//VO set
		mrVO.setStartNum(startNum);
		mrVO.setEndNum(endNum);
		
		list=mrDAO.selectMyRevList(mrVO);
		
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
		
		for(MyRevDomain tempDomain : list){//예외가 발생했거나 조회결과가 없을 경우
			jsonTemp=new JSONObject();
			jsonTemp.put("revNum", tempDomain.getRevNum());
			jsonTemp.put("thum", tempDomain.getThum());
			jsonTemp.put("revTitle", tempDomain.getRevTitle());
			jsonTemp.put("revWriteDate", tempDomain.getRevWriteDate());
			jsonTemp.put("revHits", tempDomain.getRevHits());
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	//후기 상세정보
	public MyRevDomain searchMyRevDetail(int revNum) {
		MyRevDomain mrDomain=new MyRevDomain();
		mrDomain=mrDAO.selectMyRevDetil(revNum);
		
		return mrDomain;
	}
	
	
	//후기 이미지 리스트
	public List<String> searchMyRevImgList(int revNum) {
		List<String> list = new ArrayList<String>();
		
		list=pdrDAO.selectRevImgList(revNum);
		
		return list;
	}
	
//	//후기 수정하기
//	public int editMyRev(MyRevVO mrVO) {
//		int edflag=0;	 //1-성공 0-실패
//		edflag=mrDAO.updateMyRev(mrVO);
//		return edflag;
//	}
	
//	//후기 삭제하기
//	public int removeMyRev(int revNum) {
//		int removeFlag=0;	//1-성공 0-실패
//		removeFlag=mrDAO.deleteMyRev(revNum);
//		return removeFlag;
//	}

	//공지사항 조회수
	public int updateMyRevCount(int revNum) {
		int hitsCnt=0;
		
		hitsCnt= mrDAO.updateMyRevCount(revNum);
		
		return hitsCnt;
	}
	
}
