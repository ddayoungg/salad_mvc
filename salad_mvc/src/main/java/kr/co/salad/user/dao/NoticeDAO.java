package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.NoticeDomain;
import kr.co.salad.user.vo.NoticeVO;

@Component
public class NoticeDAO {
	
private static NoticeDAO noDao;
	
	private NoticeDAO() {
	}//NoticeDAO
	
	public static NoticeDAO getInstance() {
		if(noDao == null) {
			noDao=new NoticeDAO();
		}//if
		return noDao;
	}//getInstance
	

	//공지사항리스트
	public List<NoticeDomain> selectNotice(NoticeVO noVO){
		List<NoticeDomain> noDomain = new ArrayList<NoticeDomain>();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		noDomain=session.selectList("kr.co.salad.user.NoticeMapper.selectNotiList",noVO);
		if(noDomain!=null) { 
			System.out.println("공지사항"+noDomain);
			session.commit();
		}else {
			System.out.println("공지사항이 없습니다.");
		}//if
			
		mbh.closeHandler(session);
		return noDomain;
		}//selectNotice
		
	//공지사항 상세보기
	public NoticeDomain selectNoticeDetail(int notiNum) {
		NoticeDomain noDomain=new NoticeDomain();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		noDomain=session.selectOne("kr.co.salad.user.NoticeMapper.selectNotiDetail",notiNum);
		if(noDomain!=null) { 
			System.out.println("공지사항 상세보기 "+ noDomain);
			session.commit();
		}else {
			session.rollback();
			System.out.println("공지사항이 없습니다.");
		}//if
			
		mbh.closeHandler(session);
		return noDomain;
		}//selectNoticeDetail

	    
    //총 페이지 수
	public int selectNotiListCount(NoticeVO noVO) {
	    int pageCnt=0;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
			
		pageCnt=session.selectOne("kr.co.salad.user.NoticeMapper.selectTotalPage",noVO);
		if(pageCnt!=0) { 
			System.out.println("총 페이지수 "+pageCnt);
			session.commit();
		}else {
			System.out.println("페이지가 없습니다.");
		}//if
			
		mbh.closeHandler(session);
		return pageCnt;
	 }//selectNotiListCount
	    
	 //공지사항 조회수
	public int updateNotiCount(int notiNum) {
		int hitsCnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		hitsCnt=session.update("kr.co.salad.user.NoticeMapper.updateNotiCount", notiNum);
		
		if(hitsCnt != 0) {
			session.commit();
			System.out.println("후기 "+notiNum+"번 조회수 증가");
		}else {
			System.out.println("후기 "+notiNum+"번이 없습니다.");
		}//if
		mbh.closeHandler(session);
		return hitsCnt;
	}
}
