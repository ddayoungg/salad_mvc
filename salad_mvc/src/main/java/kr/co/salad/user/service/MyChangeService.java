package kr.co.salad.user.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.vo.MngCancelVO;
import kr.co.salad.manager.vo.MngLoginVO;
import kr.co.salad.user.dao.MyChangeDAO;
import kr.co.salad.user.domain.MyChangeDomain;
import kr.co.salad.user.vo.MyChangeVO;

@Component
public class MyChangeService {
	
	@Autowired(required = false)
	private MyChangeDAO chanDAO;
	
	@Autowired(required = false)
	private PasswordEncoder passwordEncoder;
	
	//회원정보 들어가기전 비번 확인
	public boolean searchMyChangePass(MyChangeVO chanVO) {
		boolean passConfirm = false;
		MyChangeVO passVO = new MyChangeVO();
		passVO.setPass(chanVO.getPass());
		
		passConfirm = chanDAO.selectMyChangePass(chanVO);
		
//		System.out.println("복호화 전 상태 "+passConfirm);
		
//		if(!passwordEncoder.matches(passVO.getPass(), chanVO.getPass())) {
//			System.out.println("비밀번호 일치 x");
//			return passConfirm = false;
//		} 
		
		return passConfirm;
	}//
	
	//내 정보 불러오기
	public MyChangeVO searchMyMember(MyChangeVO chanVO) {
		MyChangeVO chanConfirmVO = new MyChangeVO();
		
		chanConfirmVO = chanDAO.selectMyMember(chanVO);
		
		return chanConfirmVO;
	}//
	
	//비번 변경 시 원래 비번 맞는 지 확인
	public boolean searchMemberPass(MyChangeVO chanVO) {
		boolean reconfirmPass = false;
		
		reconfirmPass = chanDAO.selectMemberPass(chanVO);
		
		return reconfirmPass;
	}//
	
	//내 정보 변경
	public int editMyMember(MyChangeVO chanVO) {
		//MyChangeVO chanConfirmVO = new MyChangeVO();
		int updateStatus = 0;
		
		//암호화
//		String encodedPassword = passwordEncoder.encode(chanVO.getPass());		
//		chanVO.setPass(encodedPassword);
		
		updateStatus = chanDAO.updateMyMember(chanVO);
		
		return updateStatus;
	}//
	
}//class
