package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngCancelDomain;
import kr.co.salad.user.domain.MyChangeDomain;
import kr.co.salad.user.vo.MyChangeVO;

@Component
public class MyChangeDAO {
	
	//회원 정보 들어가기 전 비번 확인
	public boolean selectMyChangePass(MyChangeVO chanVO) {
		boolean passConfirm = false;
		chanVO.getPass();
		System.out.println(chanVO);
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		chanVO = session.selectOne("kr.co.salad.myChangeMapper.confirmMyPass",chanVO);
		
		if(passConfirm = true && chanVO != null ) {
			System.out.println("다오"+passConfirm);
			System.out.println("마이페이지 접속 성공"+chanVO);
			session.commit();
		} else {
			System.out.println("다오"+passConfirm);
			System.out.println("마이페이지 접속 실패"+chanVO);
		}
		session.commit();
		mbh.closeHandler(session);
		
		return passConfirm;
	}//
	
	//내 정보 불러오기
	public MyChangeVO selectMyMember (MyChangeVO chanVO) {
		MyChangeVO chanConfirmVO = new MyChangeVO();
		//chanVO.setPass("1323!d");
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		chanConfirmVO=session.selectOne("kr.co.salad.myChangeMapper.callMyPage",chanVO);
		session.commit();
		mbh.closeHandler(session);
		
		//System.out.println(chanConfirmVO);
		
		return chanConfirmVO;
	}//
	
	//비번 변경 시 원래 비번 맞는 지 확인
	public boolean selectMemberPass(MyChangeVO chanVO) {
		boolean reconfirmPass = false;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		chanVO = session.selectOne("kr.co.salad.myChangeMapper.reConfirmMyPass",chanVO);
		
		if(reconfirmPass = true && chanVO != null ) {
			System.out.println("다오"+reconfirmPass);
			System.out.println("비번 중복 확인 성공"+chanVO);
			session.commit();
		} else {
			System.out.println("다오"+reconfirmPass);
			System.out.println("비번 중복 확인 실패"+chanVO);
		}
		session.commit();
		mbh.closeHandler(session);
		
		return reconfirmPass;
	}//
	
	//정보 변경
	public int updateMyMember (MyChangeVO chanVO) {
		//MyChangeVO chanConfirmVO = new MyChangeVO();
		int updateStatus = 0;
//		chanVO.setEmail("test@gmail.com");
//		chanVO.setPhone("123456789");
//		chanVO.setName("곽우소");
//		chanVO.setPass("1234");
//		chanVO.setId("test");
		
		chanVO.getEmail();
		chanVO.getPhone();
		chanVO.getName();
		chanVO.getPass();
		chanVO.getId();
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		updateStatus=session.update("kr.co.salad.myChangeMapper.changeMypage",chanVO);
		System.out.println("바뀐상태"+updateStatus);
		if(updateStatus == 1) {
			System.out.println("다오 정보 변경 완료");		
			session.commit();
		} else {
			System.out.println("다오 정보 변경 실패");
		}
		mbh.closeHandler(session);
		
		return updateStatus;
		
	}//
	
	public static void main(String[] args) {
		MyChangeVO chanVO = new MyChangeVO();
		MyChangeDAO cDAO = new MyChangeDAO();
		
		//cDAO.selectMyChangePass(chanVO);
		//cDAO.selectMyMember(chanVO);
		//cDAO.updateMyMember(chanVO);
	}//static
}//class
