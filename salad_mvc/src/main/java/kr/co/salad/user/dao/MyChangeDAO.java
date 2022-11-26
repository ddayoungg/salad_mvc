package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngCancelDomain;
import kr.co.salad.user.domain.MyChangeDomain;
import kr.co.salad.user.vo.MyChangeVO;

@Component
public class MyChangeDAO {
	
	//ȸ�� ���� ���� �� ��� Ȯ��
	public boolean selectMyChangePass(MyChangeVO chanVO) {
		//boolean passConfirm = false;
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		//chanVO.setId("kdh");
		//chanVO.setPass("dohee!1234");
		//System.out.println(chanVO);
		//String resultPass = chanVO.getPass();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		MyChangeVO resultVO= session.selectOne("kr.co.salad.myChangeMapper.confirmMyPass",chanVO);
		System.out.println("resultVO"+resultVO);
		
		boolean passMatch = passEncoder.matches(chanVO.getPass(), resultVO.getPass());
		if(passMatch == false) {
			System.out.println("�ٿ�"+passMatch);
			System.out.println("���������� ���� ����"+resultVO);
		} else if (passMatch == true){
			System.out.println("��ȣȭ ��ȸ"+resultVO.getPass());
			System.out.println("���������� ���� ����"+resultVO);
			System.out.println("�Է��� ���"+chanVO.getPass());
		}
		session.commit();

		mbh.closeHandler(session);
		
		return passMatch;
	}//
	
	//�� ���� �ҷ�����
	public MyChangeVO selectMyMember (MyChangeVO chanVO) {
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		//chanVO.setId("kdh");
		//chanVO.setPass("dohee!1234");
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		MyChangeVO resultVO=session.selectOne("kr.co.salad.myChangeMapper.callMyPage",chanVO);
		
		boolean passMatch = passEncoder.matches(chanVO.getPass(), resultVO.getPass());
		if(passMatch == false) {
			System.out.println("�ٿ�"+passMatch);
			System.out.println("���������� ���� ����"+resultVO);
		} else if (passMatch == true){
			System.out.println("��ȣȭ ��ȸ"+resultVO.getPass());
			System.out.println("���������� ���� ����"+resultVO);
			System.out.println("�Է��� ���"+chanVO.getPass());
			session.commit();
		}
		
		session.commit();
		mbh.closeHandler(session);
		
		
		return resultVO;
	}//
	
	//��� ���� �� ���� ��� �´� �� Ȯ��
	public MyChangeVO selectMemberPass(MyChangeVO chanVO) {
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		boolean passMatch = false;
		
		//chanVO.setId("kdh");
		//chanVO.setPass("dohee!1234");
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		MyChangeVO resultVO = session.selectOne("kr.co.salad.myChangeMapper.reConfirmMyPass",chanVO);
		
//		passMatch = passEncoder.matches(chanVO.getPass(), resultVO.getPass());
//		if(passMatch == false) {
//			System.out.println("��� �ߺ� Ȯ�� ����"+resultVO);
//		} else if (passMatch == true){
//			System.out.println("��� �ߺ� Ȯ�� ����"+resultVO);
//			session.commit();
//		}		
		
//		if(reconfirmPass = true && chanVO != null ) {
//			System.out.println("�ٿ�"+reconfirmPass);
//			System.out.println("��� �ߺ� Ȯ�� ����"+chanVO);
//			session.commit();
//		} else {
//			System.out.println("�ٿ�"+reconfirmPass);
//			System.out.println("��� �ߺ� Ȯ�� ����"+chanVO);
//		}
		session.commit();
		mbh.closeHandler(session);
		
		return resultVO;
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
		cDAO.selectMemberPass(chanVO);
	}//static
}//class
