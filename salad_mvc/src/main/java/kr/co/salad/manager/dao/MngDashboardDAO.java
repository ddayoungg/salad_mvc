package kr.co.salad.manager.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;

@Component
public class MngDashboardDAO {
		
	//총 정산, 이번달 정산 금액
		/*
		 * 주문상태(order_status)가 배달완료인 주문 금액 (order_total_price) 컬럼 전체 계산 메소드?
		 */
		public int selectTotalPrice(String payDay) {
//			int [] pay = new int[1]; 
//			int totalPay = 2000000;
//			int monthPay = 500000;
//			
//			pay[0]=totalPay;
//			pay[1]=monthPay;
			int pay = 0;
			
			//MyBatis Handler 얻기
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=MyBatisHandler.getInstance().getHandler();
			
			if ( payDay == "month" ) {
			pay = session.selectOne("kr.co.salad.mngDashMapper.selectMonthPay", pay);
			//System.out.println("이번 달"+pay);
			session.commit();
			
			} else if ( payDay == "today") {
			pay = session.selectOne("kr.co.salad.mngDashMapper.selectTodayPay", pay);	
			//System.out.println("오늘"+pay);
			session.commit();
			
			}
			mbh.closeHandler(session);
			return pay;
		}//
		
		//오늘 주문건수, 이번 달 주문건수
		public int selectTotalOrder(String orderDay) {
//			int[]order=new int[1];
//			int totalOrder=50;
//			int monthOrder=10;
//			
//			order[0]=totalOrder;
//			order[1]=monthOrder;
			int order=0;
			
			//MyBatis Handler 얻기
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=MyBatisHandler.getInstance().getHandler();
			
			if ( orderDay == "month" ) {
			order = session.selectOne("kr.co.salad.mngDashMapper.selectMonthOrder", order);
			//System.out.println("이번 달"+order);
			session.commit();
			
			} else if ( orderDay == "today") {
			order = session.selectOne("kr.co.salad.mngDashMapper.selectTodayOrder", order);	
			//System.out.println("오늘"+order);
			session.commit();
			
			}
			mbh.closeHandler(session);
			return order;
		}//
		
		//총,가입,탈퇴 한 회원 수
		public int selectTotalMember(String memberStatus) {
			int memberCnt=0;
			
			//MyBatis Handler 얻기
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=MyBatisHandler.getInstance().getHandler();
			
			if ( memberStatus == "total" ) {
				memberCnt = session.selectOne("kr.co.salad.mngDashMapper.selectTotalMember",memberCnt);
				//System.out.println("총 회원 수"+memberCnt);
				session.commit();
				
				} else if ( memberStatus == "join") {
				memberCnt = session.selectOne("kr.co.salad.mngDashMapper.selectJoinMember",memberCnt);	
				//System.out.println("가입 회원 수"+memberCnt);
				session.commit();
				
				} else if ( memberStatus == "out") {
				memberCnt = session.selectOne("kr.co.salad.mngDashMapper.selectOutMember",memberCnt);	
				//System.out.println("탈퇴 회원 수"+memberCnt);
				session.commit();
				}
			mbh.closeHandler(session);
			return memberCnt;
		}
		
		//메인 카테고리별 판매수
		
		/*
		 * public Map<String,Integer> selectCategorySale(String category){
		 * Map<String,Integer> saleMap = new HashMap<String,Integer>();
		 * 
		 * category = "정기배송"; int categoryCnt = 0;
		 * 
		 * saleMap.put(category,categoryCnt);
		 * 
		 * return saleMap; }//
		 */		 
		
		
		
		  public int selectCategorySale(String category){
			  int categoryCnt=0;
		  
		  //MyBatis Handler 얻기
		  MyBatisHandler mbh=MyBatisHandler.getInstance();
		  SqlSession session=MyBatisHandler.getInstance().getHandler();
		 
		  if ( category == "정기배송" ) { 
			  categoryCnt = session.selectOne("kr.co.salad.mngDashMapper.selectCategorySale",categoryCnt);
			  //System.out.println("정기배송"+categoryCnt); 
			  session.commit(); 
			  
			  } else if ( category == "샐러드" ) {
			  categoryCnt = session.selectOne("kr.co.salad.mngDashMapper.selectCategorySale2",categoryCnt);
			  session.commit();
			  
			  }else if ( category == "간편식" ) {
			  categoryCnt = session.selectOne("kr.co.salad.mngDashMapper.selectCategorySale3",categoryCnt);
			 session.commit();
			 
			  }else if ( category == "닭가슴살&간식" ) {
			  categoryCnt = session.selectOne("kr.co.salad.mngDashMapper.selectCategorySale4",categoryCnt);
			  //ystem.out.println("닭가슴살"+categoryCnt); 
			  session.commit();
			  } 
		  mbh.closeHandler(session);
		  return categoryCnt; 
		  }//
		 	
		
		//후기 답변, 미답변 수
		public int selectTotalAnswer(String answerStatus) {
//			int[] totalAnswer = new int[1];
//			int yesAnswer = 10;
//			int noAnswer = 5;
//			
//			totalAnswer[0]=yesAnswer;
//			totalAnswer[1]=noAnswer;
			int answerCnt=0;
			
			//MyBatis Handler 얻기
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=MyBatisHandler.getInstance().getHandler();
			
			if ( answerStatus == "yesAnswer" ) {
				answerCnt = session.selectOne("kr.co.salad.mngDashMapper.selectYesAnswer", answerCnt);
				session.commit();
				
				} else if ( answerStatus == "noAnswer") {
					answerCnt = session.selectOne("kr.co.salad.mngDashMapper.selectNoAnswer", answerCnt);	
				session.commit();
				
				}
				mbh.closeHandler(session);	
				return answerCnt;
		}//

		public static void main(String[] args) {
			MngDashboardDAO dashDAO = new MngDashboardDAO();
			String payDay = "month";
			dashDAO.selectTotalPrice(payDay);
			
			String OrderDay = "month";
			dashDAO.selectTotalOrder(OrderDay);
			
			String category = "닭가슴살&간식";
			dashDAO.selectCategorySale(category);
		}
}//class
