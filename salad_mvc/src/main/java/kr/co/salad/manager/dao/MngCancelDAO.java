package kr.co.salad.manager.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngCancelDomain;
import kr.co.salad.manager.vo.MngCancelVO;
import kr.co.salad.manager.vo.MngLoginVO;

@Component
public class MngCancelDAO {
	
	//전체 취소 내역 불러오기
	public List<MngCancelDomain> selectAllCancel(){
		List<MngCancelDomain> allCancelList = new ArrayList<MngCancelDomain>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		allCancelList=session.selectList("kr.co.salad.mngCancelMapper.selectAllCancel",allCancelList);
		mbh.closeHandler(session);	
		System.out.println(allCancelList); 
		
		return allCancelList;
	}//
	
	//메인 카테고리 얻기 ( 검색 안쓰기로 함 )
//	public List<MngCancelDomain> selectMainCate() {
//		List<MngCancelDomain> mainCateList = new ArrayList<MngCancelDomain>();
//	
//	//MyBatis Handler 얻기
//	MyBatisHandler mbh=MyBatisHandler.getInstance();
//	SqlSession session=MyBatisHandler.getInstance().getHandler();
//	
//	mainCateList=session.selectList("kr.co.salad.mngCancelMapper.selectMainCateList",mainCateList);
//
//	mbh.closeHandler(session);	
//	//System.out.println(mainCateList); 
//	return mainCateList;
//	}//
	
	//서브 카테고리 얻기 ( 검색 안쓰기로 함 )
//	public List<MngCancelDomain> selectSubCate(MngCancelVO cancelVO){
//		List<MngCancelDomain> subCateList = new ArrayList<MngCancelDomain>();
//		
//		//cancelVO.setMainCateNum(1);
//		
//		MngCancelVO mngCVO = 
//				new MngCancelVO (cancelVO.getMainCateNum(), cancelVO.getSubCateNum(), 0, 0, 0, 0,
//						0, 0, 0, null, null, null,
//						null, null); 
//		System.out.println(mngCVO+"\n");
//		
//		//MyBatis Handler 얻기
//		MyBatisHandler mbh=MyBatisHandler.getInstance();
//		SqlSession session=MyBatisHandler.getInstance().getHandler();
//		
//		subCateList=session.selectList("kr.co.salad.mngCancelMapper.selectSubCateList",mngCVO);
//		session.commit();
//		mbh.closeHandler(session);
//		System.out.println(subCateList); 
//		
//		return subCateList;
//	}//
	
	//취소요청, 확정 / 메인카테,서브카테로 검색한 내용 ( 검색 안쓰기로 함 )
//	public List<MngCancelDomain> selectCancelMember(MngCancelVO cancelVO){
//		List<MngCancelDomain> cancelList = new ArrayList<MngCancelDomain>();
//		
//		//cancelVO.setSubCateNum(8);
//		
//		MngCancelVO mngCVO = 
//				new MngCancelVO (cancelVO.getMainCateNum(), cancelVO.getSubCateNum(), 0, 0, 0, 0,
//						0, 0, 0, null, null, null,
//						null, null); 
//		System.out.println(mngCVO+"\n");
//		
//		//MyBatis Handler 얻기
//		MyBatisHandler mbh=MyBatisHandler.getInstance();
//		SqlSession session=MyBatisHandler.getInstance().getHandler();
//		
//		cancelList = session.selectList("kr.co.salad.mngCancelMapper.selectCancelList",cancelVO);
//		session.commit();
//		mbh.closeHandler(session);
//		System.out.println(cancelList); 
//		
//		return cancelList;
//	}//
	
	//취소 요청을 취소 확정으로 바꾸기 5 => 6 
	public int updateCancelStatic(int orderNum) {
		int chOrderStatus = 0;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		chOrderStatus=session.update("kr.co.salad.mngCancelMapper.changeCancelList",orderNum);
		System.out.println("이게 뭔가요?"+chOrderStatus);
		if(chOrderStatus == 1 ) { //변경이 되었다면 1이 무슨 값일까?
			System.out.println("dao : 취소 확정으로 변경 완료");
			session.commit();
		} else {
			System.out.println("dao : 취소 확정으로 변경 실패");
		}
		mbh.closeHandler(session);
		System.out.println(chOrderStatus);

		return chOrderStatus;
	}//
	
	//검색 창에 NAME&날짜&주문번호 검색
	public List<MngCancelDomain> selectCancelList(MngCancelVO cancelVO){
		List<MngCancelDomain> searchList = new ArrayList<MngCancelDomain>();
		
		
		//cancelVO.setName(null);
		//cancelVO.setSearch("2022");
		//cancelVO.setOrderDate("20");
		//cancelVO.setOrderNum(0);
		
//		MngCancelVO mngCVO = 
//				new MngCancelVO (0, 0,0, 0, 0, 0,
//						0, 0, 0, null, cancelVO.getSearch(), null,
//						null, null); 
//		System.out.println(mngCVO+"\n");
		 
		
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		searchList=session.selectList("kr.co.salad.mngCancelMapper.searchCancelMember",cancelVO);
		session.commit();
		mbh.closeHandler(session);
		System.out.println(searchList);
		
		return searchList;
	}//
	
	//취소 상세정보 얻기
	public MngCancelDomain selectOrderDetail (int orderNum) {
		MngCancelDomain cancelOrder = new MngCancelDomain();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		cancelOrder=session.selectOne("kr.co.salad.mngCancelMapper.selectCancelOrder",orderNum);
		session.commit();
		mbh.closeHandler(session);
		System.out.println(cancelOrder);
		
		return cancelOrder;
	}//
	
	//페이치 총 개수 
	public int selectCancelListCount(MngCancelVO cancelVO) {
		int pageCnt=0;
				
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
				
		//쿼리실행
		pageCnt=session.selectOne("kr.co.salad.mngCancelMapper.selectCancelPage",cancelVO);
		if(pageCnt!=0) { //페이지수가 있다면
			System.out.println("총 페이지수 "+pageCnt);
			System.out.println("총 페이지수 "+cancelVO);
			session.commit();
		}else {
			System.out.println("페이지없음");
		}
				
		//Handler 종료
		mbh.closeHandler(session);		
		return pageCnt;
	}//
	
	public static void main(String[] args) {
		MngCancelDAO cancelDAO = new MngCancelDAO();
		MngCancelVO cancelVO = new MngCancelVO();
		//cancelDAO.selectAllCancel();
		//cancelDAO.selectMainCate();
		//cancelDAO.selectSubCate(cancelVO);
		//cancelDAO.selectCancelMember(cancelVO);	
		//cancelDAO.updateCancelStatic(1);
		//cancelDAO.selectCancelList("홍");	
		//cancelDAO.selectOrderDetail(1);
	}//static
	
}//class
