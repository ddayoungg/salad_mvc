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
		
		//����¡ ����
		int currentPage=1;//���� ������
		int totalCount=0;//��ü �� ��
		int totalPage=0;//��ü ������ ��
		int pageScale=5;//�� ������ ������ �� ��
		int startNum=0;//�������� ���� ����
		int endNum=0;//�������� �� ����
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//�Ķ���Ͱ� null�� ���� ���
			currentPage=1;
		}//end catch
		
		//��ü ������ ����
		totalCount=pdqDAO.selectQnaTotalCount(prdNum);
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
		pdqVO.setStartNum(startNum);
		pdqVO.setEndNum(endNum);
						
		list=pdqDAO.selectQnaList(pdqVO);
		
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
		jsonObj.put("startPage", startPage);
		jsonObj.put("endPage", endPage);
		jsonObj.put("totalCount", totalCount);
		jsonObj.put("totalPage", totalPage);
		jsonObj.put("isEmpty", list.isEmpty());
		jsonObj.put("listSize", list.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;

		String reserInfo="";//reserFlag�� ���� ���� ���� ����
		String strDate="";//Date���� ���������� ��ȯ �� ����
		for(PrdDetailQnaDomain tempDomain : list){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
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
