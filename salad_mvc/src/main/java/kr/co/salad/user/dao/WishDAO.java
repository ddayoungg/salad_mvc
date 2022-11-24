package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.WishDomain;
import kr.co.salad.user.vo.WishVO;
@Component
public class WishDAO {
	
	public int selectMyTotalCount(WishVO wVO) {//���� ��ü ��, �ı�, ��ǰ���� �� ��
		int rowCnt=0;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		rowCnt=ss.selectOne("kr.co.salad.user.dao.mapper.WishMapper.selectMyTotalCount", wVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return rowCnt;
	}//selectWishTotalCount
	
	public List<WishDomain> selectWishList(WishVO wVO) { //�� ��� ����Ʈ
		List<WishDomain> list=new ArrayList<WishDomain>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
												
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.WishMapper.selectWishList", wVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectWishList
	
	public boolean selectWishFlag(WishVO wVO) {
		boolean wishChkFlag = false;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		int chkCnt=ss.selectOne("kr.co.salad.user.dao.mapper.WishMapper.selectWishFlag", wVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		if(chkCnt==1) {
			wishChkFlag = true;
		}//end if
		
		return wishChkFlag;
	}//selectWishFlag
	
	public void insertWish(WishVO wVO) {
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//�������� insert("Mapper���̵�", ��)
		int cnt=ss.insert("kr.co.salad.user.dao.mapper.WishMapper.insertWish", wVO);
						
		if(cnt == 1) {
			System.out.println(cnt+"�� �߰�");
			ss.commit();
		}else {
			System.out.println("������ �߰� ����");
			ss.rollback();
		}//end else
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
	}//insertWish
	
	public int deleteWish(WishVO wVO) {
		int totalCnt = 0;//�� ������ �� ��
		int cnt=0;//�� �������� ������ �� ��
		
		boolean transFlag=true;//Ʈ����� ����
		
		System.out.println("�� ��Ͽ��� �����Ǿ����ϴ�.");
		
		//1. MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		//2. ������ ����
		if(wVO.getPrdNumArr()!=null) {
			for(int prdNum : wVO.getPrdNumArr()) {
				wVO.setPrdNum(prdNum);
				cnt=session.delete("kr.co.salad.user.dao.mapper.WishMapper.deleteWish", wVO);
				if(cnt != 0) {
					totalCnt++;
					System.out.println("��ǰ "+wVO.getPrdNum()+"�� �� ��Ͽ� �����Ǿ����ϴ�.");
				}else {
					transFlag=false;
					totalCnt=0;
					System.out.println("��ǰ "+wVO.getPrdNum()+"�� �� ��Ͽ� �������� �ʽ��ϴ�.");
				}//end else
			}//end for
		}//end if
		
		if(transFlag) {//Ʈ�����
			session.commit();
		}else {
			session.rollback();
		}//end else
		
		//3. MyBatis Handler ����
		mbh.closeHandler(session);
		
		return totalCnt;
	}//deleteWish
	
}//class
