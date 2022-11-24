package kr.co.salad.user.service;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.PrdDetailCartDAO;
import kr.co.salad.user.vo.PrdDetailCartVO;
@Component
public class PrdDetailCartService {
	@Autowired(required = false)
	private PrdDetailCartDAO pdcDAO;
	
	public boolean searchCartChk(PrdDetailCartVO pdcVO) {//��ٱ��� ���� Ȯ��
		boolean flag=false;
		
		flag=pdcDAO.selectCartChk(pdcVO);
		
		return flag;
	}//searchCartChk
	
	public String addCart(PrdDetailCartVO pdcVO){//��ǰ�󼼺��⿡�� ��ٱ��� �߰�
		
		
		int addCnt=pdcDAO.insertCart(pdcVO);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("addCnt", addCnt);
		
		return jsonObj.toJSONString();
	}//addCart
	
	public String editCartPrdCnt(PrdDetailCartVO pdcVO) {//��ٱ��� ��ǰ ���� ����
		int editCnt=0;
		
		JSONObject jsonObj=new JSONObject();
		
		editCnt=pdcDAO.updateCartPrdCnt(pdcVO);
		
		jsonObj.put("editCnt", editCnt);
		
		return jsonObj.toJSONString();
	}//editCartPrdCnt
	
	public String addCartWish(PrdDetailCartVO pdcVO){//���Ͽ��� ��ٱ��� �߰�
		
		
		int addCnt=pdcDAO.insertCartWish(pdcVO);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("addCnt", addCnt);
		
		return jsonObj.toJSONString();
	}//addCart
	
}//class
