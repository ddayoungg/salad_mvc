package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.MyDeliDomain;
import kr.co.salad.user.vo.MemberVO;
import kr.co.salad.user.vo.MyDeliVO;

@Component
public class MyDeliDAO {
	
		//배송지 정보 가져오기
		public MyDeliDomain selectDeli(String id) {
			MyDeliDomain mdDomain=new MyDeliDomain();
			MyBatisHandler mbh=MyBatisHandler.getInstance();

			SqlSession session=mbh.getHandler();
			//쿼리실행
			mdDomain=session.selectOne("kr.co.salad.user.MyUserDeliMapper.selectDeli", id);
			
			
			//Handler 종료
			mbh.closeHandler(session);
			
			return mdDomain;
		}
		
		//배송지 정보 변경
		public int updateDeli(MyDeliVO mdVO) {
			int updateFlag=0;
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=mbh.getHandler();
			//쿼리실행
			updateFlag=session.update("kr.co.salad.user.MyUserDeliMapper.updateDeli", mdVO);
			session.commit();
					
			//Handler 종료
			mbh.closeHandler(session);
			
			return updateFlag;
		}

}
