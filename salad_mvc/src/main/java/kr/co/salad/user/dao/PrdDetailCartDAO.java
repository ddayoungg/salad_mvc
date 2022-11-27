package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.vo.PrdDetailCartVO;
import kr.co.salad.user.vo.PrdDetailVO;
@Component
public class PrdDetailCartDAO {

	public int selectLastCartNum() {
		int cartNum=1;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		try {
		cartNum=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.selectLastCartNum");
		}catch (NullPointerException npe) {
			cartNum=0;
		}//end catch
		
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return cartNum;
	}//selectLastCartNum
	
	public boolean selectCartChk(PrdDetailCartVO pdcVO) {//��ٱ��� ���� Ȯ��
		boolean flag=false;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		int cnt=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.selectCartChk", pdcVO);
		
		if(cnt==1) {//�� ��Ͽ� ��ϵǾ� ���� ���
			flag=true;
		}//end if
		
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return flag;
	}//selectCartChk
	
	public int insertCart(PrdDetailCartVO pdcVO){//��ǰ�󼼺��⿡�� ��ٱ��� �߰�
		int cnt=0;
		
		PrdDetailCartDAO pdcDAO=new PrdDetailCartDAO();
		
		pdcVO.setCartNum(pdcDAO.selectLastCartNum());//��ٱ��� ������ ��ȣ ���ϱ�
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//�������� insert("Mapper���̵�", ��)
		cnt=ss.insert("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.insertCart", pdcVO);
						
		if(cnt == 1) {
			System.out.println(cnt+"�� �߰�");
			ss.commit();
		}else {
			System.out.println("������ �߰� ����");
			ss.rollback();
		}//end else
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		
		return cnt;
	}//insertCart
	
	public int updateCartPrdCnt(PrdDetailCartVO pdcVO) {//��ٱ��� ��ǰ ���� ����
		int cnt=0;
		//1. MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		//2. ������ ����
		cnt=session.update("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.updateCartPrdCnt", pdcVO);
		if(cnt != 0) {
			session.commit();
			System.out.println("��ٱ��Ͽ��� �ش� "+pdcVO.getPrdNum()+"�� ��ǰ�� ������ ����Ǿ����ϴ�.");
		}else {
			System.out.println("��ٱ��Ͽ� �ش� ��ǰ�� �������� �ʽ��ϴ�.");
		}//end else
		
		//3. MyBatis Handler ����
		mbh.closeHandler(session);
		
		return cnt;
	}//updateCartPrdCnt
	
	public int insertCartWish(PrdDetailCartVO pdcVO){//�� ��Ͽ��� ��ٱ��� �߰�
		int totalCnt = 0;//�� ������ �� ��
		int cnt=0;//�� �������� ������ �� ��
		
		boolean transFlag=true;//Ʈ����� ����
		
		PrdDetailCartDAO pdcDAO=new PrdDetailCartDAO();
		
		int insertCartNum=pdcDAO.selectLastCartNum()+1;
		
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		if(pdcVO.getPrdNumArr()!=null) {
			for(int prdNum : pdcVO.getPrdNumArr()) {
				pdcVO.setPrdNum(prdNum);
					//�������� insert("Mapper���̵�", ��)
					if(pdcDAO.selectCartChk(pdcVO)) {//��ٱ��� ��� ����
						//�̹� ��ٱ��Ͽ� ��ϵǾ� ���� ���
						cnt=ss.update("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.updateCartPrdCnt", pdcVO);
					}else {
						pdcVO.setCartNum(insertCartNum);//��ٱ��� ���� ��ȣ
						//��ٱ��Ͽ� ��ϵǾ� ���� ���� ���
						cnt=ss.insert("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.insertCart", pdcVO);
						insertCartNum++;
					}//end if
					
					cnt+=ss.delete("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.deleteCartWish", pdcVO);
					if(cnt == 2) {
						totalCnt++;
						System.out.println("��ǰ "+pdcVO.getPrdNum()+"�� ��ٱ��Ͽ� �߰��Ǿ����ϴ�.");
					}else {
						transFlag=false;
						totalCnt=0;
						System.out.println("��ǰ "+pdcVO.getPrdNum()+"�� ��ٱ��Ͽ� �߰����� ���߽��ϴ�.");
					}//end else
				}//end for
			}//end if
		if(transFlag) {
			System.out.println(totalCnt+"���� ������ �߰� ����");
			ss.commit();
		}else {
			System.out.println("������ �߰� ����");
			ss.rollback();
		}//end else
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		
		return totalCnt;
	}//insertCartWish
	
	
}//class
