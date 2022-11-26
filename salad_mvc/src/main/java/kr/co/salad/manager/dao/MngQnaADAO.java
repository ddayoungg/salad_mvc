package kr.co.salad.manager.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.vo.MngQnaAVO;

@Component
public class MngQnaADAO {

	public MngQnaAVO answerLook(int qnaNum) {
		
		
		MngQnaAVO mqaVO = new MngQnaAVO(); 
		
		//MyBatis Handler ���
				MyBatisHandler mbh=MyBatisHandler.getInstance();
				SqlSession ss=mbh.getHandler();
						
				//��������
				mqaVO=ss.selectOne("kr.co.salad.manager.dao.mapper.MngQnaAMapper.answerLook", qnaNum);
				//3. MyBatis Handler ����
				mbh.closeHandler(ss);
				
				return mqaVO;
	}
	public int selectLastQnaANum() {//��ϵ� ��ǰ ������ ��ȣ
		int qnaANum=1;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		qnaANum=ss.selectOne("kr.co.salad.manager.dao.mapper.MngQnaAMapper.lastQnaANum");
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return qnaANum;
	}//selectLastPrdNum
	
	public void answerWrite(MngQnaAVO mqaVO) {
		int lastQnaANum=0;
		
		MngQnaADAO mqaDAO=new MngQnaADAO();
		
		lastQnaANum=mqaDAO.selectLastQnaANum();
		
		mqaVO.setQnaANum(lastQnaANum+1);
		 System.out.println("answerWrite=================="+mqaVO);
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		boolean commitFlag=true;
		//2. ������ ����
		//��������
		int rowCnt=ss.insert("kr.co.salad.manager.dao.mapper.MngQnaAMapper.answerWrite", mqaVO);
		
		if(rowCnt != 0) {
			System.out.println("�����Ͱ� �߰� �Ǿ����ϴ�.");
		}else {
			System.out.println("������ �߰� �����߽��ϴ�.");
			commitFlag=false;
		}//end else
		
		int upCnt=ss.update("kr.co.salad.manager.dao.mapper.MngQnaAMapper.updateWrite", mqaVO.getQnaNum());
		if(upCnt != 0) {
			System.out.println("�����Ͱ� �߰� �Ǿ����ϴ�.");
		}else {
			System.out.println("������ �߰� �����߽��ϴ�.");
			commitFlag=false;
		}//end else
		
		
		if(commitFlag) {//Ʈ�����
			ss.commit();
		}else {
			ss.rollback();
		}//end if
		
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
	}
	public void answerEdit(MngQnaAVO mqaVO) {
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		boolean commitFlag=true;

		//��������
		int rowCnt=ss.update("kr.co.salad.manager.dao.mapper.MngQnaAMapper.answerEdit", mqaVO);
		
		if(rowCnt != 0) {
			System.out.println("�����Ͱ� ���� �Ǿ����ϴ�.");
		}else {
			System.out.println("������ ���� �����߽��ϴ�.");
			commitFlag=false;
		}//end else
		
		if(commitFlag) {//Ʈ�����
			ss.commit();
		}else {
			ss.rollback();
		}//end if
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
	}
	
	
}
