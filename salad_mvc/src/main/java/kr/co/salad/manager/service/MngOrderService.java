package kr.co.salad.manager.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import kr.co.salad.manager.dao.MngOrderDAO;
import kr.co.salad.manager.domain.MngOrderDomain;
import kr.co.salad.manager.domain.MngOrderPrdDomain;
import kr.co.salad.manager.vo.MngOrderVO;
import kr.co.salad.user.dao.OrderDAO;
import kr.co.salad.user.domain.CartDomain;

public class MngOrderService {

	public String searchOrderList(MngOrderVO moVO) {
		List<MngOrderDomain> list = null;
		MngOrderDAO moDAO = new MngOrderDAO();
		list = moDAO.selectOrderList(moVO);
		
		int paramCurrentPage = moVO.getCurrentPage();
		
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
		totalCount=list.size();
		
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
			for(int i=startNum-1; i<endNum+1; i++) {
				if(list.size()>0 && i<list.size()) {
				MngOrderDomain tempDomain = list.get(i);
				jsonTemp=new JSONObject();
				jsonTemp.put("orderNum", tempDomain.getOrderNum());
				jsonTemp.put("existAddrFlag", tempDomain.getExistAddrFlag());
				jsonTemp.put("name", tempDomain.getName());
				jsonTemp.put("orderDate", tempDomain.getOrderDate());
				jsonTemp.put("orderTotalPrice", tempDomain.getOrderTotalPrice());
				
				String orderStatus = "";
				if("0".equals(tempDomain.getOrderStatus())){
					orderStatus = "�ֹ� ����";
				}else if("1".equals(tempDomain.getOrderStatus())){
					orderStatus = "��� �غ� ��";
				}else if("2".equals(tempDomain.getOrderStatus())){
					orderStatus = "��� ��";
				}else {
					orderStatus = "��� �Ϸ�";
				}
				
				jsonTemp.put("orderStatus", orderStatus);
				jsonArr.add(jsonTemp);
				}//if
			}//end for
		jsonObj.put("list", jsonArr);
		return jsonObj.toJSONString();
	}// searchOrderList
	
	public MngOrderDomain searchOrderMember(int orderNum) {
		MngOrderDAO moDAO = new MngOrderDAO();
		MngOrderDomain mod = null;
		mod = moDAO.selectOrderMember(orderNum);
		return mod;
	}//searchOrderMember
	
	public MngOrderDomain searchOrderDeli(int orderNum) {
		MngOrderDAO moDAO = new MngOrderDAO();
		MngOrderDomain mod = null;
		mod = moDAO.selectOrderDeli(orderNum);
		return mod;
	}//searchOrderDeli
	
	public List<MngOrderPrdDomain> searchOrderPrd(int orderNum) {
		List<MngOrderPrdDomain> result = new ArrayList<MngOrderPrdDomain>();
		MngOrderDAO moDAO = new MngOrderDAO();
		result = moDAO.selectOrderPrd(orderNum);
		return result;
	}// searchOrderPrd
	
}
