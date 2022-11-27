package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MyCancelDAO;
import kr.co.salad.user.domain.CcDeliveryDomain;
import kr.co.salad.user.domain.CcMemberDomain;
import kr.co.salad.user.domain.MyCancelDomain;
import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.vo.MyCancelVO;
@Component
public class MyCancelService {
	
	@Autowired(required = false)
	private MyCancelDAO mcDAO;
	
	public String searchMyOrderListJson(MyCancelVO mcVO) {//���� ��� ����Ʈ
		List<MyCancelDomain> list=null;
		
		String[] orderStatusArr={"4", "5"};//��� ���� ����Ʈ ����
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("id", mcVO.getId());
		map.put("orderStatusArr", orderStatusArr);
		
		int paramCurrentPage=mcVO.getCurrentPage();
		
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
		totalCount=mcDAO.selectMyTotalCnt(map);
		
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
		
		//map set
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		list=mcDAO.selectMyOrderList(map);
		
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
		
		
		List<String> revImgList=null;
		PrdDetailDomain pDomain=new PrdDetailDomain();
		
		for(MyCancelDomain tempDomain : list){
			jsonTemp=new JSONObject();
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			jsonTemp.put("orderDate", tempDomain.getOrderDate());
			jsonTemp.put("orderNum", tempDomain.getOrderNum());
			jsonTemp.put("thum", tempDomain.getThum());
			jsonTemp.put("prdName", tempDomain.getPrdName());
			jsonTemp.put("prdPrice", tempDomain.getPrdPrice());
			jsonTemp.put("prdDiscount", tempDomain.getPrdDiscount());
			jsonTemp.put("orderCnt", tempDomain.getOrderCnt());
			
			String orderStatus=("4".equals(tempDomain.getOrderStatus())?"��ҿ�û":"���Ȯ��");
			String revFlag=("0".equals(tempDomain.getRevFlag())?"������ۼ�":"�����ۼ�");
					
			jsonTemp.put("orderStatus", orderStatus);
			jsonTemp.put("revFlag", revFlag);
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchMyCancelListJson
	
	public List<MyCancelDomain> searchMyOrderDetailList(MyCancelVO mcVO) { //���� �ֹ� ��� ����Ʈ
		List<MyCancelDomain> list=null;
		
		list=mcDAO.selectMyOrderDetailList(mcVO);
		
		List<MyCancelDomain> tempList=new ArrayList<MyCancelDomain>();
		
		String orderStatus = "";
		for(MyCancelDomain tempDomain:list) {
	        if("0".equals(tempDomain.getOrderStatus())){
	           orderStatus = "�ֹ� ����";
	        }else if("1".equals(tempDomain.getOrderStatus())){
	           orderStatus = "��� �غ� ��";
	        }else if("2".equals(tempDomain.getOrderStatus())){
	           orderStatus = "��� ��";
	        }else if("3".equals(tempDomain.getOrderStatus())){
	           orderStatus = "��� �Ϸ�";
	        }else if("4".equals(tempDomain.getOrderStatus())){
	        	orderStatus = "��� ��û";
	        }else if("5".equals(tempDomain.getOrderStatus())){
	        	orderStatus = "��� �Ϸ�";
	        }else {
	        	orderStatus = "�ֹ� ����";
	        }
	        tempDomain.setStatusName(orderStatus);
	        
	        tempList.add(tempDomain);
		}//end if
		
		return tempList;
	}//searchMyCcOrderList
	
	public MyCancelDomain searchMyCcOrderTotalPrice(List<MyCancelDomain> list) { //���� �ֹ� ���� �� �հ�
		MyCancelDomain mcDomain=new MyCancelDomain();
		
		
		int totalPrdPrice=0;//�� ��ǰ�ݾ�
		int totalPrdDiscount=0;//�� ���αݾ�
		int orderTotalPrice=0;//�հ�
		
		double prdPrice=0;
		double prdDiscount=0;
		double orderCnt=0;
		
		
		for(MyCancelDomain tempDomain : list) {
			prdPrice=tempDomain.getPrdPrice();
			prdDiscount=tempDomain.getPrdDiscount();
			orderCnt=tempDomain.getOrderCnt();
			
			totalPrdPrice+=prdPrice*orderCnt;
			totalPrdDiscount+=(prdPrice*(prdDiscount/100))*orderCnt;
			orderTotalPrice+=(prdPrice-(prdPrice*(prdDiscount/100)))*orderCnt;
		}//end for
		
		
		
		orderTotalPrice=orderTotalPrice+3000;//��ۺ�
		
		mcDomain.setTotalPrdPrice(totalPrdPrice);
		mcDomain.setTotalPrdDiscount(totalPrdDiscount);
		mcDomain.setOrderTotalPrice(orderTotalPrice);
		
		//��ҿ�û'4'/Ȯ�� ����'5'
		System.out.println(list.get(0).getOrderStatus());
		mcDomain.setOrderStatus(list.get(0).getOrderStatus());
		
		return mcDomain;
	}//searchMyCcOrderTotalPrice
	
	public String searchCcExistAddrFlag(MyCancelVO mcVO) { //���� ����� �� ����
		String existAddrFlag="0";
		
		existAddrFlag=mcDAO.selectCcExistAddrFlag(mcVO);
		
		return existAddrFlag;
	}//searchCcExistAddrFlag
	
	public CcMemberDomain searchMyInfoDetail(MyCancelVO mcVO) { //���� ȸ�� ����
		CcMemberDomain cmDomain=new CcMemberDomain();
		
		cmDomain=mcDAO.selectMyInfoDetail(mcVO);
		
		return cmDomain;
	}//searchMyInfoDetail
	
	public CcDeliveryDomain searchMyCcDeliDetail(MyCancelVO mcVO) { //���� ����� �� ����
		CcDeliveryDomain cdDomain=new CcDeliveryDomain();
		
		cdDomain=mcDAO.selectMyCcDeliDetail(mcVO);
		
		return cdDomain;
	}//selectMyCcDeliDetail
	
}//class
