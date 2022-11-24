package kr.co.salad.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MyUserOutDAO;
import kr.co.salad.user.vo.MyUserOutVO;

@Component
public class MyUserOutService {
	
	@Autowired(required = false)
	private MyUserOutDAO muoDAO;
	
	public int editUserOut(MyUserOutVO muoVO) {
		int outFlag=0; //0ÀÌ¸é Å»Åð½ÇÆÐ 1ÀÌ¸é Å»Åð¼º°ø
		outFlag=muoDAO.updateUserOut(muoVO);
		return outFlag;
	}
	
	public int searchUser(MyUserOutVO muoVO) {
		int userFlag=0; //0ÀÌ¸é È¸¿ø¾øÀ½ 1ÀÌ¸é È¸¿øÁ¤º¸ ÀÖÀ½
		userFlag=muoDAO.selectUserPw(muoVO);
		return userFlag;
	}

}
