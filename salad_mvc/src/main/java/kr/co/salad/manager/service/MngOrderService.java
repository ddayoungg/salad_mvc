package kr.co.salad.manager.service;

import java.util.ArrayList;
import java.util.List;

import kr.co.salad.manager.dao.MngOrderDAO;
import kr.co.salad.manager.domain.MngOrderDomain;
import kr.co.salad.manager.domain.MngOrderPrdDomain;
import kr.co.salad.manager.vo.MngOrderVO;
import kr.co.salad.user.dao.OrderDAO;
import kr.co.salad.user.domain.CartDomain;

public class MngOrderService {

	public List<MngOrderDomain> searchOrderList() {
		List<MngOrderDomain> result = new ArrayList<MngOrderDomain>();
		MngOrderDAO moDAO = new MngOrderDAO();
		result = moDAO.selectOrderList();
		return result;
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
