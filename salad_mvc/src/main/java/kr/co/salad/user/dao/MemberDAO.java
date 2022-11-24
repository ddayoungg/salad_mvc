package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import kr.co.salad.user.vo.MemberVO;
import kr.co.salad.dao.handler.MyBatisHandler;

@Component
public class MemberDAO {
	
	//로그인 여부
	public String selectLogin(MemberVO mVO) {
		String name="";
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		MyBatisHandler mbh=MyBatisHandler.getInstance();

		SqlSession session=mbh.getHandler();
		//쿼리실행
		MemberVO resultVO=session.selectOne("kr.co.salad.user.memberMapper.selectLogin", mVO);
		if(resultVO==null) {
			name="";
		}else {
			System.out.println(resultVO.getPass());
			if(passEncoder.matches(mVO.getPass(), resultVO.getPass())) { //암호화한 비밀번호와 입력한 비밀번호 비교
				System.out.println("회원정보 있음");
				name=resultVO.getName();
				session.commit();
			}else {
				System.out.println("회원정보 없음");
			}
		}
		
		
		//Handler 종료
		mbh.closeHandler(session);
		
		return name;
	}
	
	//회원가입 추가
	public boolean insertJoin(MemberVO mVO) {
		
		boolean joinFlag=false;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//쿼리실행
		int mCnt=session.insert("kr.co.salad.user.memberMapper.insertMember", mVO);
		if(mCnt==1) { //select 값이 있어 
			System.out.println("회원추가");
			joinFlag=true;
			session.commit();
		}else {
			System.out.println("회원추가 실패");
		}
		
		//Handler 종료
		mbh.closeHandler(session);
		
		
		return joinFlag;
	}
	
	//아이디찾기 
	public String selectFindIdChk(MemberVO mVO) {
		String id=null;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//쿼리실행
		String findID=session.selectOne("kr.co.salad.user.memberMapper.selectId", mVO);
		if(findID!=null) { //찾는 아이디가 있다
			System.out.println("찾은 아이디 "+findID);
			id=findID;
			session.commit();
		}else {
			System.out.println("아이디 찾기 실패");
		}
		
		//Handler 종료
		mbh.closeHandler(session);
			
		return id;
	}
	
	//중복아이디체크
	public int selectIdChk(String id) {
		int idChk=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//쿼리실행
		String findID=session.selectOne("kr.co.salad.user.memberMapper.selectIdChk", id);
		if(findID!=null) { //찾는 아이디가 있다
			idChk=1;
			session.commit();
		}else {
		}
		
		//Handler 종료
		mbh.closeHandler(session);
		
		return idChk;
				
		
	}
	
	//비밀번호 찾기 회원확인
	public boolean selectFindPassChk(MemberVO mVO) {
		boolean pwChFlag=false;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//쿼리실행
		String findID=session.selectOne("kr.co.salad.user.memberMapper.selectMemCh", mVO);
		if(findID!=null) { //찾는 아이디가 있다
			System.out.println("회원확인 완료");
			pwChFlag=true;
			session.commit();
		}else {
			System.out.println("회원확인 실패");
		}
		
		//Handler 종료
		mbh.closeHandler(session);
				
		return pwChFlag;
	}
	
	//비밀번호 변경
	public int updatePassReser(MemberVO mVO) {
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//쿼리실행
		int upCnt=session.update("kr.co.salad.user.memberMapper.updateMemCh", mVO);
		if(upCnt==1) { //변경된 비밀번호
			System.out.println("비밀번호 변경 완료");
			upCnt=1;
			session.commit();
		}else {
			System.out.println("비밀번호 변경 실패");
		}
		
		//Handler 종료
		mbh.closeHandler(session);	
					
		return upCnt; //변경완료
	}
	

}
