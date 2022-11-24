package kr.co.salad.user.dao;

import java.util.Date;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.CartDomain;
import kr.co.salad.user.domain.OrderDomain;
import kr.co.salad.user.vo.OrderVO;

public class OrderDAO {
	
	public int selectOrderNum() {
		int orderNum = 1;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리 실행
		orderNum = ss.selectOne("kr.co.salad.user.dao.mapper.orderMapper.selectOrderNum");
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
				
		return orderNum;
	}//selectOrderNum

	public void insertDeli(OrderVO oVO) {
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리 실행
		int cnt = ss.insert("kr.co.salad.user.dao.mapper.orderMapper.insertDeli", oVO);
		if(cnt == 1) {
			System.out.println(cnt + "건 추가");
			ss.commit();
		}else {
			System.out.println("데이터 추가 실패");
			ss.rollback();
		}//else
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
	}//insertCpDept
	
	public void insertOrder(OrderVO oVO) {
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		OrderDAO oDAO = new OrderDAO();
		int orderNum = oDAO.selectOrderNum()+1;
		System.out.println("orderNum: "+orderNum);
		oVO.setOrderNum(orderNum);
		
		// 2. 쿼리 실행 : insert("Mapper아이디", 값)
		int cnt = ss.insert("kr.co.salad.user.dao.mapper.orderMapper.insertOrder", oVO);
		if(cnt == 1) {
			System.out.println(cnt + "건 추가");
			ss.commit();
		}else {
			System.out.println("데이터 추가 실패");
			ss.rollback();
		}//else
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
	}//insertCpDept
	
	public void insertOrderDetail(CartDomain cd) {
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		// 2. 쿼리 실행 : insert("Mapper아이디", 값)
		int cnt = ss.insert("kr.co.salad.user.dao.mapper.orderMapper.insertOrderDetail", cd);
		if(cnt == 1) {
			System.out.println(cnt + "건 추가");
			ss.commit();
		}else {
			System.out.println("데이터 추가 실패");
			ss.rollback();
		}//else
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
	}//insertCpDept
	
	public OrderDomain searchMyInfo(String id) {
		OrderDomain od = null;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리문 실행
		od = ss.selectOne("kr.co.salad.user.dao.mapper.orderMapper.selectMyInfo", id);
		
		// 3. MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return od;
	}//searchMyInfo
	
	public CartDomain selectOrderPrd(int prdNum){
		CartDomain orderPrd = null;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리문 실행
		try {
			orderPrd = ss.selectOne("kr.co.salad.user.dao.mapper.orderMapper.selectOrderPrd", prdNum);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 3. 연결끊기
		mbh.closeHandler(ss);
		
		return orderPrd;
	}//selectCart
	
	public Date selectOrderDate(int orderNum){
		Date orderDate = null;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리문 실행
		try {
			orderDate = ss.selectOne("kr.co.salad.user.dao.mapper.orderMapper.selectOrder", orderNum);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 3. 연결끊기
		mbh.closeHandler(ss);
		
		return orderDate;
	}//selectOrderDate
	
}
