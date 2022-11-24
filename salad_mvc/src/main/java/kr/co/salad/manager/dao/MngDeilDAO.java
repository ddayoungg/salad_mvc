package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngDeilDomain;
import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.vo.MngDeilVO;
import kr.co.salad.manager.vo.MngRevVO;

@Component
public class MngDeilDAO {
	
	private static MngDeilDAO mrDao;
	
	private MngDeilDAO() {
		
	}//MngRevDAO
	
	public static MngDeilDAO getInstance() {
		if(mrDao == null) {
			mrDao=new MngDeilDAO();
		}//end if
		return mrDao;
	}//getInstance

	
	//후기전체,검색리스트
		public List<MngDeilDomain> selectDeilList(MngDeilVO mdVO) {
			List<MngDeilDomain> mdDomain=new ArrayList<MngDeilDomain>();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			mdDomain=session.selectList("kr.co.salad.manager.DeilMangerMapper.selectDeilList",mdVO);

			
			//Handler 종료
			mbh.closeHandler(session);
			
			
			
			return mdDomain;
		}
		
		//배송상태 변경
		public int updateDeilStatus(MngDeilVO mdVO) {
			int StatusFlag=0;
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			System.out.println("DAO에서 "+mdVO);
			//쿼리실행
			StatusFlag=session.update("kr.co.salad.manager.DeilMangerMapper.updateDeilStatus",mdVO);
			if(StatusFlag==1) { //배송변경완료
				System.out.println("배송변경 완료");
				session.commit();
			}else {
				System.out.println("배송변경 실패");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
			return StatusFlag;//1은 등록,0은 미등록
		}
		
		//페이치 총 개수 
		public int selectDeilListCount(MngDeilVO mdVO) {
			int pageCnt=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			pageCnt=session.selectOne("kr.co.salad.manager.DeilMangerMapper.selectTotalPage",mdVO);

			
			//Handler 종료
			mbh.closeHandler(session);
			
			return pageCnt;
		}
		
}
