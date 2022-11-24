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
	
	public boolean searchCartChk(PrdDetailCartVO pdcVO) {//장바구니 존재 확인
		boolean flag=false;
		
		flag=pdcDAO.selectCartChk(pdcVO);
		
		return flag;
	}//searchCartChk
	
	public String addCart(PrdDetailCartVO pdcVO){//물품상세보기에서 장바구니 추가
		
		
		int addCnt=pdcDAO.insertCart(pdcVO);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("addCnt", addCnt);
		
		return jsonObj.toJSONString();
	}//addCart
	
	public String editCartPrdCnt(PrdDetailCartVO pdcVO) {//장바구니 물품 수량 변경
		int editCnt=0;
		
		JSONObject jsonObj=new JSONObject();
		
		editCnt=pdcDAO.updateCartPrdCnt(pdcVO);
		
		jsonObj.put("editCnt", editCnt);
		
		return jsonObj.toJSONString();
	}//editCartPrdCnt
	
	public String addCartWish(PrdDetailCartVO pdcVO){//찜목록에서 장바구니 추가
		
		
		int addCnt=pdcDAO.insertCartWish(pdcVO);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("addCnt", addCnt);
		
		return jsonObj.toJSONString();
	}//addCart
	
}//class
