package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.ReviewDomain;
import kr.co.salad.user.vo.ReviewVO;

@Component
public class ReviewDAO {
	
	private static ReviewDAO revDao;
	
	private ReviewDAO() {
	}//ReviewDAO
	
	public static ReviewDAO getInstance() {
		if(revDao == null) {
			revDao=new ReviewDAO();
		}//if
		return revDao;
	}//getInstance

	
	//�ı⸮��Ʈ
		public List<ReviewDomain> selectRevList(ReviewVO revVO) {
			List<ReviewDomain> mrDomain=new ArrayList<ReviewDomain>();
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=mbh.getHandler();
			
			mrDomain=session.selectList("kr.co.salad.user.ReviewMapper.selectRevList",revVO);
			if(mrDomain!=null) { 
				System.out.println("�����"+mrDomain);
				session.commit();
			}else {
				System.out.println("���䰡 �����ϴ�.");
			}//if
			
			mbh.closeHandler(session);
			return mrDomain;
		}//selectRevList
		
		
		//�ı� �󼼺���
		public ReviewDomain selectRevDetail(int revNum) {
			ReviewDomain revDomain=new ReviewDomain();
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=mbh.getHandler();
			
			revDomain=session.selectOne("kr.co.salad.user.ReviewMapper.selectRevDetail", revNum);
			List<String> revImg=session.selectList("kr.co.salad.user.ReviewMapper.selectRevImg", revNum);
			revDomain.setRevImg(revImg);
			if(revDomain!=null) {
				System.out.println("�ı� �󼼺���"+revDomain);
				session.commit();
			}else {
				session.rollback();
				System.out.println("�ıⰡ �����ϴ�");
			}//if
			
			mbh.closeHandler(session);
			return revDomain;
		}//selectRevDetail

		
		//������ �� ���� 
		public int selectRevListCount(ReviewVO revVO) {
			int pageCnt=0;
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=mbh.getHandler();
			
			pageCnt=session.selectOne("kr.co.salad.user.ReviewMapper.selectTotalPage",revVO);
			if(pageCnt!=0) { 
				System.out.println("�� �������� "+pageCnt);
				session.commit();
			}else {
				System.out.println("�������� �����ϴ�.");
			}//if
			
			mbh.closeHandler(session);
			return pageCnt;
		}//selectRevListCount
		
		 //�ı� ��ȸ��
		public int updateRevCount(int revNum) {
			int hitsCnt=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession session=mbh.getHandler();
			
			System.out.println("1");
			hitsCnt=session.update("kr.co.salad.user.ReviewMapper.updateRevCount", revNum);
			System.out.println("2");
			
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
