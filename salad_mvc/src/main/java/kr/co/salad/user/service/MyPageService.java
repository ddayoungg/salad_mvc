package kr.co.salad.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MyPageDAO;
import kr.co.salad.user.vo.MyPageVO;

@Component
public class MyPageService {
	
	@Autowired(required = false)
	private MyPageDAO mpDAO;
	
	public boolean searchMyPass(MyPageVO mpVO) {
		boolean passChkFalg=true; //false�� ��й�ȣ Ȯ�� ����
		passChkFalg=mpDAO.selectMyPass(mpVO);
		return passChkFalg;
	}

}
