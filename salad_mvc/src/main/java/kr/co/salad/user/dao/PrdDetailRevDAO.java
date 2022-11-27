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
	
	public List<String> selectRevImgList(int revNum) { // �ı� �̹��� ����Ʈ
		List<String> list=null;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		System.out.println(ss);
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevImgList", revNum);
						
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
				
		return list;
	}//selectBestRevImgList
	
	public List<PrdDetailRevDomain> selectBestRevList(int prdNum) { //����Ʈ �ı� ����Ʈ
		List<PrdDetailRevDomain> list=null;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
				
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectBestRevList", prdNum);
				
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectBestRevLis
	
	public int selectRevTotalCount(int prdNum) {//(��ǰ��ȣ, �ֽż�/��ŷ��)
		int totalCnt=0;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//��������
		totalCnt=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevTotalCount", prdNum);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return totalCnt;
	}//selectRevTotalCount
	
	public List<PrdDetailRevDomain> selectRevList(PrdDetailRevVO rVO) {
		List<PrdDetailRevDomain> list=new ArrayList<PrdDetailRevDomain>();
		
		System.out.println(rVO.getSortType() + " / " + rVO.getOrderBy());//�ֽż�,��ŷ��/��������,��������
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevList", rVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectRevList
	
	public int updateRevHits(int revNum) { //�ı� ��ȸ�� ����
		int cnt=0;
		
		//1. MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		//2. ������ ����
		cnt=session.update("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.updateRevHits", revNum);
		if(cnt != 0) {
			session.commit();
			System.out.println("�ı� "+revNum+"�� ��ȸ�� �����Ǿ����ϴ�.");
		}else {
			session.rollback();
			System.out.println("�ı� "+revNum+"���� �������� �ʽ��ϴ�.");
		}//end else
		
		//3. MyBatis Handler ����
		mbh.closeHandler(session);
		
		return cnt;
	}//updateRevHits
	
	public PrdDetailRevDomain selectRevDetail(int revNum) {
		PrdDetailRevDomain rDomain=new PrdDetailRevDomain();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
				
		//��������
		rDomain=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevDetail", revNum);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return rDomain;
	}//selectRevDetail
	
	public int selectRevWriteOrderNum(PrdDetailRevVO rVO) { //�ı� �ۼ� ���� ����
		int orderNum=0;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//��������
		orderNum=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectRevWriteOrderNum", rVO);
		if(orderNum!=0) {//�ֹ��� ������ ���� ���
			System.out.println("�ֹ� ������ �����մϴ�.");
		}//end if
		
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return orderNum;
	}//selectRevFlag
	
	public int selectLastRevNum() {
		int revNum=1;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		try {
			revNum=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.selectLastRevNum");
		}catch (NullPointerException npe) {
			revNum=0;
		}//end catch
		
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return revNum;
	}//selectLastRevNum
	
	public void insertRevWrite(PrdDetailRevVO rVO) {
		int lastRevNum=0;
		
		PrdDetailRevDAO pdrDAO=new PrdDetailRevDAO();
		
		lastRevNum=pdrDAO.selectLastRevNum();
		
		rVO.setRevNum(lastRevNum+1);
		
		//1. MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		boolean commitFlag=true;
		//2. ������ ����
		int rowCnt=session.insert("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.insertRevWrite", rVO);
		rowCnt+=session.update("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.updateRevWrite", rVO);
		if(rowCnt != 0) {
			System.out.println("�����Ͱ� �߰� �Ǿ����ϴ�.");
		}else {
			System.out.println("������ �߰� �����߽��ϴ�.");
			commitFlag=false;
		}//end else
		int revImgCnt=0;
		if(rVO.getRevImgList()!=null) {
			for(String revImg : rVO.getRevImgList()) {
				rVO.setRevImg(revImg);
				revImgCnt=session.insert("kr.co.salad.user.dao.mapper.PrdDetailRevMapper.insertRevImgWrite", rVO);
				if(revImgCnt != 0) {
					System.out.println("�����Ͱ� �߰� �Ǿ����ϴ�.");
				}else {
					System.out.println("������ �߰� �����߽��ϴ�.");
					commitFlag=false;
				}//end else
			}//end for
		}//end if
		
		if(commitFlag) {//Ʈ�����
			session.commit();
		}else {
			session.rollback();
		}//end if
		
		//3. MyBatis Handler ����
		mbh.closeHandler(session);
		
	}//insertRevWrite
	
}//class
