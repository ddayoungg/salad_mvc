package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.CartDAO;
import kr.co.salad.user.domain.CartDomain;
import kr.co.salad.user.vo.CartVO;

@Component
public class CartService {

	// 장바구니 리스트
	public List<CartDomain> searchCart(String id){
		CartDAO cDAO = new CartDAO();
		List<CartDomain> list = new ArrayList<CartDomain>();
		list = cDAO.selectCart(id);
		System.out.println("CartService  service list : "+list);
		return list;
	}//searchCart
	
	// 장바구니 수량 변경
	public void updateCnt(CartVO cVO) {
		CartDAO cDAO = new CartDAO();
		cDAO.updateCnt(cVO);
	}//updateCnt
	
	// 장바구니 삭제
	public void removeCart(List<CartDomain> orders){
		CartDAO cDAO = new CartDAO();
		for(CartDomain cd : orders) {
			cDAO.deleteCart(cd.getCartNum());
		}//for
	}//removeCart
	
}//class
