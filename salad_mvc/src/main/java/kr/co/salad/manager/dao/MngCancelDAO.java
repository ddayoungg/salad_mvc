package kr.co.salad.manager.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngCancelDomain;
import kr.co.salad.manager.vo.MngCancelVO;
import kr.co.salad.manager.vo.MngLoginVO;

@Component
public class MngCancelDAO {
	
	//��ü ��� ���� �ҷ�����
	public List<MngCancelDomain> selectAllCancel(){
		List<MngCancelDomain> allCancelList = new ArrayList<MngCancelDomain>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		allCancelList=session.selectList("kr.co.salad.mngCancelMapper.selectAllCancel",allCancelList);
		mbh.closeHandler(session);	
		System.out.println(allCancelList); 
		
		return allCancelList;
	}//
	
	//���� ī�װ� ��� ( �˻� �Ⱦ���� �� )
//	public List<MngCancelDomain> selectMainCate() {
//		List<MngCancelDomain> mainCateList = new ArrayList<MngCancelDomain>();
//	
//	//MyBatis Handler ���
//	MyBatisHandler mbh=MyBatisHandler.getInstance();
//	SqlSession session=MyBatisHandler.getInstance().getHandler();
//	
//	mainCateList=session.selectList("kr.co.salad.mngCancelMapper.selectMainCateList",mainCateList);
//
//	mbh.closeHandler(session);	
//	//System.out.println(mainCateList); 
//	return mainCateList;
//	}//
	
	//���� ī�װ� ��� ( �˻� �Ⱦ���� �� )
//	public List<MngCancelDomain> selectSubCate(MngCancelVO cancelVO){
//		List<MngCancelDomain> subCateList = new ArrayList<MngCancelDomain>();
//		
//		//cancelVO.setMainCateNum(1);
//		
//		MngCancelVO mngCVO = 
//				new MngCancelVO (cancelVO.getMainCateNum(), cancelVO.getSubCateNum(), 0, 0, 0, 0,
//						0, 0, 0, null, null, null,
//						null, null); 
//		System.out.println(mngCVO+"\n");
//		
//		//MyBatis Handler ���
//		MyBatisHandler mbh=MyBatisHandler.getInstance();
//		SqlSession session=MyBatisHandler.getInstance().getHandler();
//		
//		subCateList=session.selectList("kr.co.salad.mngCancelMapper.selectSubCateList",mngCVO);
//		session.commit();
//		mbh.closeHandler(session);
//		System.out.println(subCateList); 
//		
//		return subCateList;
//	}//
	
	//��ҿ�û, Ȯ�� / ����ī��,����ī�׷� �˻��� ���� ( �˻� �Ⱦ���� �� )
//	public List<MngCancelDomain> selectCancelMember(MngCancelVO cancelVO){
//		List<MngCancelDomain> cancelList = new ArrayList<MngCancelDomain>();
//		
//		//cancelVO.setSubCateNum(8);
//		
//		MngCancelVO mngCVO = 
//				new MngCancelVO (cancelVO.getMainCateNum(), cancelVO.getSubCateNum(), 0, 0, 0, 0,
//						0, 0, 0, null, null, null,
//						null, null); 
//		System.out.println(mngCVO+"\n");
//		
//		//MyBatis Handler ���
//		MyBatisHandler mbh=MyBatisHandler.getInstance();
//		SqlSession session=MyBatisHandler.getInstance().getHandler();
//		
//		cancelList = session.selectList("kr.co.salad.mngCancelMapper.selectCancelList",cancelVO);
//		session.commit();
//		mbh.closeHandler(session);
//		System.out.println(cancelList); 
//		
//		return cancelList;
//	}//
	
	//��� ��û�� ��� Ȯ������ �ٲٱ� 5 => 6 
	public int updateCancelStatic(int orderNum) {
		int chOrderStatus = 0;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		chOrderStatus=session.update("kr.co.salad.mngCancelMapper.changeCancelList",orderNum);
		System.out.println("�̰� ������?"+chOrderStatus);
		if(chOrderStatus == 1 ) { //������ �Ǿ��ٸ� 1�� ���� ���ϱ�?
			System.out.println("dao : ��� Ȯ������ ���� �Ϸ�");
			session.commit();
		} else {
			System.out.println("dao : ��� Ȯ������ ���� ����");
		}
		mbh.closeHandler(session);
		System.out.println(chOrderStatus);

		return chOrderStatus;
	}//
	
	//�˻� â�� NAME&��¥&�ֹ���ȣ �˻�
	public List<MngCancelDomain> selectCancelList(MngCancelVO cancelVO){
		List<MngCancelDomain> searchList = new ArrayList<MngCancelDomain>();
		
		
		//cancelVO.setName(null);
		//cancelVO.setSearch("2022");
		//cancelVO.setOrderDate("20");
		//cancelVO.setOrderNum(0);
		
//		MngCancelVO mngCVO = 
//				new MngCancelVO (0, 0,0, 0, 0, 0,
//						0, 0, 0, null, cancelVO.getSearch(), null,
//						null, null); 
//		System.out.println(mngCVO+"\n");
		 
		
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		searchList=session.selectList("kr.co.salad.mngCancelMapper.searchCancelMember",cancelVO);
		session.commit();
		mbh.closeHandler(session);
		System.out.println(searchList);
		
		return searchList;
	}//
	
	//��� ������ ���
	public MngCancelDomain selectOrderDetail (int orderNum) {
		MngCancelDomain cancelOrder = new MngCancelDomain();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=MyBatisHandler.getInstance().getHandler();
		
		cancelOrder=session.selectOne("kr.co.salad.mngCancelMapper.selectCancelOrder",orderNum);
		session.commit();
		mbh.closeHandler(session);
		System.out.println(cancelOrder);
		
		return cancelOrder;
	}//
	
	//����ġ �� ���� 
	public int selectCancelListCount(MngCancelVO cancelVO) {
		int pageCnt=0;
				
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
				
		//��������
		pageCnt=session.selectOne("kr.co.salad.mngCancelMapper.selectCancelPage",cancelVO);
		if(pageCnt!=0) { //���������� �ִٸ�
			System.out.println("�� �������� "+pageCnt);
			System.out.println("�� �������� "+cancelVO);
			session.commit();
		}else {
			System.out.println("����������");
		}
				
		//Handler ����
		mbh.closeHandler(session);		
		return pageCnt;
	}//
	
	public static void main(String[] args) {
		MngCancelDAO cancelDAO = new MngCancelDAO();
		MngCancelVO cancelVO = new MngCancelVO();
		//cancelDAO.selectAllCancel();
		//cancelDAO.selectMainCate();
		//cancelDAO.selectSubCate(cancelVO);
		//cancelDAO.selectCancelMember(cancelVO);	
		//cancelDAO.updateCancelStatic(1);
		//cancelDAO.selectCancelList("ȫ");	
		//cancelDAO.selectOrderDetail(1);
	}//static
	
}//class
