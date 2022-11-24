package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.CcDeliveryDomain;
import kr.co.salad.user.domain.CcMemberDomain;
import kr.co.salad.user.domain.MyCancelDomain;
import kr.co.salad.user.domain.WishDomain;
import kr.co.salad.user.vo.MyCancelVO;
import kr.co.salad.user.vo.WishVO;
@Component
public class MyCancelDAO {
	
	public int selectMyCcTotalCnt(String id) {//나의 취소 리스트 총 행 수
		int rowCnt=0;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		rowCnt=ss.selectOne("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyCcTotalCnt", id);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return rowCnt;
	}//selectMyCcTotalCnt
	
	public List<MyCancelDomain> selectMyCancelList(MyCancelVO mcVO) { //나의 취소 목록 리스트
		List<MyCancelDomain> list=new ArrayList<MyCancelDomain>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyCancelList", mcVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectMyCancelList
	
	public List<MyCancelDomain> selectMyCcOrderList(MyCancelVO mcVO) { //나의 주문 목록 리스트
		List<MyCancelDomain> list=new ArrayList<MyCancelDomain>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyCcOrderList", mcVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectMyCcOrderList
	
	public String selectCcExistAddrFlag(MyCancelVO mcVO) { //나의 배송지 상세 내역
		String existAddrFlag="0";//0: 기본 배송지, 1: 배송지
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		existAddrFlag=ss.selectOne("kr.co.salad.user.dao.mapper.MyCancelMapper.selectCcExistAddrFlag", mcVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return existAddrFlag;
	}//selectCcExistAddrFlag
	
	public CcMemberDomain selectMyInfoDetail(MyCancelVO mcVO) { //나의 회원 정보
		CcMemberDomain cmDomain=new CcMemberDomain();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//쿼리실행
		cmDomain=ss.selectOne("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyInfoDetail", mcVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return cmDomain;
	}//selectMyInfoDetail
	
	public CcDeliveryDomain selectMyCcDeliDetail(MyCancelVO mcVO) { //나의 배송지 상세 내역
		CcDeliveryDomain cdDomain=new CcDeliveryDomain();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//쿼리실행
		cdDomain=ss.selectOne("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyCcDeliDetail", mcVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return cdDomain;
	}//selectDeliveryDetail
	
}//class
