package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.vo.MemberVO;
import kr.co.salad.user.vo.MyPageVO;

@Component
public class MyPageDAO {
	
	public boolean selectMyPass(MyPageVO mpVO) {
		boolean passChkFalg=false; //false�� ��й�ȣ Ȯ�� ����
		
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		MyBatisHandler mbh=MyBatisHandler.getInstance();

		SqlSession session=mbh.getHandler();
		//��������
		String password=session.selectOne("kr.co.salad.user.MyPageMapper.selectPass", mpVO);
		if(password!=null) {
			System.out.println(password);
			if(passEncoder.matches(mpVO.getPass(), password)) { //��ȣȭ�� ��й�ȣ�� �Է��� ��й�ȣ ��
				System.out.println("ȸ������ ����");
				passChkFalg=true;
				session.commit();
			}else {
				System.out.println("ȸ������ ����");
			}
		}
		
		//Handler ����
		mbh.closeHandler(session);
		
		
		return passChkFalg;
	}

}
