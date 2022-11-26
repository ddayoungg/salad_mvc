package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngMemberDomain;
import kr.co.salad.manager.vo.MngMemberVO;
import kr.co.salad.user.domain.PrdDetailRevDomain;
import kr.co.salad.user.vo.PrdDetailRevVO;
@Component
public class MngMemberDAO {
	
	public int selectMemberTotalCount(MngMemberVO mmVO) {//전체 회원 리스트 행 수 및 전체 회원 수, 가입 수, 탈퇴 수
		int totalCnt=0;
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//쿼리실행
		totalCnt=ss.selectOne("kr.co.salad.manager.dao.mapper.MngMemberMapper.selectMemberTotalCount", mmVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return totalCnt;
	}//selectMemberTotalCount
	
	public List<MngMemberDomain> selectMemberList(MngMemberVO mmVO) {//회원 관리 리스트
		List<MngMemberDomain> list=new ArrayList<MngMemberDomain>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngMemberMapper.selectMemberList", mmVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectMemberList
	
	public MngMemberDomain selectMemberDetail(String id) {//회원 상세 정보
		MngMemberDomain mmDomain=new MngMemberDomain();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
				
		//쿼리실행
		mmDomain=ss.selectOne("kr.co.salad.manager.dao.mapper.MngMemberMapper.selectMemberDetail", id);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return mmDomain;
	}//selectMemberDetail
	
	public int updateMemberOut(MngMemberVO mmVO) { //회원 탈퇴
		int cnt=0;
		
		boolean commitFlag=true;
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		//2. 쿼리문 실행
		int upCnt=session.update("kr.co.salad.manager.dao.mapper.MngMemberMapper.updateMemberOut", mmVO.getId());
		if(upCnt != 0) {
			cnt++;
			System.out.println("아이디 "+mmVO.getId()+"의 탈퇴 되었습니다.");
		}else {
			System.out.println("아이디 "+mmVO.getId()+"의 탈퇴 되지 않았습니다.");
			commitFlag=false;
		}//end else
		
		//2. 쿼리문 실행
		int inserCnt=session.insert("kr.co.salad.manager.dao.mapper.MngMemberMapper.insertMemberOut", mmVO);
		if(inserCnt != 0) {
			cnt++;
			System.out.println("데이터가 추가 되었습니다.");
		}else {
			System.out.println("데이터 추가 실패했습니다.");
			commitFlag=false;
		}//end else
		
		if(commitFlag) {//트랜잭션
			session.commit();
		}else {
			session.rollback();
		}//end if
		
		//3. MyBatis Handler 끊기
		mbh.closeHandler(session);
		
		return cnt;
	}//updateMemberOut
	
}//class
