package kr.co.salad.manager.dao;


import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.vo.MngLoginVO;

@Component
public class MngLoginDAO {
	/*
	 * private DataSource dataSource;
	 * 
	 * public void setDataSource(DataSource datasource)throws Exception{
	 * this.dataSource = datasource; conn = datasource.getConnection(); } Connection
	 * conn = null;
	 */
	
	//�α���
	public boolean selectLogin(MngLoginVO mVO)throws ClassNotFoundException,SQLException {
		boolean login=false;
		
//		mVO.setMngId("admi");
//		mVO.setMngPass("admin");
		MngLoginVO loginMlVO = new MngLoginVO(mVO.getMngId(), mVO.getMngPass());
		System.out.println(loginMlVO);
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
				
		//��������
		loginMlVO=session.selectOne("kr.co.salad.mngLoginMapper.selectLogin", loginMlVO);
		System.out.println(login);
		if(login = true && loginMlVO != null) {
			System.out.println(login);
			System.out.println("�α��� ����"+loginMlVO);
			session.commit();
		} else {
			System.out.println("�Է� :"+loginMlVO);
			System.out.println("mVO :"+mVO);
			System.out.println(login);
		}
		mbh.closeHandler(session);
		return login;
	}	

	
//	//�α��� ����
//	public MngLoginVO selectLoginView(MngLoginVO mVO) {
//		MngLoginVO mngVO = new MngLoginVO();
//		return mngVO;
//	}//
	
	
	public static void main(String[] args) {
		MngLoginVO mVO = new MngLoginVO();
		MngLoginDAO mDAO = new MngLoginDAO();
		
		try {
			mDAO.selectLogin(mVO);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		boolean login;
//		try {
//			login = mDAO.selectLogin(mVO);
//		} catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(mVO);
	
	}
}
