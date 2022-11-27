package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.PrdDetailQnaDomain;
import kr.co.salad.user.domain.QnaDetailDomain;
import kr.co.salad.user.vo.PrdDetailQnaVO;
@Component
public class PrdDetailQnaDAO {

	public int selectQnaTotalCount(PrdDetailQnaVO pdqVO) {
		int rowCnt=0;
		
		System.out.println("qnaDAO : "+pdqVO);
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
								
		//��������
		rowCnt=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectQnaTotalCount", pdqVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return rowCnt;
	}//selectQnaTotalCount
	
	public List<PrdDetailQnaDomain> selectQnaList(PrdDetailQnaVO pdqVO) {
		List<PrdDetailQnaDomain> list=new ArrayList<PrdDetailQnaDomain>();
		
		System.out.println("qnaDAO : "+pdqVO);
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
										
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectQnaList", pdqVO);
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
		try {
			qnaNum=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectLastQnaNum");
		}catch (NullPointerException npe) {
			qnaNum=0;
		}//end catch
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
	
	public QnaDetailDomain selectQnaDetail(int qnaNum) {//��ǰ���� ������
		
		QnaDetailDomain qdDomain=new QnaDetailDomain();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		qdDomain=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectQnaDetail", qnaNum);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		
		return qdDomain;
	}//selectQnaDetail
	
}//class
