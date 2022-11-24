package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngNoticeDomain;
import kr.co.salad.manager.vo.MngNoticeVO;

@Component
public class MngNoticeDAO {
	
private static MngNoticeDAO mnDao;
	
	private MngNoticeDAO() {
		
	}//MngNoticeDAO
	
	public static MngNoticeDAO getInstance() {
		if(mnDao == null) {
			mnDao=new MngNoticeDAO();
		}//end if
		return mnDao;
	}//getInstance
	

	//검색,전체리스트
		public List<MngNoticeDomain> selectNotice(MngNoticeVO mnVO){
			List<MngNoticeDomain> mnDomain = new ArrayList<MngNoticeDomain>();
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			mnDomain=session.selectList("kr.co.salad.manager.NotiMangerMapper.selectNotiList",mnVO);
			if(mnDomain!=null) { //공지사항글이 있다면
				System.out.println("공지사항글들 "+mnDomain);
				session.commit();
			}else {
				System.out.println("공지사항없음");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
			return mnDomain;
		}
		
		//공지사항 상세보기
		public MngNoticeDomain selectNoticeDetail(int notiNum) {
			MngNoticeDomain mnDomain=new MngNoticeDomain();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			mnDomain=session.selectOne("kr.co.salad.manager.NotiMangerMapper.selectNotiDetail",notiNum);
			if(mnDomain!=null) { //공지사항글이 있다면
				System.out.println("공지사항 상세보기 "+mnDomain);
				session.commit();
			}else {
				session.rollback();
				System.out.println("공지사항이 없음");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
			return mnDomain;
		}
		
		//공지사항 글쓰기
		public void insertNotice(MngNoticeVO mnVO) {
			int writeFlag=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			writeFlag=session.insert("kr.co.salad.manager.NotiMangerMapper.insertNoti",mnVO);
			if(writeFlag==1) { //공지사항글 추가되었다면
				System.out.println("공지사항 추가 ");
				session.commit();
			}else {
				System.out.println("공지사항 추가 실패");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			
		}
		
		//공지사항 글 수정하기
		public int updateNotice(MngNoticeVO mnVO) {
			int updateFlag=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			updateFlag=session.update("kr.co.salad.manager.NotiMangerMapper.updateNoti",mnVO);
			if(updateFlag==1) { //공지사항글 수정되었다면
				System.out.println("공지사항 수정 ");
				session.commit();
			}else {
				System.out.println("공지사항 수정 실패");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			return updateFlag;//1은 수정완료 0은수정실패
		}
		
		//공지사항 글 삭제
	    public int deleteNotice(int notiNum) {
	    	
	    	int deleteFlag=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			deleteFlag=session.delete("kr.co.salad.manager.NotiMangerMapper.deleteNoti",notiNum);
			if(deleteFlag==1) { //공지사항글 삭제되었다면
				System.out.println("공지사항 삭제 ");
				session.commit();
			}else {
				System.out.println("공지사항 삭제 실패");
			}
			
			//Handler 종료
			mbh.closeHandler(session);
			return deleteFlag;//1은 삭제성공 0은 삭제실패
	    }
	    
    
	    //총 페이지 수
	    public int selectNotiListCount(MngNoticeVO mnVO) {
	    	
	    	int pageCnt=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//쿼리실행
			pageCnt=session.selectOne("kr.co.salad.manager.NotiMangerMapper.selectTotalPage",mnVO);
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
