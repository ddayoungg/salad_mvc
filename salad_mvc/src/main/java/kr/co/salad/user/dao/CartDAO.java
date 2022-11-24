package kr.co.salad.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.CartDomain;
import kr.co.salad.user.vo.CartVO;

public class CartDAO {

	public void deleteCart(int cartNum){
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		// 2. 쿼리 실행
		int cnt = ss.delete("kr.co.salad.user.dao.mapper.cartMapper.deleteCart", cartNum);
		if(cnt == 1) {
			System.out.println(cnt + "건 추가");
			ss.commit();
		}else {
			System.out.println("데이터 추가 실패");
			ss.rollback();
		}//else
		
		// 3. MyBatis Handler 종료
		mbh.closeHandler(ss);
	}//deleteCart
	
	public List<CartDomain> selectCart(String id){
		List<CartDomain> list = null;
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리문 실행
		try {
			list=ss.selectList("kr.co.salad.user.dao.mapper.cartMapper.selectCart", id);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 3. 연결끊기
		mbh.closeHandler(ss);
		
		System.out.println("dao list: "+list);
		return list;
	}//selectCart
	
	public void updateCnt(CartVO cVO) {
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. 쿼리문 실행
		System.out.println("updateCnt  cvo: "+cVO);
		int cnt = ss.update("kr.co.salad.user.dao.mapper.cartMapper.updateCnt", cVO);
		if(cnt == 1) {
			System.out.println(cnt + "건 수정");
			ss.commit();
		}else {
			System.out.println("데이터 수정 실패");
			ss.rollback();
		}//else
		
		// 3. 연결 끊기
		mbh.closeHandler(ss);
	}//updateCnt
	
}
