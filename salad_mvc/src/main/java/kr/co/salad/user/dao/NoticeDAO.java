package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.NoticeDomain;
import kr.co.salad.user.vo.NoticeVO;

@Component
public class NoticeDAO {
	
private static NoticeDAO noDao;
	
	private NoticeDAO() {
	}//NoticeDAO
	
	public static NoticeDAO getInstance() {
		if(noDao == null) {
			noDao=new NoticeDAO();
		}//if
		return noDao;
	}//getInstance
	

	//�������׸���Ʈ
	public List<NoticeDomain> selectNotice(NoticeVO noVO){
		List<NoticeDomain> noDomain = new ArrayList<NoticeDomain>();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		noDomain=session.selectList("kr.co.salad.user.NoticeMapper.selectNotiList",noVO);
		if(noDomain!=null) { 
			System.out.println("��������"+noDomain);
			session.commit();
		}else {
			System.out.println("���������� �����ϴ�.");
		}//if
			
		mbh.closeHandler(session);
		return noDomain;
		}//selectNotice
		
	//�������� �󼼺���
	public NoticeDomain selectNoticeDetail(int notiNum) {
		NoticeDomain noDomain=new NoticeDomain();
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		noDomain=session.selectOne("kr.co.salad.user.NoticeMapper.selectNotiDetail",notiNum);
		if(noDomain!=null) { 
			System.out.println("�������� �󼼺��� "+ noDomain);
			session.commit();
		}else {
			session.rollback();
			System.out.println("���������� �����ϴ�.");
		}//if
			
		mbh.closeHandler(session);
		return noDomain;
		}//selectNoticeDetail

	    
    //�� ������ ��
	public int selectNotiListCount(NoticeVO noVO) {
	    int pageCnt=0;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
			
		pageCnt=session.selectOne("kr.co.salad.user.NoticeMapper.selectTotalPage",noVO);
		if(pageCnt!=0) { 
			System.out.println("�� �������� "+pageCnt);
			session.commit();
		}else {
			System.out.println("�������� �����ϴ�.");
		}//if
			
		mbh.closeHandler(session);
		return pageCnt;
	 }//selectNotiListCount
	    
	 //�������� ��ȸ��
	public int updateNotiCount(int notiNum) {
		int hitsCnt=0;
		
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		hitsCnt=session.update("kr.co.salad.user.NoticeMapper.updateNotiCount", notiNum);
		
		if(hitsCnt != 0) {
			session.commit();
			System.out.println("�ı� "+notiNum+"�� ��ȸ�� ����");
		}else {
			System.out.println("�ı� "+notiNum+"���� �����ϴ�.");
		}//if
		mbh.closeHandler(session);
		return hitsCnt;
	}
}
