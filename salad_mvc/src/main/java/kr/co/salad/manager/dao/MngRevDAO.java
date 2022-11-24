package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.vo.MngRevVO;

@Component
public class MngRevDAO {
	
	private static MngRevDAO mrDao;
	
	private MngRevDAO() {
		
	}//MngRevDAO
	
	public static MngRevDAO getInstance() {
		if(mrDao == null) {
			mrDao=new MngRevDAO();
		}//end if
		return mrDao;
	}//getInstance

	
	//�ı���ü,�˻�����Ʈ
		public List<MngRevDomain> selectRevList(MngRevVO mrVO) {
			List<MngRevDomain> mrDomain=new ArrayList<MngRevDomain>();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			mrDomain=session.selectList("kr.co.salad.manager.RevMangerMapper.selectRevList",mrVO);
			if(mrDomain!=null) { //����۵��� �ִٸ�
				System.out.println("����۵� "+mrDomain);
				session.commit();
			}else {
				System.out.println("�������");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
			
			
			return mrDomain;
		}
		
		//�ı� �󼼺���
		public MngRevDomain selectRevDetail(int revNum) {
			MngRevDomain mrDomain=new MngRevDomain();
			
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			mrDomain=session.selectOne("kr.co.salad.manager.RevMangerMapper.selectRevDetail",revNum);
			List<String> revImg=session.selectList("kr.co.salad.manager.RevMangerMapper.selectRevImg", revNum);
			mrDomain.setRevImg(revImg);
			if(mrDomain!=null) { //����۵��� �ִٸ�
				System.out.println("����󼼺��� "+mrDomain);
				session.commit();
			}else {
				session.rollback();
				System.out.println("�������");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
			return mrDomain;
		}
		
		//�ı� ����
		public int deleteRev(int revNum) {
			int removeFlag=0;
			int removeImgFlag=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			removeImgFlag=session.delete("kr.co.salad.manager.RevMangerMapper.deleteImgRev",revNum);
			removeFlag=session.delete("kr.co.salad.manager.RevMangerMapper.deleteRev",revNum);
			System.out.println(removeImgFlag+removeFlag);
			if(removeImgFlag!=0) { //������ �����̹������� �ִٸ�
				System.out.println("������ �̹����� ����");
			}else {
				System.out.println("�����̹�������");
			}
			session.commit();
			//Handler ����
			mbh.closeHandler(session);
			
			return removeFlag; //1�� �����Ϸ�, 0�� ��������
		}
		
		//����Ʈ �ı� ���
		public int updateBestRev(int revNum) {
			int BestFlag=0;
			System.out.println("dao���� �ı��ȣ : "+revNum);
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			BestFlag=session.update("kr.co.salad.manager.RevMangerMapper.updateBestRev",revNum);
			if(BestFlag==1) { //����Ʈ�� ����� �Ǿ��ٸ�
				System.out.println("����Ʈ��� �Ϸ�");
				session.commit();
			}else {
				System.out.println("����Ʈ ��� ����");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
			return BestFlag;//1�� ���,0�� �̵��
		}
		
		//����ī�װ�
		public List<MngRevDomain> selectMainCate() {
			
			List<MngRevDomain> mrDomain=new ArrayList<MngRevDomain>();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			mrDomain=session.selectList("kr.co.salad.manager.RevMangerMapper.selectMainCate");
			if(mrDomain!=null) { //����۵��� �ִٸ�
				System.out.println("����ī�װ� "+mrDomain);
				session.commit();
			}else {
				System.out.println("����ī�װ�����");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
			
			
			return mrDomain;
		}
		
		//����ī�װ�
		public List<MngRevDomain> selectSubCate(int mainCate) {
			
			List<MngRevDomain> mrDomain=new ArrayList<MngRevDomain>();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			mrDomain=session.selectList("kr.co.salad.manager.RevMangerMapper.selectSubCate",mainCate);
			if(mrDomain!=null) { //����۵��� �ִٸ�
				System.out.println("����ī�װ� "+mrDomain);
				session.commit();
			}else {
				System.out.println("����ī�װ�����");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
			
			
			return mrDomain;
		}
		
		//����ġ �� ���� 
		public int selectRevListCount(MngRevVO mrVO) {
			int pageCnt=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			pageCnt=session.selectOne("kr.co.salad.manager.RevMangerMapper.selectTotalPage",mrVO);
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
