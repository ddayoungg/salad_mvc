package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.ReviewDomain;
import kr.co.salad.user.vo.ReviewVO;

@Component
public class ReviewDAO {
	
	private static ReviewDAO revDao;
	
	private ReviewDAO() {
	}//ReviewDAO
	
	public static ReviewDAO getInstance() {
		if(revDao == null) {
			revDao=new ReviewDAO();
		}//if
		return revDao;
	}//getInstance

	
	//후기리스트
		public List<ReviewDomain> selectRevList(ReviewVO revVO) {
			List<ReviewDomain> mrDomain=new ArrayList<ReviewDomain>();
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=mbh.getHandler();
			
			mrDomain=session.selectList("kr.co.salad.user.ReviewMapper.selectRevList",revVO);
			if(mrDomain!=null) { 
				System.out.println("리뷰글"+mrDomain);
				session.commit();
			}else {
				System.out.println("리뷰가 없습니다.");
			}//if
			
			mbh.closeHandler(session);
			return mrDomain;
		}//selectRevList
		
		
		//후기 상세보기
		public ReviewDomain selectRevDetail(int revNum) {
			ReviewDomain revDomain=new ReviewDomain();
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=mbh.getHandler();
			
			revDomain=session.selectOne("kr.co.salad.user.ReviewMapper.selectRevDetail", revNum);
			List<String> revImg=session.selectList("kr.co.salad.user.ReviewMapper.selectRevImg", revNum);
			revDomain.setRevImg(revImg);
			if(revDomain!=null) {
				System.out.println("후기 상세보기"+revDomain);
				session.commit();
			}else {
				session.rollback();
				System.out.println("후기가 없습니다");
			}//if
			
			mbh.closeHandler(session);
			return revDomain;
		}//selectRevDetail

		
		//페이지 총 개수 
		public int selectRevListCount(ReviewVO revVO) {
			int pageCnt=0;
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=mbh.getHandler();
			
			pageCnt=session.selectOne("kr.co.salad.user.ReviewMapper.selectTotalPage",revVO);
			if(pageCnt!=0) { 
				System.out.println("총 페이지수 "+pageCnt);
				session.commit();
			}else {
				System.out.println("페이지가 없습니다.");
			}//if
			
			mbh.closeHandler(session);
			return pageCnt;
		}//selectRevListCount
		
		 //후기 조회수
		public int updateRevCount(int revNum) {
			int hitsCnt=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=mbh.getHandler();
			
			System.out.println("1");
			hitsCnt=session.update("kr.co.salad.user.ReviewMapper.updateRevCount", revNum);
			System.out.println("2");
			
			if(hitsCnt != 0) {
				session.commit();
				System.out.println("후기 "+revNum+"번 조회수 증가");
			}else {
				System.out.println("후기 "+revNum+"번이 없습니다.");
			}//if
			mbh.closeHandler(session);
			return hitsCnt;
		}	
}
