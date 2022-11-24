package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.vo.MngRevVO;

@Component
public class MngRevDAO {
	
	private static MngRevDAO mrDao;
	
	private MngRevDAO() {
		
	}//MngRevDAO
	
	public static MngRevDAO getInstance() {
		if(mrDao == null) {
			mrDao=new MngRevDAO();
		}//end if
		return mrDao;
	}//getInstance

	
	//후기전체,검색리스트
		public List<MngRevDomain> selectRevList(MngRevVO mrVO) {
			List<MngRevDomain> mrDomain=new ArrayList<MngRevDomain>();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			mrDomain=session.selectList("kr.co.salad.manager.RevMangerMapper.selectRevList",mrVO);
			if(mrDomain!=null) { //리뷰글들이 있다면
				System.out.println("리뷰글들 "+mrDomain);
				session.commit();
			}else {
				System.out.println("리뷰없음");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
			
			
			return mrDomain;
		}
		
		//후기 상세보기
		public MngRevDomain selectRevDetail(int revNum) {
			MngRevDomain mrDomain=new MngRevDomain();
			
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			mrDomain=session.selectOne("kr.co.salad.manager.RevMangerMapper.selectRevDetail",revNum);
			List<String> revImg=session.selectList("kr.co.salad.manager.RevMangerMapper.selectRevImg", revNum);
			mrDomain.setRevImg(revImg);
			if(mrDomain!=null) { //리뷰글들이 있다면
				System.out.println("리뷰상세보기 "+mrDomain);
				session.commit();
			}else {
				session.rollback();
				System.out.println("리뷰없음");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
			return mrDomain;
		}
		
		//후기 삭제
		public int deleteRev(int revNum) {
			int removeFlag=0;
			int removeImgFlag=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			removeImgFlag=session.delete("kr.co.salad.manager.RevMangerMapper.deleteImgRev",revNum);
			removeFlag=session.delete("kr.co.salad.manager.RevMangerMapper.deleteRev",revNum);
			System.out.println(removeImgFlag+removeFlag);
			if(removeImgFlag!=0) { //삭제할 리뷰이미지들이 있다면
				System.out.println("삭제할 이미지들 있음");
			}else {
				System.out.println("리뷰이미지없음");
			}
			session.commit();
			//Handler 종료
			mbh.closeHandler(session);
			
			return removeFlag; //1은 삭제완료, 0은 삭제실패
		}
		
		//베스트 후기 등록
		public int updateBestRev(int revNum) {
			int BestFlag=0;
			System.out.println("dao들어옴 후기번호 : "+revNum);
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			BestFlag=session.update("kr.co.salad.manager.RevMangerMapper.updateBestRev",revNum);
			if(BestFlag==1) { //베스트로 등록이 되었다면
				System.out.println("베스트등록 완료");
				session.commit();
			}else {
				System.out.println("베스트 등록 실패");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
			return BestFlag;//1은 등록,0은 미등록
		}
		
		//메인카테고리
		public List<MngRevDomain> selectMainCate() {
			
			List<MngRevDomain> mrDomain=new ArrayList<MngRevDomain>();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			mrDomain=session.selectList("kr.co.salad.manager.RevMangerMapper.selectMainCate");
			if(mrDomain!=null) { //리뷰글들이 있다면
				System.out.println("메인카테고리 "+mrDomain);
				session.commit();
			}else {
				System.out.println("메인카테고리없음");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
			
			
			return mrDomain;
		}
		
		//서브카테고리
		public List<MngRevDomain> selectSubCate(int mainCate) {
			
			List<MngRevDomain> mrDomain=new ArrayList<MngRevDomain>();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			mrDomain=session.selectList("kr.co.salad.manager.RevMangerMapper.selectSubCate",mainCate);
			if(mrDomain!=null) { //리뷰글들이 있다면
				System.out.println("서브카테고리 "+mrDomain);
				session.commit();
			}else {
				System.out.println("서브카테고리없음");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
			
			
			return mrDomain;
		}
		
		//페이치 총 개수 
		public int selectRevListCount(MngRevVO mrVO) {
			int pageCnt=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			pageCnt=session.selectOne("kr.co.salad.manager.RevMangerMapper.selectTotalPage",mrVO);
			if(pageCnt!=0) { //페이지수가 있다면
				System.out.println("총 페이지수 "+pageCnt);
				session.commit();
			}else {
				System.out.println("페이지없음");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
			return pageCnt;
		}
		
}
