package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngDeilDomain;
import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.vo.MngDeilVO;
import kr.co.salad.manager.vo.MngRevVO;

@Component
public class MngDeilDAO {
	
	private static MngDeilDAO mrDao;
	
	private MngDeilDAO() {
		
	}//MngRevDAO
	
	public static MngDeilDAO getInstance() {
		if(mrDao == null) {
			mrDao=new MngDeilDAO();
		}//end if
		return mrDao;
	}//getInstance

	
	//�ı���ü,�˻�����Ʈ
		public List<MngDeilDomain> selectDeilList(MngDeilVO mdVO) {
			List<MngDeilDomain> mdDomain=new ArrayList<MngDeilDomain>();
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			mdDomain=session.selectList("kr.co.salad.manager.DeilMangerMapper.selectDeilList",mdVO);

			
			//Handler ����
			mbh.closeHandler(session);
			
			
			
			return mdDomain;
		}
		
		//��ۻ��� ����
		public int updateDeilStatus(MngDeilVO mdVO) {
			int StatusFlag=0;
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			System.out.println("DAO���� "+mdVO);
			//��������
			StatusFlag=session.update("kr.co.salad.manager.DeilMangerMapper.updateDeilStatus",mdVO);
			if(StatusFlag==1) { //��ۺ���Ϸ�
				System.out.println("��ۺ��� �Ϸ�");
				session.commit();
			}else {
				System.out.println("��ۺ��� ����");
			}
			
			//Handler ����
			mbh.closeHandler(session);
			
			return StatusFlag;//1�� ���,0�� �̵��
		}
		
		//����ġ �� ���� 
		public int selectDeilListCount(MngDeilVO mdVO) {
			int pageCnt=0;
			
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			
			
			SqlSession session=mbh.getHandler();
			
			//��������
			pageCnt=session.selectOne("kr.co.salad.manager.DeilMangerMapper.selectTotalPage",mdVO);

			
			//Handler ����
			mbh.closeHandler(session);
			
			return pageCnt;
		}
		
}
