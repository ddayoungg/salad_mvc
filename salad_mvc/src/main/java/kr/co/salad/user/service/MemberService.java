package kr.co.salad.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MemberDAO;
import kr.co.salad.user.vo.MemberVO;

@Component
public class MemberService {
	
	@Autowired(required = false)
	private MemberDAO mDAO;

	//로그인 여부
		public String searchLogin(MemberVO mVO) {
			String loginName="";
			loginName=mDAO.selectLogin(mVO);
			return loginName;
		}
		
		//회원가입 추가
		public boolean addJoin(MemberVO mVO) {
			boolean joinFalg=false;
			
			joinFalg=mDAO.insertJoin(mVO);
			return true;
		}
		
		//아이디찾기 
		public String searchFindIdChk(MemberVO mVO) {
			String findName="";
			findName=mDAO.selectFindIdChk(mVO);
			
			return findName;
		}
		
		//중복아이디체크
		public int searchIdChk(String id) {
			
			return mDAO.selectIdChk(id); //중복아이디존재
		}
		
		//비밀번호 찾기 체크
		public boolean searchFindPassChk(MemberVO mVO) {
			boolean pwCh=false;
			pwCh=mDAO.selectFindPassChk(mVO);
					
			return pwCh;
		}
		
		//비밀번호 변경
		public int editPassReser(MemberVO mVO) {
			int editPw=0;
			editPw=mDAO.updatePassReser(mVO);
						
			return editPw; //변경완료
		}
}
