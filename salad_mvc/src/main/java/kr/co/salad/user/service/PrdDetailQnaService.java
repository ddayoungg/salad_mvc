package kr.co.salad.user.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.PrdDetailQnaDAO;
import kr.co.salad.user.domain.PrdDetailQnaDomain;
import kr.co.salad.user.vo.PrdDetailQnaVO;
@Component
public class PrdDetailQnaService {
	
	@Autowired(required = false)
	private PrdDetailQnaDAO pdqDAO;
	
	public int searchQnaTotalCount(int prdNum) {
		int totalQnaCnt=0;
		
		totalQnaCnt=pdqDAO.selectQnaTotalCount(prdNum);
		
		return totalQnaCnt;
	}//searchRevTotalCount
	
	public String searchQnaListJson(PrdDetailQnaVO pdqVO) {
		List<PrdDetailQnaDomain> list=null;
		
		int prdNum=pdqVO.getPrdNum();
		int paramCurrentPage=pdqVO.getCurrentPage();
		
		//페이징 시작
		int currentPage=1;//현재 페이지
		int totalCount=0;//전체 행 수
		int totalPage=0;//전체 페이지 수
		int pageScale=5;//한 페이지 보여줄 행 수
		int startNum=0;//페이지의 시작 지점
		int endNum=0;//페이지의 끝 지점
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//파라미터가 null이 나올 경우
			currentPage=1;
		}//end catch
		
		//전체 데이터 개수
		totalCount=pdqDAO.selectQnaTotalCount(prdNum);
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
		pdqVO.setStartNum(startNum);
		pdqVO.setEndNum(endNum);
						
		list=pdqDAO.selectQnaList(pdqVO);
		
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
		for(PrdDetailQnaDomain tempDomain : list){//예외가 발생했거나 조회결과가 없을 경우
			jsonTemp=new JSONObject();
			strDate=new SimpleDateFormat("yyyy-MM-dd").format(tempDomain.getQnaWriteDate());

			jsonTemp.put("qnaNum", tempDomain.getQnaNum());
			jsonTemp.put("qnaTitle", tempDomain.getQnaTitle());
			jsonTemp.put("name", tempDomain.getName());
			jsonTemp.put("qnaWriteDate", strDate);
			jsonTemp.put("qnaAFlag", tempDomain.getQnaAFlag());
			
			jsonArr.add(jsonTemp);
		}//end for

		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchQna
	
	public void addQnaWrite(PrdDetailQnaVO pdqVO) {
		
		pdqDAO.insertQnaWrite(pdqVO);
		
	}//addQna
	
}//class
