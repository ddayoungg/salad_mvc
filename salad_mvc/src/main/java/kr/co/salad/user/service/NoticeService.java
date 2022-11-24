package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.NoticeDAO;
import kr.co.salad.user.domain.NoticeDomain;
import kr.co.salad.user.vo.NoticeVO;

@Component
public class NoticeService {
	
	@Autowired(required = false)
	private NoticeDAO noDAO;
	
	//공지사항 전체리스트
	public String searchNotice(NoticeVO noVO){
		List<NoticeDomain> noDomain= new ArrayList<NoticeDomain>();
        int paramCurrentPage=noVO.getCurrentPage();
		
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
		totalCount=noDAO.selectNotiListCount(noVO);
		
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
		noVO.setStartNum(startNum);
		noVO.setEndNum(endNum);
		
		noDomain=noDAO.selectNotice(noVO);
		
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
		jsonObj.put("isEmpty", noDomain.isEmpty());
		jsonObj.put("listSize", noDomain.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		

		for(NoticeDomain tempDomain : noDomain){//예외가 발생했거나 조회결과가 없을 경우
			jsonTemp=new JSONObject();
			jsonTemp.put("notiNum", tempDomain.getNotiNum());
			jsonTemp.put("notiTitle", tempDomain.getNotiTitle());
			jsonTemp.put("notiWriteDate", tempDomain.getNotiWriteDate());
			jsonTemp.put("notiHits", tempDomain.getNotiHits());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	//공지사항 상세보기
	public NoticeDomain searchNoticeDetail(int notiNum) {
		NoticeDomain no=new NoticeDomain();
		no=noDAO.selectNoticeDetail(notiNum);
		
		
		//int hitsCnt=noDAO.updateNotiCount(notiNum);
		
		return no;
	}
	
	//공지사항 조회수
	public int updateNotiCount(int notiNum) {
		int hitsCnt=0;
		
		hitsCnt=noDAO.updateNotiCount(notiNum);
		
		return hitsCnt;
	}
}
