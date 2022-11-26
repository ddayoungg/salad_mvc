package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.MyRevDomain;
import kr.co.salad.user.vo.MyRevVO;

@Component
public class MyRevDAO {
	
private static MyRevDAO mrDao;
	
	private MyRevDAO() {
		
	}//MngNoticeDAO
	
	public static MyRevDAO getInstance() {
		if(mrDao == null) {
			mrDao=new MyRevDAO();
		}//end if
		return mrDao;
	}//getInstance	
	
	//리스트 전체 행수
	public int selectMyRevCount(String id) { 
		int pageCnt=0;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		pageCnt=session.selectOne("kr.co.salad.user.MyRevMapper.selectTotalPage", id);
		if(pageCnt!=0) { 
			System.out.println("총 페이지수 "+ pageCnt);
			session.commit();
		}else {
			System.out.println("페이지없음");
		}//if
				
		mbh.closeHandler(session);
		return pageCnt;
	}
	
	
	
	//나의후기 리스트,검색 
	public List<MyRevDomain> selectMyRevList(MyRevVO mrVO){
		List<MyRevDomain> mrDomain=new ArrayList<MyRevDomain>();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		
		mrDomain=session.selectList("kr.co.salad.user.MyRevMapper.selectRevList",mrVO);
		if(mrDomain!=null) { 
			System.out.println("나의 후기 "+ mrDomain);
		}else {
			System.out.println("나의 후기가 없습니다.");
		}
		
		mbh.closeHandler(session);
		return mrDomain;
	}
	
	//후기상세보기
	public MyRevDomain selectMyRevDetil(int revNum) {
		MyRevDomain mrDomain=new MyRevDomain();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		mrDomain=session.selectOne("kr.co.salad.user.MyRevMapper.selectRevDetail", revNum);
		
		List<String> revImg=session.selectList("kr.co.salad.user.MyRevMapper.selectRevImg", revNum);
		mrDomain.setRevImg(revImg);
		if(mrDomain!=null) { 
			System.out.println("나의 후기 상세보기 "+ mrDomain);
			session.commit();
		}else {
			session.rollback();
			System.out.println("나의 후기가 없습니다.");
		}
		
		mbh.closeHandler(session);
		return mrDomain;
	}
	
//	//후기 수정하기
//	public int updateMyRev(MyRevVO mrVO) {
//		int updateFlag=0;
//		MyBatisHandler mbh=MyBatisHandler.getInstance();
//		SqlSession session=mbh.getHandler();
//		
//		updateFlag=session.update("kr.co.salad.user.MyRevMapper.updateNoti",mrVO);
//		if(updateFlag==1) { 
//			System.out.println("나의 후기 수정 ");
//			session.commit();
//		}else {
//			System.out.println("나의 후기 수정 실패");
//		}
//		
//		mbh.closeHandler(session);
//		return updateFlag;
//	}
	
//	//후기 삭제하기
//	public int deleteMyRev(int revNum) {
//		System.out.println("확인1");
//		int deleteFlag=0;
//		int deleteImgFlag=0;
//		
//		MyBatisHandler mbh=MyBatisHandler.getInstance();
//		SqlSession session=mbh.getHandler();
//		
//		
//		deleteImgFlag=session.delete("kr.co.salad.user.MyRevMapper.deleteImgRev", revNum);
//		deleteFlag=session.delete("kr.co.salad.user.MyRevMapper.deleteRev", revNum);
//		if(deleteImgFlag!=0) { //삭제할 후기이미지가 있는경우 
//			System.out.println("삭제할 이미지가 있습니다.");
//			session.commit();
//		}else {
//			session.rollback();
//			System.out.println("이미지가 없습니다.");
//		}
//		
//		mbh.closeHandler(session);
//		return deleteFlag; //1은 삭제완료, 0은 삭제실패
//	}
	
	 //나의 후기 조회수
	public int updateMyRevCount(int revNum) {
		int hitsCnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		hitsCnt=session.update("kr.co.salad.user.MyRevMapper.updateMyRevCount", revNum);
		
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
