package kr.co.salad.manager.service;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngQnaDAO;
import kr.co.salad.manager.domain.MngQnaDomain;
import kr.co.salad.manager.vo.MngQnaVO;

@Component
public class MngQnaService {

	@Autowired(required = false)
	private MngQnaDAO mqDAO;
	
	public String searchQnaTotalJson() {
		
		MngQnaVO mqVO = new MngQnaVO();
		
		int qnaTotalCnt = 0;
		
		mqVO.setKeyword("");
		qnaTotalCnt = mqDAO.selectQnaTotalCount(mqVO);
		
		mqVO.setFiledName("qnaAFlag");
		mqVO.setKeyword("답변");
		int qnaTotalA=mqDAO.selectQnaTotalCount(mqVO);
		
		mqVO.setFiledName("qnaAFlag");
		mqVO.setKeyword("미답변");
		int qnaTotalNA=mqDAO.selectQnaTotalCount(mqVO);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("qnaTotalCnt", qnaTotalCnt);
		jsonObj.put("qnaTotalA", qnaTotalA);
		jsonObj.put("qnaTotalNA", qnaTotalNA);
		
		return jsonObj.toJSONString();
		
	}
	
	public String searchMainCate() {
		JSONObject jsonObj = new JSONObject();
		jsonObj.put("result", true);
		
		JSONObject jsonTemp = null;
		
		List<MngQnaDomain> list = mqDAO.selectMainCate();
		JSONArray jsonArr = new JSONArray();
		for(MngQnaDomain mqDomain : list) {
			jsonTemp = new JSONObject();
			jsonTemp.put("mainCateNum", mqDomain.getMainCateNum());
			jsonTemp.put("mainCateName", mqDomain.getMainCateName());
			
			jsonArr.add(jsonTemp);
		}
		
		jsonObj.put("mainCateData", jsonArr);
		
		return jsonObj.toJSONString();

	}
	
	public String searchSubCate(int mainCateNum	) {
		JSONObject jsonObj = new JSONObject();
		
		boolean resultFlag = false;
		
		List<MngQnaDomain> list = mqDAO.selectSubCate(mainCateNum);
		resultFlag= true;
		
		JSONObject jsonTemp = null;
		JSONArray jsonArr =new JSONArray();
		
		for(MngQnaDomain mqDomain : list) {
			jsonTemp = new JSONObject();
			
			jsonTemp.put("subCateNum", mqDomain.getSubCateNum());
			jsonTemp.put("subCateName", mqDomain.getSubCateName());
			jsonArr.add(jsonTemp);
		}
		
		jsonObj.put("subCateData", jsonArr);
		jsonObj.put("resultFlag", resultFlag);
		jsonObj.put("searchMainCateNum", mainCateNum);
		
		return jsonObj.toJSONString();
	}
	
	public String searchQnaListJson(MngQnaVO mqVO) {
		List<MngQnaDomain> list = null;
		
int paramCurrentPage=mqVO.getCurrentPage();
		
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
		totalCount=mqDAO.selectQnaTotalCount(mqVO);
		
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
		mqVO.setStartNum(startNum);
		mqVO.setEndNum(endNum);
		
		list=mqDAO.selectQnaList(mqVO);
		
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
		
		for(MngQnaDomain tempDomain : list){//예외가 발생했거나 조회결과가 없을 경우
			jsonTemp=new JSONObject();
			jsonTemp.put("qnaNum", tempDomain.getQnaNum());
			jsonTemp.put("mainCateName", tempDomain.getMainCateName());
			jsonTemp.put("mainSubName", tempDomain.getSubCateName());
			jsonTemp.put("id", tempDomain.getId());
			jsonTemp.put("qnaTitle", tempDomain.getQnaTitle());
			jsonTemp.put("qnaCont", tempDomain.getQnaCont());
			jsonTemp.put("qnaWriteDate", tempDomain.getQnaWriteDate());
			tempDomain.setQnaAFlag(( "1".equals(tempDomain.getQnaAFlag()) ?"답변":"미답변"));
			jsonTemp.put("qnaAFlag", tempDomain.getQnaAFlag());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	public MngQnaDomain searchQnaDetail(int qnaNum) {
		
		MngQnaDomain mqDomain = mqDAO.selectQnaDetail(qnaNum);
		System.out.println(mqDomain);
		
		return mqDomain;
		
	}
	

//	public String searchQnaDetailJson(String id) {//회원 상세정보
//		
////		MngQnaDomain mqDomain=mqDAO.selectMemberDetail(id);
//		
//		System.out.println(mqDomain);
//		
//		JSONObject jsonObj=new JSONObject();
//		
//		jsonObj.put("qnaNum", mqDomain.getQnaNum());
//		jsonObj.put("id", mqDomain.getId());
//		jsonObj.put("qnaWriteDate", mqDomain.getQnaWriteDate());
//		jsonObj.put("qnaTitle", mqDomain.getQnaTitle());
//		jsonObj.put("qnaCont", mqDomain.getQnaCont());
//		jsonObj.put("outAFlag", mqDomain.getQnaAFlag());
//		
//		return jsonObj.toJSONString();
//	}//searchMemberDetailJson
}
