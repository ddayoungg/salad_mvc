package kr.co.salad.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.CartDomain;
import kr.co.salad.user.vo.CartVO;

public class CartDAO {

	public void deleteCart(int cartNum){
		// 1. MyBatis Handler ���
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		// 2. ���� ����
		int cnt = ss.delete("kr.co.salad.user.dao.mapper.cartMapper.deleteCart", cartNum);
		if(cnt == 1) {
			System.out.println(cnt + "�� �߰�");
			ss.commit();
		}else {
			System.out.println("������ �߰� ����");
			ss.rollback();
		}//else
		
		// 3. MyBatis Handler ����
		mbh.closeHandler(ss);
	}//deleteCart
	
	public List<CartDomain> selectCart(String id){
		List<CartDomain> list = null;
		// 1. MyBatis Handler ���
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. ������ ����
		try {
			list=ss.selectList("kr.co.salad.user.dao.mapper.cartMapper.selectCart", id);
		}catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 3. �������
		mbh.closeHandler(ss);
		
		System.out.println("dao list: "+list);
		return list;
	}//selectCart
	
	public void updateCnt(CartVO cVO) {
		// 1. MyBatis Handler ���
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		
		// 2. ������ ����
		System.out.println("updateCnt  cvo: "+cVO);
		int cnt = ss.update("kr.co.salad.user.dao.mapper.cartMapper.updateCnt", cVO);
		if(cnt == 1) {
			System.out.println(cnt + "�� ����");
			ss.commit();
		}else {
			System.out.println("������ ���� ����");
			ss.rollback();
		}//else
		
		// 3. ���� ����
		mbh.closeHandler(ss);
	}//updateCnt
	
}
