package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngNoticeDomain;
import kr.co.salad.manager.vo.MngNoticeVO;

@Component
public class MngNoticeDAO {
	
private static MngNoticeDAO mnDao;
	
	private MngNoticeDAO() {
		
	}//MngNoticeDAO
	
	public static MngNoticeDAO getInstance() {
		if(mnDao == null) {
			mnDao=new MngNoticeDAO();
		}//end if
		return mnDao;
	}//getInstance
	

	//�˻�,��ü����Ʈ
		public List<MngNoticeDomain> selectNotice(MngNoticeVO mnVO){
			List<MngNoticeDomain> mnDomain = new ArrayList<MngNoticeDomain>();
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			mnDomain=session.selectList("kr.co.salad.manager.NotiMangerMapper.selectNotiList",mnVO);
			if(mnDomain!=null) { //�������ױ��� �ִٸ�
				System.out.println("�������ױ۵� "+mnDomain);
				session.commit();
			}else {
				System.out.println("�������׾���");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
			return mnDomain;
		}
		
		//�������� �󼼺���
		public MngNoticeDomain selectNoticeDetail(int notiNum) {
			MngNoticeDomain mnDomain=new MngNoticeDomain();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			mnDomain=session.selectOne("kr.co.salad.manager.NotiMangerMapper.selectNotiDetail",notiNum);
			if(mnDomain!=null) { //�������ױ��� �ִٸ�
				System.out.println("�������� �󼼺��� "+mnDomain);
				session.commit();
			}else {
				session.rollback();
				System.out.println("���������� ����");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
			return mnDomain;
		}
		
		//�������� �۾���
		public void insertNotice(MngNoticeVO mnVO) {
			int writeFlag=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			writeFlag=session.insert("kr.co.salad.manager.NotiMangerMapper.insertNoti",mnVO);
			if(writeFlag==1) { //�������ױ� �߰��Ǿ��ٸ�
				System.out.println("�������� �߰� ");
				session.commit();
			}else {
				System.out.println("�������� �߰� ����");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
		}
		
		//�������� �� �����ϱ�
		public int updateNotice(MngNoticeVO mnVO) {
			int updateFlag=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			updateFlag=session.update("kr.co.salad.manager.NotiMangerMapper.updateNoti",mnVO);
			if(updateFlag==1) { //�������ױ� �����Ǿ��ٸ�
				System.out.println("�������� ���� ");
				session.commit();
			}else {
				System.out.println("�������� ���� ����");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			return updateFlag;//1�� �����Ϸ� 0����������
		}
		
		//�������� �� ����
	    public int deleteNotice(int notiNum) {
	    	
	    	int deleteFlag=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			deleteFlag=session.delete("kr.co.salad.manager.NotiMangerMapper.deleteNoti",notiNum);
			if(deleteFlag==1) { //�������ױ� �����Ǿ��ٸ�
				System.out.println("�������� ���� ");
				session.commit();
			}else {
				System.out.println("�������� ���� ����");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			return deleteFlag;//1�� �������� 0�� ��������
	    }
	    
    
	    //�� ������ ��
	    public int selectNotiListCount(MngNoticeVO mnVO) {
	    	
	    	int pageCnt=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			pageCnt=session.selectOne("kr.co.salad.manager.NotiMangerMapper.selectTotalPage",mnVO);
			if(pageCnt!=0) { //���������� �ִٸ�
				System.out.println("�� �������� "+pageCnt);
				session.commit();
			}else {
				System.out.println("����������");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
			return pageCnt;
	    }
}
