package kr.co.salad.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MyDeliDAO;
import kr.co.salad.user.domain.MyDeliDomain;
import kr.co.salad.user.vo.MyDeliVO;

@Component
public class MyDeliService {
	
	@Autowired(required = false)
	private MyDeliDAO mdDAO;
	
	//����� ���� �˻�
	public MyDeliDomain searchDeli(String id) {
		MyDeliDomain mdDomain=mdDAO.selectDeli(id);
		return mdDomain;
	}
	
	//����� ���� ����
	public int editDeli(MyDeliVO mdVO) {
		int updateFlag=0; //1�� ����Ϸ� 0�� ����
		updateFlag=mdDAO.updateDeli(mdVO);
		return updateFlag;
	}

}
