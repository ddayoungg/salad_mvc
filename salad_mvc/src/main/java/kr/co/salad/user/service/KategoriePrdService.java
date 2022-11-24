package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.KategoriePrdDAO;
import kr.co.salad.user.dao.PrdDetailRevDAO;
import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.vo.KategoriePrdVO;
@Component
public class KategoriePrdService {
	
	@Autowired(required = false)
	private KategoriePrdDAO kpDAO;
	
	@Autowired(required = false)
	private PrdDetailRevDAO pdrDAO;
	
	public List<KategoriePrdDomain> mainCateList() {//���� ī�װ�
		List<KategoriePrdDomain> mainCateList=new ArrayList<KategoriePrdDomain>();
		
		List<KategoriePrdDomain> mainCateTempList=kpDAO.selectMainCateList();//���� ī�װ� �ӽ� ����
		
		//��ü ī�װ� : ���� ī�װ��� ���� ī�װ� ����
		List<KategoriePrdDomain> subCateTempList=null;
		for(KategoriePrdDomain tempDomain : mainCateTempList) {
			subCateTempList=new ArrayList<KategoriePrdDomain>();
			subCateTempList=kpDAO.selectSubCateList(tempDomain.getMainCateNum());
			
			tempDomain.setSubCateList(subCateTempList);
			mainCateList.add(tempDomain);
		}//end for
		
		return mainCateList;
	}//mainCateList
	
	public List<KategoriePrdDomain> subCateList(int mainCateNum) {//���� ī�װ�
		List<KategoriePrdDomain> list=new ArrayList<KategoriePrdDomain>();
		
		list=kpDAO.selectSubCateList(mainCateNum);
		
		return list;
	}//subCateList
	
	public String searchPrdBoxListJson(KategoriePrdVO kpVO) {//ī�װ��� ��ǰ ����Ʈ
		List<KategoriePrdDomain> list=null;
		
		int paramCurrentPage=kpVO.getCurrentPage();
		
		//����¡ ����
		int currentPage=1;//���� ������
		int totalCount=0;//��ü �� ��
		int totalPage=0;//��ü ������ ��
		int pageScale=8;//�� ������ ������ �� ��
		int startNum=0;//�������� ���� ����
		int endNum=0;//�������� �� ����
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//�Ķ���Ͱ� null�� ���� ���
			currentPage=1;
		}//end catch
		
		//��ü ������ ����
		totalCount=kpDAO.selectPrdTotalCount(kpVO);
		
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
		kpVO.setStartNum(startNum);
		kpVO.setEndNum(endNum);
		
		list=kpDAO.selectPrdBoxList(kpVO);
		
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
		jsonObj.put("listSize", list.size());//��ǰ ��

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		
		for(KategoriePrdDomain tempDomain : list){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			jsonTemp.put("prdName", tempDomain.getPrdName());
			jsonTemp.put("thum", tempDomain.getThum());
			jsonTemp.put("prdDiscount", tempDomain.getPrdDiscount());
			int prdPrice=tempDomain.getPrdPrice();
			int prdDiscount=tempDomain.getPrdDiscount();
			
			double prdDouble=((double)prdDiscount/(double)100);
			
			double prdDCPrice=(prdPrice-(prdPrice*prdDouble));//���� ������ �ǸŰ�
			
			jsonTemp.put("prdDCPrice", (int)prdDCPrice);
			
			jsonTemp.put("prdPrice", tempDomain.getPrdPrice());
			
			int revCnt=pdrDAO.selectRevTotalCount(tempDomain.getPrdNum());
			
			jsonTemp.put("revCnt", revCnt);
			
			jsonTemp.put("prdRegistDate", tempDomain.getPrdRegistDate());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchPrdBoxListJson
	
}//class
