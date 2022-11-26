package kr.co.salad.manager.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.vo.MngQnaAVO;

@Component
public class MngQnaADAO {

	public MngQnaAVO answerLook(int qnaNum) {
		
		
		MngQnaAVO mqaVO = new MngQnaAVO(); 
		
		//MyBatis Handler 얻기
				MyBatisHandler mbh=MyBatisHandler.getInstance();
				SqlSession ss=mbh.getHandler();
						
				//쿼리실행
				mqaVO=ss.selectOne("kr.co.salad.manager.dao.mapper.MngQnaAMapper.answerLook", qnaNum);
				//3. MyBatis Handler 종료
				mbh.closeHandler(ss);
				
				return mqaVO;
	}
	public int selectLastQnaANum() {//등록된 상품 마지막 번호
		int qnaANum=1;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		qnaANum=ss.selectOne("kr.co.salad.manager.dao.mapper.MngQnaAMapper.lastQnaANum");
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return qnaANum;
	}//selectLastPrdNum
	
	public void answerWrite(MngQnaAVO mqaVO) {
		int lastQnaANum=0;
		
		MngQnaADAO mqaDAO=new MngQnaADAO();
		
		lastQnaANum=mqaDAO.selectLastQnaANum();
		
		mqaVO.setQnaANum(lastQnaANum+1);
		 System.out.println("answerWrite=================="+mqaVO);
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		boolean commitFlag=true;
		//2. 쿼리문 실행
		//쿼리실행
		int rowCnt=ss.insert("kr.co.salad.manager.dao.mapper.MngQnaAMapper.answerWrite", mqaVO);
		
		if(rowCnt != 0) {
			System.out.println("데이터가 추가 되었습니다.");
		}else {
			System.out.println("데이터 추가 실패했습니다.");
			commitFlag=false;
		}//end else
		
		int upCnt=ss.update("kr.co.salad.manager.dao.mapper.MngQnaAMapper.updateWrite", mqaVO.getQnaNum());
		if(upCnt != 0) {
			System.out.println("데이터가 추가 되었습니다.");
		}else {
			System.out.println("데이터 추가 실패했습니다.");
			commitFlag=false;
		}//end else
		
		
		if(commitFlag) {//트랜잭션
			ss.commit();
		}else {
			ss.rollback();
		}//end if
		
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
	}
	public void answerEdit(MngQnaAVO mqaVO) {
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		boolean commitFlag=true;

		//쿼리실행
		int rowCnt=ss.update("kr.co.salad.manager.dao.mapper.MngQnaAMapper.answerEdit", mqaVO);
		
		if(rowCnt != 0) {
			System.out.println("데이터가 수정 되었습니다.");
		}else {
			System.out.println("데이터 수정 실패했습니다.");
			commitFlag=false;
		}//end else
		
		if(commitFlag) {//트랜잭션
			ss.commit();
		}else {
			ss.rollback();
		}//end if
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
	}
	
	
}
