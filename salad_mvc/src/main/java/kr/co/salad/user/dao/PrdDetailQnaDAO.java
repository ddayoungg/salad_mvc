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
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
								
		//쿼리실행
		rowCnt=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectQnaTotalCount", prdNum);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return rowCnt;
	}//selectQnaTotalCount
	
	public List<PrdDetailQnaDomain> selectQnaList(PrdDetailQnaVO qVO) {
		List<PrdDetailQnaDomain> list=new ArrayList<PrdDetailQnaDomain>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
										
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectQnaList", qVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//searchQna
	
	public int selectLastQnaNum() {
		int qnaNum=1;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		qnaNum=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.selectLastQnaNum");
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return qnaNum;
	}//selectLastQnaNum

	public void insertQnaWrite(PrdDetailQnaVO qVO) {
		
		PrdDetailQnaDAO qDAO=new PrdDetailQnaDAO();
		
		qVO.setQnaNum(qDAO.selectLastQnaNum());//후기 마지막 번호 구하기
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
				
		//쿼리실행 insert("Mapper아이디", 값)
		int cnt=ss.insert("kr.co.salad.user.dao.mapper.PrdDetailQnaMapper.insertQnaWrite", qVO);
				
		if(cnt == 1) {
			System.out.println(cnt+"건 추가");
			ss.commit();
		}else {
			System.out.println("데이터 추가 실패");
			ss.rollback();
		}//end else
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
	}//insertQnaWrite
	
}//class
