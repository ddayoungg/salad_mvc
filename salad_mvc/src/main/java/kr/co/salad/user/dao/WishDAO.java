package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.WishDomain;
import kr.co.salad.user.vo.WishVO;
@Component
public class WishDAO {
	
	public int selectMyTotalCount(WishVO wVO) {//나의 전체 찜, 후기, 상품문의 건 수
		int rowCnt=0;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		rowCnt=ss.selectOne("kr.co.salad.user.dao.mapper.WishMapper.selectMyTotalCount", wVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return rowCnt;
	}//selectWishTotalCount
	
	public List<WishDomain> selectWishList(WishVO wVO) { //찜 목록 리스트
		List<WishDomain> list=new ArrayList<WishDomain>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.WishMapper.selectWishList", wVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectWishList
	
	public boolean selectWishFlag(WishVO wVO) {
		boolean wishChkFlag = false;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		int chkCnt=ss.selectOne("kr.co.salad.user.dao.mapper.WishMapper.selectWishFlag", wVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		if(chkCnt==1) {
			wishChkFlag = true;
		}//end if
		
		return wishChkFlag;
	}//selectWishFlag
	
	public void insertWish(WishVO wVO) {
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//쿼리실행 insert("Mapper아이디", 값)
		int cnt=ss.insert("kr.co.salad.user.dao.mapper.WishMapper.insertWish", wVO);
						
		if(cnt == 1) {
			System.out.println(cnt+"건 추가");
			ss.commit();
		}else {
			System.out.println("데이터 추가 실패");
			ss.rollback();
		}//end else
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
	}//insertWish
	
	public int deleteWish(WishVO wVO) {
		int totalCnt = 0;//총 삭제한 행 수
		int cnt=0;//한 쿼리에서 삭제된 건 수
		
		boolean transFlag=true;//트랜잭션 여부
		
		System.out.println("찜 목록에서 삭제되었습니다.");
		
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		//2. 쿼리문 실행
		if(wVO.getPrdNumArr()!=null) {
			for(int prdNum : wVO.getPrdNumArr()) {
				wVO.setPrdNum(prdNum);
				cnt=session.delete("kr.co.salad.user.dao.mapper.WishMapper.deleteWish", wVO);
				if(cnt != 0) {
					totalCnt++;
					System.out.println("제품 "+wVO.getPrdNum()+"번 찜 목록에 삭제되었습니다.");
				}else {
					transFlag=false;
					totalCnt=0;
					System.out.println("제품 "+wVO.getPrdNum()+"번 찜 목록에 존재하지 않습니다.");
				}//end else
			}//end for
		}//end if
		
		if(transFlag) {//트랜잭션
			session.commit();
		}else {
			session.rollback();
		}//end else
		
		//3. MyBatis Handler 끊기
		mbh.closeHandler(session);
		
		return totalCnt;
	}//deleteWish
	
}//class
