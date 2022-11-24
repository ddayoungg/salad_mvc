package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngCancelDomain;
import kr.co.salad.user.domain.MyChangeDomain;
import kr.co.salad.user.vo.MyChangeVO;

@Component
public class MyChangeDAO {
	
	//ȸ�� ���� ���� �� ��� Ȯ��
	public boolean selectMyChangePass(MyChangeVO chanVO) {
		boolean passConfirm = false;
		chanVO.getPass();
		System.out.println(chanVO);
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		chanVO = session.selectOne("kr.co.salad.myChangeMapper.confirmMyPass",chanVO);
		
		if(passConfirm = true && chanVO != null ) {
			System.out.println("�ٿ�"+passConfirm);
			System.out.println("���������� ���� ����"+chanVO);
			session.commit();
		} else {
			System.out.println("�ٿ�"+passConfirm);
			System.out.println("���������� ���� ����"+chanVO);
		}
		session.commit();
		mbh.closeHandler(session);
		
		return passConfirm;
	}//
	
	//�� ���� �ҷ�����
	public MyChangeVO selectMyMember (MyChangeVO chanVO) {
		MyChangeVO chanConfirmVO = new MyChangeVO();
		//chanVO.setPass("1323!d");
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		chanConfirmVO=session.selectOne("kr.co.salad.myChangeMapper.callMyPage",chanVO);
		session.commit();
		mbh.closeHandler(session);
		
		//System.out.println(chanConfirmVO);
		
		return chanConfirmVO;
	}//
	
	//��� ���� �� ���� ��� �´� �� Ȯ��
	public boolean selectMemberPass(MyChangeVO chanVO) {
		boolean reconfirmPass = false;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		chanVO = session.selectOne("kr.co.salad.myChangeMapper.reConfirmMyPass",chanVO);
		
		if(reconfirmPass = true && chanVO != null ) {
			System.out.println("�ٿ�"+reconfirmPass);
			System.out.println("��� �ߺ� Ȯ�� ����"+chanVO);
			session.commit();
		} else {
			System.out.println("�ٿ�"+reconfirmPass);
			System.out.println("��� �ߺ� Ȯ�� ����"+chanVO);
		}
		session.commit();
		mbh.closeHandler(session);
		
		return reconfirmPass;
	}//
	
	//���� ����
	public int updateMyMember (MyChangeVO chanVO) {
		//MyChangeVO chanConfirmVO = new MyChangeVO();
		int updateStatus = 0;
//		chanVO.setEmail("test@gmail.com");
//		chanVO.setPhone("123456789");
//		chanVO.setName("�����");
//		chanVO.setPass("1234");
//		chanVO.setId("test");
		
		chanVO.getEmail();
		chanVO.getPhone();
		chanVO.getName();
		chanVO.getPass();
		chanVO.getId();
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		updateStatus=session.update("kr.co.salad.myChangeMapper.changeMypage",chanVO);
		System.out.println("�ٲ����"+updateStatus);
		if(updateStatus == 1) {
			System.out.println("�ٿ� ���� ���� �Ϸ�");		
			session.commit();
		} else {
			System.out.println("�ٿ� ���� ���� ����");
		}
		mbh.closeHandler(session);
		
		return updateStatus;
		
	}//
	
	public static void main(String[] args) {
		MyChangeVO chanVO = new MyChangeVO();
		MyChangeDAO cDAO = new MyChangeDAO();
		
		//cDAO.selectMyChangePass(chanVO);
		//cDAO.selectMyMember(chanVO);
		//cDAO.updateMyMember(chanVO);
	}//static
}//class
