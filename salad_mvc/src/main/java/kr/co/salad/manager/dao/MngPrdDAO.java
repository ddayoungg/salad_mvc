package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngMemberDomain;
import kr.co.salad.manager.domain.MngPrdDomain;
import kr.co.salad.manager.vo.MngMemberVO;
import kr.co.salad.manager.vo.MngPrdVO;
import kr.co.salad.user.dao.PrdDetailRevDAO;
import kr.co.salad.user.domain.PrdDetailRevDomain;
import kr.co.salad.user.vo.PrdDetailRevVO;
@Component
public class MngPrdDAO {
	
	public int selectPrdTotalCount(MngPrdVO mpVO) {//��ü ��ǰ �� �� �� ��ǰ ����Ʈ �� ��
		int totalCnt=0;
		System.out.println(mpVO);
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//��������
		totalCnt=ss.selectOne("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdTotalCount", mpVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return totalCnt;
	}//selectPrdTotalCount
	
	public List<MngPrdDomain> selectMainCate() {
		List<MngPrdDomain> list =new ArrayList<MngPrdDomain>();
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		System.out.println("���� ī�װ� DAO");
		//��������
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectMainCate");
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectMainCate
	
	public List<MngPrdDomain> selectSubCate(int mainCateNum) {
		List<MngPrdDomain> list =new ArrayList<MngPrdDomain>();
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectSubCate", mainCateNum);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectSubCate
	
	
	public List<MngPrdDomain> selectPrdList(MngPrdVO mpVO) {
		List<MngPrdDomain> list=new ArrayList<MngPrdDomain>();
		
		System.out.println(mpVO.getSubCateNum() + " / " + mpVO.getKeyword());//���� ī�װ� ��ȣ, �˻���
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdList", mpVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdList
	
	public MngPrdDomain selectPrdDetail(int prdNum) {
		MngPrdDomain mpDomain=new MngPrdDomain();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		mpDomain=ss.selectOne("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdDetail", prdNum);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return mpDomain;
	}//selectPrdDetail
	
	public List<String> selectPrdImgList(int prdNum) {//��ǰ �̹���
		List<String> list=new ArrayList<String>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
								
		//��������
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdImgList", prdNum);
								
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdImgList
	
	public List<String> selectPrdBodyImgList(int prdNum) {//��ǰ ���� �̹���
		List<String> list=new ArrayList<String>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdBodyImgList", prdNum);
		
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdBodyImgList
	
	public int selectLastPrdNum() {//��ϵ� ��ǰ ������ ��ȣ
		int prdNum=1;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		prdNum=ss.selectOne("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectLastPrdNum");
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return prdNum;
	}//selectLastPrdNum
	
	public void insertPrd(MngPrdVO mpVO) {
		int lastPrdNum=0;
		
		MngPrdDAO mpDAO=new MngPrdDAO();
		
		lastPrdNum=mpDAO.selectLastPrdNum();
		
		mpVO.setPrdNum(lastPrdNum+1);
		
		//1. MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		boolean commitFlag=true;
		//2. ������ ����
		int rowCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrd", mpVO);
		if(rowCnt != 0) {
			System.out.println("�����Ͱ� �߰� �Ǿ����ϴ�.");
		}else {
			System.out.println("������ �߰� �����߽��ϴ�.");
			commitFlag=false;
		}//end else
		
		int prdImgCnt=0;
		if(mpVO.getPrdImgList()!=null) {
			for(String prdImg : mpVO.getPrdImgList()) {
				mpVO.setPrdImg(prdImg);
				prdImgCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrdImg", mpVO);
				if(prdImgCnt != 0) {
					System.out.println("�����Ͱ� �߰� �Ǿ����ϴ�.");
				}else {
					System.out.println("������ �߰� �����߽��ϴ�.");
					commitFlag=false;
				}//end else
			}//end for
		}//end if
		
		int prdBodyImgCnt=0;
		if(mpVO.getPrdBodyImgList()!=null) {
			for(String prdBodyImg : mpVO.getPrdBodyImgList()) {
				mpVO.setPrdBodyImg(prdBodyImg);
				prdBodyImgCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrdBodyImg", mpVO);
				if(prdBodyImgCnt != 0) {
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
	}//insertPrd
	
	public void updatePrd(MngPrdVO mpVO) {
		
		//1. MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		boolean commitFlag=true;
		//2. ������ ����
		int rowCnt=session.update("kr.co.salad.manager.dao.mapper.MngPrdMapper.updatePrd", mpVO);
		if(rowCnt != 0) {
			System.out.println("�����Ͱ� �߰� �Ǿ����ϴ�.");
		}else {
			System.out.println("������ �߰� �����߽��ϴ�.");
			commitFlag=false;
		}//end else
		
		int prdImgCnt=0;
		
		//DB�� ����� ���� �� �̹��� ���� ����
		prdImgCnt=session.delete("kr.co.salad.manager.dao.mapper.MngPrdMapper.deletePrdImg", mpVO.getPrdNum());
		if(prdImgCnt != 0) {
			System.out.println("�����Ͱ� ���� �Ǿ����ϴ�.");
		}else {
			System.out.println("������ ���� �����߽��ϴ�.");
			commitFlag=false;
		}//end else
		
		//DB�� ���� �� �̹��� ���� ����
		if(mpVO.getPrdImgList()!=null) {
			for(String prdImg : mpVO.getPrdImgList()) {
				mpVO.setPrdImg(prdImg);
				prdImgCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrdImg", mpVO);
				if(prdImgCnt != 0) {
					System.out.println("�����Ͱ� �߰� �Ǿ����ϴ�.");
				}else {
					System.out.println("������ �߰� �����߽��ϴ�.");
					commitFlag=false;
				}//end else
			}//end for
		}//end if
		
		int prdBodyImgCnt=0;
		
		//DB�� ����� ���� �� �̹��� ���� ����
		prdBodyImgCnt=session.delete("kr.co.salad.manager.dao.mapper.MngPrdMapper.deletePrdBodyImg", mpVO.getPrdNum());
		if(prdBodyImgCnt != 0) {
			System.out.println("�����Ͱ� ���� �Ǿ����ϴ�.");
		}else {
			System.out.println("������ ���� �����߽��ϴ�.");
			commitFlag=false;
		}//end else
		
		//DB�� ���� �� �̹��� ���� ����
		if(mpVO.getPrdBodyImgList()!=null) {
			for(String prdBodyImg : mpVO.getPrdBodyImgList()) {
				mpVO.setPrdBodyImg(prdBodyImg);
				prdBodyImgCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrdBodyImg", mpVO);
				if(prdBodyImgCnt != 0) {
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
	}//updatePrd
	
}//class
