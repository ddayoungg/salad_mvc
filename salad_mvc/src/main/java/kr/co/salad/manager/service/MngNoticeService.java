package kr.co.salad.manager.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngNoticeDAO;
import kr.co.salad.manager.dao.MngRevDAO;
import kr.co.salad.manager.domain.MngNoticeDomain;
import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.vo.MngNoticeVO;
import kr.co.salad.manager.vo.MngRevVO;

@Component
public class MngNoticeService {
	
	@Autowired(required = false)
	private MngNoticeDAO mnDAO;
	
	//검색,전체리스트
	public String searchNotice(MngNoticeVO mnVO){
		List<MngNoticeDomain> mnDomain= new ArrayList<MngNoticeDomain>();
        int paramCurrentPage=mnVO.getCurrentPage();
		
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
		totalCount=mnDAO.selectNotiListCount(mnVO);
		
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
		mnVO.setStartNum(startNum);
		mnVO.setEndNum(endNum);
		
		mnDomain=mnDAO.selectNotice(mnVO);
		
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
		jsonObj.put("isEmpty", mnDomain.isEmpty());
		jsonObj.put("listSize", mnDomain.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		

		for(MngNoticeDomain tempDomain : mnDomain){//예외가 발생했거나 조회결과가 없을 경우
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
	public MngNoticeDomain searchNoticeDetail(int notiNum) {
		MngNoticeDomain mn=new MngNoticeDomain();
		mn=mnDAO.selectNoticeDetail(notiNum);
		return mn;
	}
	
	//공지사항 글쓰기
	public void addNotice(MngNoticeVO mnVO) {
		mnDAO.insertNotice(mnVO);
	}
	
	//공지사항 글 수정하기
	public int editNotice(MngNoticeVO mnVO) {
		int editFlag=0;
		editFlag=mnDAO.updateNotice(mnVO);
		return editFlag;//1은 수정완료 0은수정실패
	}
	
	//공지사항 글 삭제
    public int removeNotice(int notiNum) {
    	int removeFlag=0;
    	removeFlag=mnDAO.deleteNotice(notiNum);
    	return removeFlag;//1은 삭제성공 0은 삭제실패
    }
    
  

}
