package kr.co.salad.manager.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngOrderDomain;
import kr.co.salad.manager.domain.MngOrderPrdDomain;

public class MngOrderDAO {

	public List<MngOrderDomain> selectOrderList() {
		List<MngOrderDomain> list = null;

		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		// 2. 쿼리문 실행
		try {
			list = ss.selectList("kr.co.salad.manager.dao.mapper.MngOrderMapper.selectOrderList");
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 3. 연결끊기
		mbh.closeHandler(ss);

		return list;
	}// selectOrderList

	public MngOrderDomain selectOrderMember(int orderNum) {
		MngOrderDomain mod = null;

		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		// 2. 쿼리문 실행
		try {
			mod = ss.selectOne("kr.co.salad.manager.dao.mapper.MngOrderMapper.selectOrderMember", orderNum);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 3. 연결끊기
		mbh.closeHandler(ss);

		return mod;
	}// selectOrderMember

	public MngOrderDomain selectOrderDeli(int orderNum) {
		MngOrderDomain mod = null;
		
		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		// 2. 쿼리문 실행
		try {
			mod = ss.selectOne("kr.co.salad.manager.dao.mapper.MngOrderMapper.selectOrderDeli", orderNum);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 3. 연결끊기
		mbh.closeHandler(ss);

		return mod;
	}// selectOrderDeli
	
	public List<MngOrderPrdDomain> selectOrderPrd(int orderNum) {
		List<MngOrderPrdDomain> list = null;

		// 1. MyBatis Handler 얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();

		// 2. 쿼리문 실행
		try {
			list = ss.selectList("kr.co.salad.manager.dao.mapper.MngOrderMapper.selectOrderPrd", orderNum);
		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		// 3. 연결끊기
		mbh.closeHandler(ss);

		return list;
	}// selectOrderPrd

}
