package kr.co.salad.manager.service;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kr.co.salad.manager.dao.MngLoginDAO;
import kr.co.salad.manager.vo.MngLoginVO;

@Component
public class MngLoginService {
	
	@Autowired(required = false)
	private MngLoginDAO mngLoginDao;
	
	//�α���
		public boolean searchLogin(MngLoginVO mVO) {
			
			boolean login=false;
			try {
				login = mngLoginDao.selectLogin(mVO);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return login;
		}//
		
//		//�α��� ����
//		public MngLoginVO searchLoginView(MngLoginVO mVO) {
//			return mngLoginDao.searchLoginView(mVO);
//		}//
		
//		//�α׾ƿ�
//		public void searchLogout(String mngId) {
//			
//		}//


	
}
