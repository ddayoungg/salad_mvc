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
	public int selectMyRevCount(MyRevVO mrVO) {
		int pageCnt=0;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		System.out.println("1");		
		pageCnt=session.selectOne("kr.co.salad.user.MyRevMapper.selectTotalPage",mrVO);
		if(pageCnt!=0) { 
			System.out.println("2");		
			System.out.println("총 페이지수 "+ pageCnt);
			session.commit();
		}else {
			System.out.println("3");		
			System.out.println("페이지없음");
		}//if
				
		System.out.println("4");		
		mbh.closeHandler(session);
		return pageCnt;
	}
	
	
	
	//나의후기 리스트,검색
	public List<MyRevDomain> selectMyRevList(MyRevVO mrVO){
		List<MyRevDomain> mrDomain=new ArrayList<MyRevDomain>();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		System.out.println("5");		
		mrDomain=session.selectList("kr.co.salad.user.MyRevMapper.selectRevList",mrVO);
		if(mrDomain!=null) { 
			System.out.println("6");		
			System.out.println("나의 후기 "+mrDomain);
			session.commit();
		}else {
			System.out.println("7");		
			System.out.println("나의 후기가 없습니다.");
		}
		
		System.out.println("8");		
		mbh.closeHandler(session);
		return mrDomain;
	}
	
	//후기상세보기
	public MyRevDomain selectMyRevDetil(int revNum) {
		MyRevDomain mrDomain=new MyRevDomain();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		System.out.println("9");		
		mrDomain=session.selectOne("kr.co.salad.user.MyRevMapper.selectRevDetail", revNum);
		
		System.out.println("10");		
		List<String> revImg=session.selectList("kr.co.salad.user.MyRevMapper.selectRevImg", revNum);
		mrDomain.setRevImg(revImg);
		if(mrDomain!=null) { 
			System.out.println("11");		
			System.out.println("나의 후기 상세보기 "+ mrDomain);
			session.commit();
		}else {
			System.out.println("12");		
			session.rollback();
			System.out.println("나의 후기가 없습니다.");
		}
		
		System.out.println("13");		
		mbh.closeHandler(session);
		return mrDomain;
	}
	
	//후기 수정하기
	public int updateMyRev(MyRevVO mrVO) {
		int updateFlag=0;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		System.out.println("14");		
		updateFlag=session.update("kr.co.salad.user.MyRevMapper.updateNoti",mrVO);
		if(updateFlag==1) { 
			System.out.println("15");		
			System.out.println("나의 후기 수정 ");
			session.commit();
		}else {
			System.out.println("16");		
			System.out.println("나의 후기 수정 실패");
		}
		
		System.out.println("17");		
		mbh.closeHandler(session);
		return updateFlag;
	}
	
	//후기 삭제하기
	public int deleteMyRev(int revNum) {
		int removeFlag=0;
		int removeImgFlag=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		System.out.println("18");		
		removeImgFlag=session.delete("kr.co.salad.user.MyRevMapper.deleteImgRev", revNum);
		removeFlag=session.delete("kr.co.salad.user.MyRevMapper.deleteRev", revNum);
		if(removeImgFlag!=0) { //삭제할 후기이미지가 있는경우 
			System.out.println("19");
			System.out.println("삭제할 이미지가 있습니다.");
			session.commit();
		}else {
			System.out.println("19");
			session.rollback();
			System.out.println("이미지가 없습니다.");
		}
		
		System.out.println("20");
		if(removeFlag==1) { //후기가 있는경우
			System.out.println("21");
			System.out.println("삭제할 나의 후기가 있음");
			session.commit();
		}else {
			System.out.println("22");
			System.out.println("나의후기가 없습니다.");
		}
		
		System.out.println("23");
		mbh.closeHandler(session);
		return removeFlag; //1은 삭제완료, 0은 삭제실패
	}
	

}
