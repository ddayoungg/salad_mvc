package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.MyRevDomain;
import kr.co.salad.user.vo.MyRevVO;

@Component
public class MyRevDAO {
	
private static MyRevDAO mrDao;
	
	private MyRevDAO() {
		
	}//MngNoticeDAO
	
	public static MyRevDAO getInstance() {
		if(mrDao == null) {
			mrDao=new MyRevDAO();
		}//end if
		return mrDao;
	}//getInstance	
	
	//����Ʈ ��ü ���
	public int selectMyRevCount(String id) { 
		int pageCnt=0;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		pageCnt=session.selectOne("kr.co.salad.user.MyRevMapper.selectTotalPage", id);
		if(pageCnt!=0) { 
			System.out.println("�� �������� "+ pageCnt);
			session.commit();
		}else {
			System.out.println("����������");
		}//if
				
		mbh.closeHandler(session);
		return pageCnt;
	}
	
	
	
	//�����ı� ����Ʈ,�˻� 
	public List<MyRevDomain> selectMyRevList(MyRevVO mrVO){
		List<MyRevDomain> mrDomain=new ArrayList<MyRevDomain>();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		
		mrDomain=session.selectList("kr.co.salad.user.MyRevMapper.selectRevList",mrVO);
		if(mrDomain!=null) { 
			System.out.println("���� �ı� "+ mrDomain);
		}else {
			System.out.println("���� �ıⰡ �����ϴ�.");
		}
		
		mbh.closeHandler(session);
		return mrDomain;
	}
	
	//�ı�󼼺���
	public MyRevDomain selectMyRevDetil(int revNum) {
		MyRevDomain mrDomain=new MyRevDomain();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		mrDomain=session.selectOne("kr.co.salad.user.MyRevMapper.selectRevDetail", revNum);
		
		List<String> revImg=session.selectList("kr.co.salad.user.MyRevMapper.selectRevImg", revNum);
		mrDomain.setRevImg(revImg);
		if(mrDomain!=null) { 
			System.out.println("���� �ı� �󼼺��� "+ mrDomain);
			session.commit();
		}else {
			session.rollback();
			System.out.println("���� �ıⰡ �����ϴ�.");
		}
		
		mbh.closeHandler(session);
		return mrDomain;
	}
	
//	//�ı� �����ϱ�
//	public int updateMyRev(MyRevVO mrVO) {
//		int updateFlag=0;
//		MyBatisHandler mbh=MyBatisHandler.getInstance();
//		SqlSession session=mbh.getHandler();
//		
//		updateFlag=session.update("kr.co.salad.user.MyRevMapper.updateNoti",mrVO);
//		if(updateFlag==1) { 
//			System.out.println("���� �ı� ���� ");
//			session.commit();
//		}else {
//			System.out.println("���� �ı� ���� ����");
//		}
//		
//		mbh.closeHandler(session);
//		return updateFlag;
//	}
	
//	//�ı� �����ϱ�
//	public int deleteMyRev(int revNum) {
//		System.out.println("Ȯ��1");
//		int deleteFlag=0;
//		int deleteImgFlag=0;
//		
//		MyBatisHandler mbh=MyBatisHandler.getInstance();
//		SqlSession session=mbh.getHandler();
//		
//		
//		deleteImgFlag=session.delete("kr.co.salad.user.MyRevMapper.deleteImgRev", revNum);
//		deleteFlag=session.delete("kr.co.salad.user.MyRevMapper.deleteRev", revNum);
//		if(deleteImgFlag!=0) { //������ �ı��̹����� �ִ°�� 
//			System.out.println("������ �̹����� �ֽ��ϴ�.");
//			session.commit();
//		}else {
//			session.rollback();
//			System.out.println("�̹����� �����ϴ�.");
//		}
//		
//		mbh.closeHandler(session);
//		return deleteFlag; //1�� �����Ϸ�, 0�� ��������
//	}
	
	 //���� �ı� ��ȸ��
	public int updateMyRevCount(int revNum) {
		int hitsCnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		hitsCnt=session.update("kr.co.salad.user.MyRevMapper.updateMyRevCount", revNum);
		
		if(hitsCnt != 0) {
			session.commit();
			System.out.println("�ı� "+revNum+"�� ��ȸ�� ����");
		}else {
			System.out.println("�ı� "+revNum+"���� �����ϴ�.");
		}//if
		mbh.closeHandler(session);
		return hitsCnt;
	}
	

}
