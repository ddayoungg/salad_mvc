package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import kr.co.salad.user.vo.MemberVO;
import kr.co.salad.dao.handler.MyBatisHandler;

@Component
public class MemberDAO {
	
	//�α��� ����
	public String selectLogin(MemberVO mVO) {
		String name="";
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		MyBatisHandler mbh=MyBatisHandler.getInstance();

		SqlSession session=mbh.getHandler();
		//��������
		MemberVO resultVO=session.selectOne("kr.co.salad.user.memberMapper.selectLogin", mVO);
		if(resultVO==null) {
			name="";
		}else {
			System.out.println(resultVO.getPass());
			if(passEncoder.matches(mVO.getPass(), resultVO.getPass())) { //��ȣȭ�� ��й�ȣ�� �Է��� ��й�ȣ ��
				System.out.println("ȸ������ ����");
				name=resultVO.getName();
				session.commit();
			}else {
				System.out.println("ȸ������ ����");
			}
		}
		
		
		//Handler ����
		mbh.closeHandler(session);
		
		return name;
	}
	
	//ȸ������ �߰�
	public boolean insertJoin(MemberVO mVO) {
		
		boolean joinFlag=false;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//��������
		int mCnt=session.insert("kr.co.salad.user.memberMapper.insertMember", mVO);
		if(mCnt==1) { //select ���� �־� 
			System.out.println("ȸ���߰�");
			joinFlag=true;
			session.commit();
		}else {
			System.out.println("ȸ���߰� ����");
		}
		
		//Handler ����
		mbh.closeHandler(session);
		
		
		return joinFlag;
	}
	
	//���̵�ã�� 
	public String selectFindIdChk(MemberVO mVO) {
		String id=null;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//��������
		String findID=session.selectOne("kr.co.salad.user.memberMapper.selectId", mVO);
		if(findID!=null) { //ã�� ���̵� �ִ�
			System.out.println("ã�� ���̵� "+findID);
			id=findID;
			session.commit();
		}else {
			System.out.println("���̵� ã�� ����");
		}
		
		//Handler ����
		mbh.closeHandler(session);
			
		return id;
	}
	
	//�ߺ����̵�üũ
	public int selectIdChk(String id) {
		int idChk=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//��������
		String findID=session.selectOne("kr.co.salad.user.memberMapper.selectIdChk", id);
		if(findID!=null) { //ã�� ���̵� �ִ�
			idChk=1;
			session.commit();
		}else {
		}
		
		//Handler ����
		mbh.closeHandler(session);
		
		return idChk;
				
		
	}
	
	//��й�ȣ ã�� ȸ��Ȯ��
	public boolean selectFindPassChk(MemberVO mVO) {
		boolean pwChFlag=false;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//��������
		String findID=session.selectOne("kr.co.salad.user.memberMapper.selectMemCh", mVO);
		if(findID!=null) { //ã�� ���̵� �ִ�
			System.out.println("ȸ��Ȯ�� �Ϸ�");
			pwChFlag=true;
			session.commit();
		}else {
			System.out.println("ȸ��Ȯ�� ����");
		}
		
		//Handler ����
		mbh.closeHandler(session);
				
		return pwChFlag;
	}
	
	//��й�ȣ ����
	public int updatePassReser(MemberVO mVO) {
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		
		
		SqlSession session=mbh.getHandler();
		
		//��������
		int upCnt=session.update("kr.co.salad.user.memberMapper.updateMemCh", mVO);
		if(upCnt==1) { //����� ��й�ȣ
			System.out.println("��й�ȣ ���� �Ϸ�");
			upCnt=1;
			session.commit();
		}else {
			System.out.println("��й�ȣ ���� ����");
		}
		
		//Handler ����
		mbh.closeHandler(session);	
					
		return upCnt; //����Ϸ�
	}
	

}
