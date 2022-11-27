package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
	
	public int selectMyTotalCnt(Map<String, Object> map) {//���� ��� ����Ʈ �� �� ��
		int rowCnt=0;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		rowCnt=ss.selectOne("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyCcTotalCnt", map);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return rowCnt;
	}//selectMyCcTotalCnt
	
	public List<MyCancelDomain> selectMyOrderList(Map<String, Object> map) { //���� ��� ��� ����Ʈ
		List<MyCancelDomain> list=new ArrayList<MyCancelDomain>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyCancelList", map);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectMyCancelList
	
	public List<MyCancelDomain> selectMyOrderDetailList(MyCancelVO mcVO) { //���� �ֹ� ��� ����Ʈ
		List<MyCancelDomain> list=new ArrayList<MyCancelDomain>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyCcOrderList", mcVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectMyOrderList
	
	public String selectCcExistAddrFlag(MyCancelVO mcVO) { //���� ����� �� ����
		String existAddrFlag="0";//0: �⺻ �����, 1: �����
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		existAddrFlag=ss.selectOne("kr.co.salad.user.dao.mapper.MyCancelMapper.selectCcExistAddrFlag", mcVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return existAddrFlag;
	}//selectCcExistAddrFlag
	
	public CcMemberDomain selectMyInfoDetail(MyCancelVO mcVO) { //���� ȸ�� ����
		CcMemberDomain cmDomain=new CcMemberDomain();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//��������
		cmDomain=ss.selectOne("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyInfoDetail", mcVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return cmDomain;
	}//selectMyInfoDetail
	
	public CcDeliveryDomain selectMyCcDeliDetail(MyCancelVO mcVO) { //���� ����� �� ����
		CcDeliveryDomain cdDomain=new CcDeliveryDomain();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//��������
		cdDomain=ss.selectOne("kr.co.salad.user.dao.mapper.MyCancelMapper.selectMyCcDeliDetail", mcVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return cdDomain;
	}//selectDeliveryDetail
	
}//class
