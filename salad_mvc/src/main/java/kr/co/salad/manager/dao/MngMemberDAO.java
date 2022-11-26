package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngMemberDomain;
import kr.co.salad.manager.vo.MngMemberVO;
import kr.co.salad.user.domain.PrdDetailRevDomain;
import kr.co.salad.user.vo.PrdDetailRevVO;
@Component
public class MngMemberDAO {
	
	public int selectMemberTotalCount(MngMemberVO mmVO) {//��ü ȸ�� ����Ʈ �� �� �� ��ü ȸ�� ��, ���� ��, Ż�� ��
		int totalCnt=0;
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//��������
		totalCnt=ss.selectOne("kr.co.salad.manager.dao.mapper.MngMemberMapper.selectMemberTotalCount", mmVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return totalCnt;
	}//selectMemberTotalCount
	
	public List<MngMemberDomain> selectMemberList(MngMemberVO mmVO) {//ȸ�� ���� ����Ʈ
		List<MngMemberDomain> list=new ArrayList<MngMemberDomain>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngMemberMapper.selectMemberList", mmVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectMemberList
	
	public MngMemberDomain selectMemberDetail(String id) {//ȸ�� �� ����
		MngMemberDomain mmDomain=new MngMemberDomain();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
				
		//��������
		mmDomain=ss.selectOne("kr.co.salad.manager.dao.mapper.MngMemberMapper.selectMemberDetail", id);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return mmDomain;
	}//selectMemberDetail
	
	public int updateMemberOut(MngMemberVO mmVO) { //ȸ�� Ż��
		int cnt=0;
		
		boolean commitFlag=true;
		//1. MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		//2. ������ ����
		int upCnt=session.update("kr.co.salad.manager.dao.mapper.MngMemberMapper.updateMemberOut", mmVO.getId());
		if(upCnt != 0) {
			cnt++;
			System.out.println("���̵� "+mmVO.getId()+"�� Ż�� �Ǿ����ϴ�.");
		}else {
			System.out.println("���̵� "+mmVO.getId()+"�� Ż�� ���� �ʾҽ��ϴ�.");
			commitFlag=false;
		}//end else
		
		//2. ������ ����
		int inserCnt=session.insert("kr.co.salad.manager.dao.mapper.MngMemberMapper.insertMemberOut", mmVO);
		if(inserCnt != 0) {
			cnt++;
			System.out.println("�����Ͱ� �߰� �Ǿ����ϴ�.");
		}else {
			System.out.println("������ �߰� �����߽��ϴ�.");
			commitFlag=false;
		}//end else
		
		if(commitFlag) {//Ʈ�����
			session.commit();
		}else {
			session.rollback();
		}//end if
		
		//3. MyBatis Handler ����
		mbh.closeHandler(session);
		
		return cnt;
	}//updateMemberOut
	
}//class
