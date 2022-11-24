package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.PrdDetailQnaDomain;
import kr.co.salad.user.vo.PrdDetailQnaVO;
@Component
public class PrdDetailQnaDAO {

	public int selectQnaTotalCount(int prdNum) {
		int rowCnt=0;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
								
		//��������
		rowCnt=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectQnaTotalCount", prdNum);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return rowCnt;
	}//selectQnaTotalCount
	
	public List<PrdDetailQnaDomain> selectQnaList(PrdDetailQnaVO qVO) {
		List<PrdDetailQnaDomain> list=new ArrayList<PrdDetailQnaDomain>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
										
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectQnaList", qVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//searchQna
	
	public int selectLastQnaNum() {
		int qnaNum=1;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		qnaNum=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectLastQnaNum");
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return qnaNum;
	}//selectLastQnaNum

	public void insertQnaWrite(PrdDetailQnaVO qVO) {
		
		PrdDetailQnaDAO qDAO=new PrdDetailQnaDAO();
		
		qVO.setQnaNum(qDAO.selectLastQnaNum());//�ı� ������ ��ȣ ���ϱ�
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
				
		//�������� insert("Mapper���̵�", ��)
		int cnt=ss.insert("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.insertQnaWrite", qVO);
				
		if(cnt == 1) {
			System.out.println(cnt+"�� �߰�");
			ss.commit();
		}else {
			System.out.println("������ �߰� ����");
			ss.rollback();
		}//end else
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
	}//insertQnaWrite
	
}//class
