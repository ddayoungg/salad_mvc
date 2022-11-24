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
		mqVO.setKeyword("�亯");
		int qnaTotalA=mqDAO.selectQnaTotalCount(mqVO);
		
		mqVO.setFiledName("qnaAFlag");
		mqVO.setKeyword("�̴亯");
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
		
		//����¡ ����
		int currentPage=1;//���� ������
		int totalCount=0;//��ü �� ��
		int totalPage=0;//��ü ������ ��
		int pageScale=10;//�� ������ ������ �� ��
		int startNum=0;//�������� ���� ����
		int endNum=0;//�������� �� ����
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//�Ķ���Ͱ� null�� ���� ���
			currentPage=1;
		}//end catch
		
		//��ü ������ ����
		totalCount=mqDAO.selectQnaTotalCount(mqVO);
		
		//�� ������ ��
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//end if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
							
		startNum = (currentPage) * pageScale-pageScale+1;//�� �������� ���� ����
		
		endNum = startNum+pageScale-1;
		
		//VO set
		mqVO.setStartNum(startNum);
		mqVO.setEndNum(endNum);
		
		list=mqDAO.selectQnaList(mqVO);
		
		//������ ��
		int pageLength=5;//������ ��� ���� 1~5������
						
		int currentBlock=currentPage % pageLength == 0 ? currentPage / pageLength : (currentPage / pageLength) +1;//���� �������� ��� ���� �����ִ��� �˷���.
		int startPage = (currentBlock - 1) * pageLength + 1;
		int endPage=startPage + pageLength - 1;
						
		//������ ������ �������� �� ������ ���� �Ѿ�� �� ����� ������ ������ ���ڷ� ����
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
		
		for(MngQnaDomain tempDomain : list){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("qnaNum", tempDomain.getQnaNum());
			jsonTemp.put("mainCateName", tempDomain.getMainCateName());
			jsonTemp.put("mainSubName", tempDomain.getSubCateName());
			jsonTemp.put("id", tempDomain.getId());
			jsonTemp.put("qnaTitle", tempDomain.getQnaTitle());
			jsonTemp.put("qnaCont", tempDomain.getQnaCont());
			jsonTemp.put("qnaWriteDate", tempDomain.getQnaWriteDate());
			tempDomain.setQnaAFlag(( "1".equals(tempDomain.getQnaAFlag()) ?"�亯":"�̴亯"));
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
	

//	public String searchQnaDetailJson(String id) {//ȸ�� ������
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
