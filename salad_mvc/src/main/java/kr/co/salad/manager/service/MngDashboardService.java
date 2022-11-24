package kr.co.salad.manager.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngDashboardDAO;

@Component
public class MngDashboardService {
	
	@Autowired(required = false)
	private MngDashboardDAO mngDashDao;
	
	//����, �̹��� ���� �ݾ�
	/*
	 * �ֹ�����(order_status)�� ��޿Ϸ��� �ֹ� �ݾ� (order_total_price) �÷� ��ü ��� �޼ҵ�
	 */
	public int searchTotalPrice(String payDay) {
		int pay = 0;
		
		pay=mngDashDao.selectTotalPrice(payDay);
		
		return pay;
	}//
	
	//����, �̹��� �ֹ� �Ǽ�
	/*
	 * �ֹ�����(order_status)�� �����Ϸ��� �ֹ� ��ȣ (order_num) �÷� ���� �޼ҵ�
	 */
	public int searchTotalOrder(String orderDay) {
		int order = 0;
		
		order=mngDashDao.selectTotalOrder(orderDay);
		
		return order;
	}//
	
	//��,����,Ż�� ȸ�� ��
	/*
	 * ����(out_flag)�� 0,1�� �̿��Ͽ� ���̵� (id) �÷� ���� �޼ҵ�
	 */
	public int searchTotalMember(String memberStatus) {
		int memberCnt=0;
		
		memberCnt=mngDashDao.selectTotalMember(memberStatus);
		
		return memberCnt;
	}//
	
	//�亯,�̴亯 �ı� ��
	/*
	 * ����(qna_a_flag)�� 0,1�� ����Ͽ� �ı� ��ȣ (qna_num) �÷� ���� �޼ҵ�
	 */
	public int searchTotalAnswer(String answerStatus) {
		int answerCnt=0;
		
		answerCnt=mngDashDao.selectTotalAnswer(answerStatus);
		
		return answerCnt;
	}//
	
	//���� ī�װ��� �Ǹ� ��
	/*
	 * ����(order_status) 0�� ����Ͽ� (���� ī�װ� �̸�) main_cate_name �÷� ���� �޼ҵ�
	 */
	public int searchCategorySale(String category) {
		int categoryCnt=0;
		
		categoryCnt=mngDashDao.selectCategorySale(category);
		
		return categoryCnt;
	}//
}
