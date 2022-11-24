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
		
		//쿼리실행
		int outFlag=session.update("kr.co.salad.user.MyUserOutMapper.updateUserOut", muoVO);
		int outUser=session.insert("kr.co.salad.user.MyUserOutMapper.insertUserOut", muoVO);
		
		if(outFlag==1 && outUser==1) { //변경된 비밀번호
			System.out.println("회원탈퇴 완료");
			Flag=1;
			session.commit();
		}else {
			session.rollback();
			System.out.println("회원탈퇴 실패");
		}
		
		//Handler 종료
		mbh.closeHandler(session);
		
		return Flag;
	}
	
	public int selectUserPw(MyUserOutVO muoVO) {
		int pwChkFlag=0;
		
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//쿼리실행
		String dbPW=session.selectOne("kr.co.salad.user.MyUserOutMapper.selectUser", muoVO);
		if(dbPW!=null) {
			System.out.println(dbPW);
			if(passEncoder.matches(muoVO.getPass(), dbPW)) { //암호화한 비밀번호와 입력한 비밀번호 비교
				pwChkFlag=1;
				session.commit();
			}
		}
		
		//Handler 종료
		mbh.closeHandler(session);
		
		return pwChkFlag;
	}

}
