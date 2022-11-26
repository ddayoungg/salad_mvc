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
	
	
	//ȸ������ ������ ��� Ȯ��
	public boolean searchMyChangePass(MyChangeVO chanVO) {
		boolean passMatch = false;
//		MyChangeVO passVO = new MyChangeVO();
//		passVO.setPass(chanVO.getPass());
		
		passMatch = chanDAO.selectMyChangePass(chanVO);
		
//		System.out.println("��ȣȭ �� ���� "+passConfirm);
//		
//		if(!passwordEncoder.matches(passVO.getPass(), chanVO.getPass())) {
//			System.out.println("��й�ȣ ��ġ x");
//			return passConfirm = false;
//		} 
		
		return passMatch;
	}//
	
	//�� ���� �ҷ�����
	public MyChangeVO searchMyMember(MyChangeVO chanVO) {
		//MyChangeVO chanConfirmVO = new MyChangeVO();
		
		MyChangeVO resultVO = chanDAO.selectMyMember(chanVO);
		
		return resultVO;
	}//
	
	//��� ���� �� ���� ��� �´� �� Ȯ��
	public MyChangeVO searchMemberPass(MyChangeVO chanVO) {
		
		MyChangeVO resultVO = chanDAO.selectMemberPass(chanVO);
		
		return resultVO;
	}//
	
	//�� ���� ����
	public int editMyMember(MyChangeVO chanVO) {
		//MyChangeVO chanConfirmVO = new MyChangeVO();
		int updateStatus = 0;
		
		//��ȣȭ
//		String encodedPassword = passwordEncoder.encode(chanVO.getPass());		
//		chanVO.setPass(encodedPassword);
		
		updateStatus = chanDAO.updateMyMember(chanVO);
		
		return updateStatus;
	}//
	
}//class
