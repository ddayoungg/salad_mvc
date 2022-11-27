package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.PrdDetailRevDomain;
import kr.co.salad.user.vo.PrdDetailRevVO;
@Component
public class PrdDetailRevDAO {
	
	public List<String> selectRevImgList(int revNum) { // 후기 이미지 리스트
		List<String> list=null;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		System.out.println(ss);
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevImgList", revNum);
						
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
				
		return list;
	}//selectBestRevImgList
	
	public List<PrdDetailRevDomain> selectBestRevList(int prdNum) { //베스트 후기 리스트
		List<PrdDetailRevDomain> list=null;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
				
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectBestRevList", prdNum);
				
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectBestRevLis
	
	public int selectRevTotalCount(int prdNum) {//(물품번호, 최신순/랭킹순)
		int totalCnt=0;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//쿼리실행
		totalCnt=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevTotalCount", prdNum);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return totalCnt;
	}//selectRevTotalCount
	
	public List<PrdDetailRevDomain> selectRevList(PrdDetailRevVO rVO) {
		List<PrdDetailRevDomain> list=new ArrayList<PrdDetailRevDomain>();
		
		System.out.println(rVO.getSortType() + " / " + rVO.getOrderBy());//최신순,랭킹순/오름차순,내림차순
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevList", rVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectRevList
	
	public int updateRevHits(int revNum) { //후기 조회수 증가
		int cnt=0;
		
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		//2. 쿼리문 실행
		cnt=session.update("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.updateRevHits", revNum);
		if(cnt != 0) {
			session.commit();
			System.out.println("후기 "+revNum+"번 조회수 증가되었습니다.");
		}else {
			session.rollback();
			System.out.println("후기 "+revNum+"번이 존재하지 않습니다.");
		}//end else
		
		//3. MyBatis Handler 끊기
		mbh.closeHandler(session);
		
		return cnt;
	}//updateRevHits
	
	public PrdDetailRevDomain selectRevDetail(int revNum) {
		PrdDetailRevDomain rDomain=new PrdDetailRevDomain();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
				
		//쿼리실행
		rDomain=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevDetail", revNum);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return rDomain;
	}//selectRevDetail
	
	public int selectRevWriteOrderNum(PrdDetailRevVO rVO) { //후기 작성 가능 여부
		int orderNum=0;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//쿼리실행
		orderNum=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevWriteOrderNum", rVO);
		if(orderNum!=0) {//주문한 내역이 있을 경우
			System.out.println("주문 내역이 존재합니다.");
		}//end if
		
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return orderNum;
	}//selectRevFlag
	
	public int selectLastRevNum() {
		int revNum=1;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		try {
			revNum=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectLastRevNum");
		}catch (NullPointerException npe) {
			revNum=0;
		}//end catch
		
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return revNum;
	}//selectLastRevNum
	
	public void insertRevWrite(PrdDetailRevVO rVO) {
		int lastRevNum=0;
		
		PrdDetailRevDAO pdrDAO=new PrdDetailRevDAO();
		
		lastRevNum=pdrDAO.selectLastRevNum();
		
		rVO.setRevNum(lastRevNum+1);
		
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		boolean commitFlag=true;
		//2. 쿼리문 실행
		int rowCnt=session.insert("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.insertRevWrite", rVO);
		rowCnt+=session.update("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.updateRevWrite", rVO);
		if(rowCnt != 0) {
			System.out.println("데이터가 추가 되었습니다.");
		}else {
			System.out.println("데이터 추가 실패했습니다.");
			commitFlag=false;
		}//end else
		int revImgCnt=0;
		if(rVO.getRevImgList()!=null) {
			for(String revImg : rVO.getRevImgList()) {
				rVO.setRevImg(revImg);
				revImgCnt=session.insert("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.insertRevImgWrite", rVO);
				if(revImgCnt != 0) {
					System.out.println("데이터가 추가 되었습니다.");
				}else {
					System.out.println("데이터 추가 실패했습니다.");
					commitFlag=false;
				}//end else
			}//end for
		}//end if
		
		if(commitFlag) {//트랜잭션
			session.commit();
		}else {
			session.rollback();
		}//end if
		
		//3. MyBatis Handler 끊기
		mbh.closeHandler(session);
		
	}//insertRevWrite
	
}//class
