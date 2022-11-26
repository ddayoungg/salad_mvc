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
		//�̺κ��� �ٽ� �ѹ� ����..
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
		totalCount=pdrDAO.selectRevTotalCount(prdNum);
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
		pdrVO.setStartNum(startNum);
		pdrVO.setEndNum(endNum);
						
		list=pdrDAO.selectRevList(pdrVO);
		
		//������ ��
		int pageLength=5;//������ ��� ���� 1~5������
				
		int currentBlock=currentPage % pageLength == 0 ? (currentPage / pageLength) : (currentPage / pageLength) +1;//���� �������� ��� ���� �����ִ��� �˷���.
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
		
		String reserInfo="";//reserFlag�� ���� ���� ���� ����
		String strDate="";//Date���� ���������� ��ȯ �� ����
		
		List<String> revImgList=null;
		for(PrdDetailRevDomain tempDomain : list){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
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
	
	public String searchRevDetailJson(int revNum) {//�ı� �˾� ������
		PrdDetailRevDomain rDomain=pdrDAO.selectRevDetail(revNum);

		JSONObject jsonObj=new JSONObject();

		
		String reserInfo="";//reserFlag�� ���� ���� ���� ����
		String strDate="";//Date���� ���������� ��ȯ �� ����
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
	
	public int editRevHits(int revNum) { //�ı� ��ȸ�� ����
		int resultCnt=0;
		
		resultCnt=pdrDAO.updateRevHits(revNum);
		
		return resultCnt;
	}//editRevHits
	
	public int searchRevWriteOrderNum(PrdDetailRevVO pdrVO) { //�ı� �ۼ� ���� ����
		int orderNum=0;
		
		orderNum=pdrDAO.selectRevWriteOrderNum(pdrVO);
		
		return orderNum;
	}//searchRevFlag
	
	public void addRevWrite(PrdDetailRevVO pdrVO) {//�ı� �ۼ�
		
		pdrDAO.insertRevWrite(pdrVO);
		
	}//addRevWrite
	
}//class
