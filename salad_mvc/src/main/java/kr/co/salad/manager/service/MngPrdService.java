package kr.co.salad.manager.service;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngPrdDAO;
import kr.co.salad.manager.domain.MngPrdDomain;
import kr.co.salad.manager.vo.MngPrdVO;
@Component
public class MngPrdService {
	
	@Autowired(required = false)
	private MngPrdDAO mpDAO;
	
	public String searchPrdTotal() {//��ϵ� ��ü ��ǰ ��
		
		int totalPrdCnt=0;
		
		MngPrdVO mpVO=new MngPrdVO();
		
		mpVO.setKeyword("");
		
		totalPrdCnt=mpDAO.selectPrdTotalCount(mpVO);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("totalPrdCnt", totalPrdCnt);
		
		return jsonObj.toJSONString();
	}//��ϵ� ��ü ��ǰ ��
	
	public String searchMainCate() {
		JSONObject jsonObj=new JSONObject();
		jsonObj.put("result", true);
		
		JSONObject jsonTemp=null;
		
		List<MngPrdDomain> list=mpDAO.selectMainCate();
		JSONArray jsonArr=new JSONArray();
		for(MngPrdDomain mpDomain : list) {
			jsonTemp=new JSONObject();
			jsonTemp.put("mainCateNum", mpDomain.getMainCateNum());
			jsonTemp.put("mainCateName", mpDomain.getMainCateName());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		//�����͸� ���� JSONArray�� JSONObject�� �Ҵ�
		jsonObj.put("mainCateData", jsonArr);
		
		return jsonObj.toJSONString();
	}//selectMainCate
	
	public String searchSubCate(int mainCateNum) {
		
		JSONObject jsonObj=new JSONObject();
		
		boolean resultFlag=false;
		
		List<MngPrdDomain> list=mpDAO.selectSubCate(mainCateNum);
		resultFlag=true;
			
		JSONObject jsonTemp=null;
		JSONArray jsonArr=new JSONArray();
			
		for(MngPrdDomain mpDomain : list) {
			jsonTemp=new JSONObject();
			//DB��ȸ ����� JSONObject�� �Ҵ�
			jsonTemp.put("subCateNum", mpDomain.getSubCateNum());
			jsonTemp.put("subCateName", mpDomain.getSubCateName());
			//���� ���� JSONObject�� JSONArray �Ҵ�
			jsonArr.add(jsonTemp);
		}//end for
		//��� ��ȸ����� ���� JSONArray�� JSONObject �Ҵ�
		jsonObj.put("subCateData", jsonArr);
		jsonObj.put("resultFlag", resultFlag);
		jsonObj.put("searchMainCateNum", mainCateNum);
		//{"searchKeyword":"����", "resultFlag", true, 
		//"makerData":[{"maker":"����"},{"maker":"���"},,,,]}
		
		return jsonObj.toJSONString();
	}//searchSubCate
	
	public String searchPrdListJson(MngPrdVO mpVO) {//��ǰ ���� ����Ʈ
		List<MngPrdDomain> list=null;
		
		int paramCurrentPage=mpVO.getCurrentPage();
		
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
		totalCount=mpDAO.selectPrdTotalCount(mpVO);
		
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
		mpVO.setStartNum(startNum);
		mpVO.setEndNum(endNum);
		
		list=mpDAO.selectPrdList(mpVO);
		
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
		
		for(MngPrdDomain tempDomain : list){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			jsonTemp.put("thum", tempDomain.getThum());
			jsonTemp.put("prdName", tempDomain.getPrdName());
			jsonTemp.put("prdRegistDate", tempDomain.getPrdRegistDate());
			
			int prdPrice=tempDomain.getPrdPrice();
			int prdDiscount=tempDomain.getPrdDiscount();
			
			double prdDouble=((double)prdDiscount/(double)100);
			
			double prdDCPrice=(prdPrice-(prdPrice*prdDouble));//���� ������ �ǸŰ�
			
			jsonTemp.put("prdDCPrice", (int)prdDCPrice);
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchPrdListJson
	
	public MngPrdDomain searchPrdDetail(int prdNum) {//��ǰ ������
		
		MngPrdDomain mpDomain=mpDAO.selectPrdDetail(prdNum);
		
		List<String> prdImgList=null; 
		List<String> prdBodyImgList=null; 
		
		prdImgList=mpDAO.selectPrdImgList(prdNum);
		prdBodyImgList=mpDAO.selectPrdBodyImgList(prdNum);
		
		mpDomain.setPrdImgList(prdImgList);
		mpDomain.setPrdBodyImgList(prdBodyImgList);
		
		return mpDomain;
	}//searchPrdDetail
	
	public void addPrd(MngPrdVO mpVO) {
		
		mpDAO.insertPrd(mpVO);
		
	}//addPrd
	
	public void editPrd(MngPrdVO mpVO) {
		
		mpDAO.updatePrd(mpVO);
		
	}//editPrd
	
}//class
