package kr.co.salad.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngDashboardDAO;

@Component
public class MngDashboardService {
	
	@Autowired(required = false)
	private MngDashboardDAO mngDashDao;
	
	//오늘, 이번달 정산 금액
	/*
	 * 주문상태(order_status)가 배달완료인 주문 금액 (order_total_price) 컬럼 전체 계산 메소드
	 */
	public int searchTotalPrice(String payDay) {
		int pay = 0;
		
		pay=mngDashDao.selectTotalPrice(payDay);
		
		return pay;
	}//
	
	//오늘, 이번달 주문 건수
	/*
	 * 주문상태(order_status)가 접수완료인 주문 번호 (order_num) 컬럼 갯수 메소드
	 */
	public int searchTotalOrder(String orderDay) {
		int order = 0;
		
		order=mngDashDao.selectTotalOrder(orderDay);
		
		return order;
	}//
	
	//총,가입,탈퇴 회원 수
	/*
	 * 상태(out_flag)가 0,1을 이용하여 아이디 (id) 컬럼 갯수 메소드
	 */
	public int searchTotalMember(String memberStatus) {
		int memberCnt=0;
		
		memberCnt=mngDashDao.selectTotalMember(memberStatus);
		
		return memberCnt;
	}//
	
	//답변,미답변 후기 수
	/*
	 * 상태(qna_a_flag)가 0,1을 사용하여 후기 번호 (qna_num) 컬럼 갯수 메소드
	 */
	public int searchTotalAnswer(String answerStatus) {
		int answerCnt=0;
		
		answerCnt=mngDashDao.selectTotalAnswer(answerStatus);
		
		return answerCnt;
	}//
	
	//메인 카테고리별 판매 수
	/*
	 * 상태(order_status) 0을 사용하여 (메인 카테고리 이름) main_cate_name 컬럼 갯수 메소드
	 */
	public int searchCategorySale(String category) {
		int categoryCnt=0;
		
		categoryCnt=mngDashDao.selectCategorySale(category);
		
		return categoryCnt;
	}//
}
