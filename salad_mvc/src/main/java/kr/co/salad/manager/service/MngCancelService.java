package kr.co.salad.manager.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngCancelDAO;
import kr.co.salad.manager.dao.MngDashboardDAO;
import kr.co.salad.manager.domain.MngCancelDomain;
import kr.co.salad.manager.vo.MngCancelVO;

@Component
public class MngCancelService {
	

	@Autowired(required = false)
	private MngCancelDAO mCancelDAO;
	
	//��ü ��� ���� ���
	public List<MngCancelDomain> searchAllCancel(){
		List<MngCancelDomain> allCancelList = new ArrayList<MngCancelDomain>();
		
		allCancelList=mCancelDAO.selectAllCancel();
		
		return allCancelList;
	}//
	
	//��� ��û �Ǽ�, ��� Ȯ�� �Ǽ�
	public int searchTotalCancel(String totalCancel) {
		int cancelCnt=0;
		
		cancelCnt=mCancelDAO.selectTotalCancel(totalCancel);
		
		return cancelCnt;
	}//
	
	//���� ī�װ� ��� ( �˻� ���ϱ�� �� ) 
//	public List<MngCancelDomain> searchMainCate(){
//		List<MngCancelDomain> mainCateList = new ArrayList<MngCancelDomain>();
//		
//		mainCateList=mCancelDAO.selectMainCate();
//		
//		return mainCateList;
//	}//
	
	//���� ī�װ� ��� ( �˻� ���ϱ�� �� ) 
//	public List<MngCancelDomain> searchSubCate(MngCancelVO cancelVO){
//		List<MngCancelDomain> subCateList = new ArrayList<MngCancelDomain>();
//		
//		subCateList=mCancelDAO.selectSubCate(cancelVO);
//		
//		return subCateList;
//	}//
	
	//��� ��û, Ȯ�� / ����ī��,����ī�׷� �˻��� ���� ( �˻� ���ϱ�� �� ) 
//	public List<MngCancelDomain> searchCancelMember(MngCancelVO cancelVO){
//		List<MngCancelDomain> cancelList = new ArrayList<MngCancelDomain>();
//		
//		cancelList=mCancelDAO.selectCancelMember(cancelVO);
//		
//		return cancelList;
//	}//
	
	//��� ��û�� ��� Ȯ������ �ٲٱ� 4 => 5
	public int editCancelStatic(int orderNum) {
		int chOrderStatus=0;
		
		chOrderStatus=mCancelDAO.updateCancelStatic(orderNum);
		
		return chOrderStatus;
	}//
	
	//�˻� â�� NAME&��¥&�ֹ���ȣ �˻�
	public List<MngCancelDomain> searchCancelList(MngCancelVO cancelVO){
		List<MngCancelDomain> searchList = new ArrayList<MngCancelDomain>();
		
		searchList=mCancelDAO.selectCancelList(cancelVO);
		
		return searchList;
	}//
	
	//��� ������ ���
	public MngCancelDomain searchOrderDetail(int orderNum) {
		MngCancelDomain cancelOrder = new MngCancelDomain();
		
		cancelOrder=mCancelDAO.selectOrderDetail(orderNum);
		
		return cancelOrder;
	}//
	
	//��� ��ü ����Ʈ,��� ��ü ����Ʈ ������ ���
		public String countCancelList(MngCancelVO cancelVO) {
			List<MngCancelDomain> mcDomain=new ArrayList<MngCancelDomain>();
			
			int paramCurrentPage=cancelVO.getCurrentPage();
			
			//����¡ ����
			int currentPage=1;//���� ������
			int totalCount=0;//��ü �� ��
			int totalPage=0;//��ü ������ ��
			int pageScale=10;//�� ������ ������ �� ��
			int startNum=0;//�������� ���� ����
			cancelVO.getSearch();
			cancelVO.getSearchText();
			
			try {
				currentPage=paramCurrentPage;
			}catch(NumberFormatException nfe) {//�Ķ���Ͱ� null�� ���� ���
				currentPage=1;
			}//end catch
			System.out.println("��� ��");
			
			//��ü ������ ����
			totalCount=mCancelDAO.selectCancelListCount(cancelVO);
			
			//�� ������ ��
			totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
			if(totalPage==0) {
				totalPage = 1;
			}//end if
								
			if(currentPage > totalPage) {
				currentPage = 1;
			}//end if
								
			startNum = (currentPage - 1) * pageScale;//�� �������� ���� ����
			
			//VO set
			cancelVO.setStartNum(startNum);
			cancelVO.setPageScale(pageScale);
			
			//mcDomain=mCancelDAO.selectAllCancel();
			
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
			jsonObj.put("isEmpty", mcDomain.isEmpty());
			jsonObj.put("listSize", mcDomain.size());

			JSONArray jsonArr=new JSONArray();
			JSONObject jsonTemp=null;
			

			for(MngCancelDomain tempDomain : mcDomain){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
				jsonTemp=new JSONObject();
				jsonTemp.put("orderNum", tempDomain.getOrderNum());
				jsonTemp.put("id", tempDomain.getId());
				jsonTemp.put("name", tempDomain.getName());
				jsonTemp.put("orderDate", tempDomain.getOrderDate());
				jsonTemp.put("orderTotalPrice", tempDomain.getOrderTotalPrice());
				jsonTemp.put("orderStatus", tempDomain.getOrderStatus());
				jsonTemp.put("searchText", tempDomain.getSearchText());
				jsonTemp.put("search", tempDomain.getSearch());
				
				jsonArr.add(jsonTemp);
			}//end for
			System.out.println("������ ����"+mcDomain);
			
			jsonObj.put("list", jsonArr);
			
			return jsonObj.toJSONString();
		}//
	

	
	
	
}//class
