package kr.co.salad.user.dao;

import java.util.ArrayList;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.CcDeliveryDomain;
import kr.co.salad.user.domain.CcMemberDomain;
import kr.co.salad.user.domain.MyOrderDomain;
import kr.co.salad.user.vo.MyOrderVO;
@Component
public class MyOrderDAO {
	
	public int selectMyCcTotalCnt(String id) {//���� ��� ����Ʈ �� �� ��
		int rowCnt=0;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		rowCnt=ss.selectOne("kr.co.salad.user.dao.mapper.MyOrderMapper.selectMyCcTotalCnt", id);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return rowCnt;
	}//selectMyCcTotalCnt
	
	public List<MyOrderDomain> selectMyOrderList(MyOrderVO mcVO) { //���� ��� ��� ����Ʈ
		List<MyOrderDomain> list=new ArrayList<MyOrderDomain>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.MyOrderMapper.selectMyOrderList", mcVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		System.out.println("list : "+list);
		return list;
	}//selectMyCancelList
	
	public List<MyOrderDomain> selectMyCcOrderList(MyOrderVO mcVO) { //���� �ֹ� ��� ����Ʈ
		List<MyOrderDomain> list=new ArrayList<MyOrderDomain>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.MyOrderMapper.selectMyCcOrderList", mcVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectMyCcOrderList
	
	public String selectCcExistAddrFlag(MyOrderVO mcVO) { //���� ����� �� ����
		String existAddrFlag="0";//0: �⺻ �����, 1: �����
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		existAddrFlag=ss.selectOne("kr.co.salad.user.dao.mapper.MyOrderMapper.selectCcExistAddrFlag", mcVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return existAddrFlag;
	}//selectCcExistAddrFlag
	
	public CcMemberDomain selectMyInfoDetail(MyOrderVO mcVO) { //���� ȸ�� ����
		CcMemberDomain cmDomain=new CcMemberDomain();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//��������
		cmDomain=ss.selectOne("kr.co.salad.user.dao.mapper.MyOrderMapper.selectMyInfoDetail", mcVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return cmDomain;
	}//selectMyInfoDetail
	
	public CcDeliveryDomain selectMyCcDeliDetail(MyOrderVO mcVO) { //���� ����� �� ����
		CcDeliveryDomain cdDomain=new CcDeliveryDomain();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//��������
		cdDomain=ss.selectOne("kr.co.salad.user.dao.mapper.MyOrderMapper.selectMyCcDeliDetail", mcVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return cdDomain;
	}//selectDeliveryDetail
	
}//class
