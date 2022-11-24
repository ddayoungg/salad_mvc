package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.co.salad.user.dao.OrderDAO;
import kr.co.salad.user.domain.CartDomain;
import kr.co.salad.user.domain.OrderDomain;
import kr.co.salad.user.vo.OrderVO;

public class OrderService {
	
	public List<CartDomain> searchOrderPrd(List<CartDomain> orders){
		List<CartDomain> result = new ArrayList<CartDomain>();
		OrderDAO oDAO = new OrderDAO();
		
		for(CartDomain cd : orders) {
			CartDomain orderPrd = oDAO.selectOrderPrd(cd.getPrdNum());
			orderPrd.setCartPrdCnt(cd.getCartPrdCnt());
			result.add(orderPrd);
		}//for
		
		return result;
	}//searchOrderPrd
	
	public OrderDomain searchMyInfo(String id) {
		OrderDAO oDAO = new OrderDAO();
		OrderDomain od = null;
		od = oDAO.searchMyInfo(id);
		return od;
	}//searchMyInfo
	
	public void addDeli(OrderVO oVO) {
		OrderDAO oDAO = new OrderDAO();
		oDAO.insertDeli(oVO);
	}//addDeli
	
	public void addOrder(OrderVO oVO) {
		OrderDAO oDAO = new OrderDAO();
		oDAO.insertOrder(oVO);
	}//addOrder
	
	public void addOrderDetail(List<CartDomain> orders) {
		OrderDAO oDAO = new OrderDAO();
		
		int orderNum = oDAO.selectOrderNum();
		
		for(CartDomain cd : orders) {
			cd.setOrderNum(orderNum);
			oDAO.insertOrderDetail(cd);
		}//for
		
	}//addOrderDetail
	
	public Date searchOrderDate(int orderNum) {
		OrderDAO oDAO = new OrderDAO();
		Date orderDate = null;
		orderDate = oDAO.selectOrderDate(orderNum);
		return orderDate;
	}//searchMyInfo
	
}//class
