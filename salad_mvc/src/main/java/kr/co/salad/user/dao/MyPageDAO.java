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
		boolean passChkFalg=false; //false면 비밀번호 확인 실패
		
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		MyBatisHandler mbh=MyBatisHandler.getInstance();

		SqlSession session=mbh.getHandler();
		//쿼리실행
		String password=session.selectOne("kr.co.salad.user.MyPageMapper.selectPass", mpVO);
		if(password!=null) {
			System.out.println(password);
			if(passEncoder.matches(mpVO.getPass(), password)) { //암호화한 비밀번호와 입력한 비밀번호 비교
				System.out.println("회원정보 있음");
				passChkFalg=true;
				session.commit();
			}else {
				System.out.println("회원정보 없음");
			}
		}
		
		//Handler 종료
		mbh.closeHandler(session);
		
		
		return passChkFalg;
	}

}
