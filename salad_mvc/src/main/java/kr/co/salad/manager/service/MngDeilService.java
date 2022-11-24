package kr.co.salad.manager.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngDeilDAO;
import kr.co.salad.manager.dao.MngRevDAO;
import kr.co.salad.manager.domain.MngDeilDomain;
import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.vo.MngDeilVO;
import kr.co.salad.manager.vo.MngRevVO;

@Component
public class MngDeilService {
	
	@Autowired(required = false)
	private MngDeilDAO mdDAO;
	
	//�����ü,�˻�����Ʈ
	public String searchDeilList(MngDeilVO mdVO) {
		List<MngDeilDomain> mdDomain=new ArrayList<MngDeilDomain>();
		
		int paramCurrentPage=mdVO.getCurrentPage();
		
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
		totalCount=mdDAO.selectDeilListCount(mdVO);
		
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
		mdVO.setStartNum(startNum);
		mdVO.setEndNum(endNum);
		
		mdDomain=mdDAO.selectDeilList(mdVO);
		
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
		jsonObj.put("isEmpty", mdDomain.isEmpty());
		jsonObj.put("listSize", mdDomain.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		

		for(MngDeilDomain tempDomain : mdDomain){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("orderNum", tempDomain.getOrderNum());
			jsonTemp.put("name", tempDomain.getName());
			jsonTemp.put("orderDate", tempDomain.getOrderDate());
			jsonTemp.put("orderTotalPrice", tempDomain.getOrderTotalPrice());
			jsonTemp.put("orderStatus", tempDomain.getOrderStatus());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	
	//��ۻ��� ����
	public int editDeilStatus(MngDeilVO mdVO) {
		int StatusFlag=0;
		StatusFlag=mdDAO.updateDeilStatus(mdVO);
		return StatusFlag;//1�� ���,0�� �̵��
	}
	
	
	
	

}
