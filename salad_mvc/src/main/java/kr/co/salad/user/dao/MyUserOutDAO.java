package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.vo.MyUserOutVO;

@Component
public class MyUserOutDAO {
	
	public int updateUserOut(MyUserOutVO muoVO) {
		int Flag=0;
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//��������
		int outFlag=session.update("kr.co.salad.user.MyUserOutMapper.updateUserOut", muoVO);
		int outUser=session.insert("kr.co.salad.user.MyUserOutMapper.insertUserOut", muoVO);
		
		if(outFlag==1 && outUser==1) { //����� ��й�ȣ
			System.out.println("ȸ��Ż�� �Ϸ�");
			Flag=1;
			session.commit();
		}else {
			session.rollback();
			System.out.println("ȸ��Ż�� ����");
		}
		
		//Handler ����
		mbh.closeHandler(session);
		
		return Flag;
	}
	
	public int selectUserPw(MyUserOutVO muoVO) {
		int pwChkFlag=0;
		
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//��������
		String dbPW=session.selectOne("kr.co.salad.user.MyUserOutMapper.selectUser", muoVO);
		if(dbPW!=null) {
			System.out.println(dbPW);
			if(passEncoder.matches(muoVO.getPass(), dbPW)) { //��ȣȭ�� ��й�ȣ�� �Է��� ��й�ȣ ��
				pwChkFlag=1;
				session.commit();
			}
		}
		
		//Handler ����
		mbh.closeHandler(session);
		
		return pwChkFlag;
	}

}
