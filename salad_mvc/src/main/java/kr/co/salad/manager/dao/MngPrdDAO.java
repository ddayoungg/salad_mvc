package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngMemberDomain;
import kr.co.salad.manager.domain.MngPrdDomain;
import kr.co.salad.manager.vo.MngMemberVO;
import kr.co.salad.manager.vo.MngPrdVO;
import kr.co.salad.user.dao.PrdDetailRevDAO;
import kr.co.salad.user.domain.PrdDetailRevDomain;
import kr.co.salad.user.vo.PrdDetailRevVO;
@Component
public class MngPrdDAO {
	
	public int selectPrdTotalCount(MngPrdVO mpVO) {//전체 상품 건 수 및 상품 리스트 행 수
		int totalCnt=0;
		System.out.println(mpVO);
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//쿼리실행
		totalCnt=ss.selectOne("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdTotalCount", mpVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return totalCnt;
	}//selectPrdTotalCount
	
	public List<MngPrdDomain> selectMainCate() {
		List<MngPrdDomain> list =new ArrayList<MngPrdDomain>();
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		System.out.println("메인 카테고리 DAO");
		//쿼리실행
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectMainCate");
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectMainCate
	
	public List<MngPrdDomain> selectSubCate(int mainCateNum) {
		List<MngPrdDomain> list =new ArrayList<MngPrdDomain>();
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectSubCate", mainCateNum);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectSubCate
	
	
	public List<MngPrdDomain> selectPrdList(MngPrdVO mpVO) {
		List<MngPrdDomain> list=new ArrayList<MngPrdDomain>();
		
		System.out.println(mpVO.getSubCateNum() + " / " + mpVO.getKeyword());//서브 카테고리 번호, 검색명
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdList", mpVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdList
	
	public MngPrdDomain selectPrdDetail(int prdNum) {
		MngPrdDomain mpDomain=new MngPrdDomain();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		mpDomain=ss.selectOne("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdDetail", prdNum);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return mpDomain;
	}//selectPrdDetail
	
	public List<String> selectPrdImgList(int prdNum) {//상품 이미지
		List<String> list=new ArrayList<String>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
								
		//쿼리실행
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdImgList", prdNum);
								
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdImgList
	
	public List<String> selectPrdBodyImgList(int prdNum) {//상품 내용 이미지
		List<String> list=new ArrayList<String>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectPrdBodyImgList", prdNum);
		
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdBodyImgList
	
	public int selectLastPrdNum() {//등록된 상품 마지막 번호
		int prdNum=1;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		prdNum=ss.selectOne("kr.co.salad.manager.dao.mapper.MngPrdMapper.selectLastPrdNum");
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return prdNum;
	}//selectLastPrdNum
	
	public void insertPrd(MngPrdVO mpVO) {
		int lastPrdNum=0;
		
		MngPrdDAO mpDAO=new MngPrdDAO();
		
		lastPrdNum=mpDAO.selectLastPrdNum();
		
		mpVO.setPrdNum(lastPrdNum+1);
		
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		boolean commitFlag=true;
		//2. 쿼리문 실행
		int rowCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrd", mpVO);
		if(rowCnt != 0) {
			System.out.println("데이터가 추가 되었습니다.");
		}else {
			System.out.println("데이터 추가 실패했습니다.");
			commitFlag=false;
		}//end else
		
		int prdImgCnt=0;
		if(mpVO.getPrdImgList()!=null) {
			for(String prdImg : mpVO.getPrdImgList()) {
				mpVO.setPrdImg(prdImg);
				prdImgCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrdImg", mpVO);
				if(prdImgCnt != 0) {
					System.out.println("데이터가 추가 되었습니다.");
				}else {
					System.out.println("데이터 추가 실패했습니다.");
					commitFlag=false;
				}//end else
			}//end for
		}//end if
		
		int prdBodyImgCnt=0;
		if(mpVO.getPrdBodyImgList()!=null) {
			for(String prdBodyImg : mpVO.getPrdBodyImgList()) {
				mpVO.setPrdBodyImg(prdBodyImg);
				prdBodyImgCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrdBodyImg", mpVO);
				if(prdBodyImgCnt != 0) {
					System.out.println("데이터가 추가 되었습니다.");
				}else {
					System.out.println("데이터 추가 실패했습니다.");
					commitFlag=false;
				}//end else
			}//end for
		}//end if
		
		if(commitFlag) {//트랜잭션
			session.commit();
		}else {
			session.rollback();
		}//end if
		
		//3. MyBatis Handler 끊기
		mbh.closeHandler(session);
	}//insertPrd
	
	public void updatePrd(MngPrdVO mpVO) {
		
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		
		boolean commitFlag=true;
		//2. 쿼리문 실행
		int rowCnt=session.update("kr.co.salad.manager.dao.mapper.MngPrdMapper.updatePrd", mpVO);
		if(rowCnt != 0) {
			System.out.println("데이터가 추가 되었습니다.");
		}else {
			System.out.println("데이터 추가 실패했습니다.");
			commitFlag=false;
		}//end else
		
		int prdImgCnt=0;
		
		//DB에 저장된 수정 전 이미지 파일 삭제
		prdImgCnt=session.delete("kr.co.salad.manager.dao.mapper.MngPrdMapper.deletePrdImg", mpVO.getPrdNum());
		if(prdImgCnt != 0) {
			System.out.println("데이터가 삭제 되었습니다.");
		}else {
			System.out.println("데이터 삭제 실패했습니다.");
			commitFlag=false;
		}//end else
		
		//DB에 수정 후 이미지 파일 저장
		if(mpVO.getPrdImgList()!=null) {
			for(String prdImg : mpVO.getPrdImgList()) {
				mpVO.setPrdImg(prdImg);
				prdImgCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrdImg", mpVO);
				if(prdImgCnt != 0) {
					System.out.println("데이터가 추가 되었습니다.");
				}else {
					System.out.println("데이터 추가 실패했습니다.");
					commitFlag=false;
				}//end else
			}//end for
		}//end if
		
		int prdBodyImgCnt=0;
		
		//DB에 저장된 수정 전 이미지 파일 삭제
		prdBodyImgCnt=session.delete("kr.co.salad.manager.dao.mapper.MngPrdMapper.deletePrdBodyImg", mpVO.getPrdNum());
		if(prdBodyImgCnt != 0) {
			System.out.println("데이터가 삭제 되었습니다.");
		}else {
			System.out.println("데이터 삭제 실패했습니다.");
			commitFlag=false;
		}//end else
		
		//DB에 수정 후 이미지 파일 저장
		if(mpVO.getPrdBodyImgList()!=null) {
			for(String prdBodyImg : mpVO.getPrdBodyImgList()) {
				mpVO.setPrdBodyImg(prdBodyImg);
				prdBodyImgCnt=session.insert("kr.co.salad.manager.dao.mapper.MngPrdMapper.insertPrdBodyImg", mpVO);
				if(prdBodyImgCnt != 0) {
					System.out.println("데이터가 추가 되었습니다.");
				}else {
					System.out.println("데이터 추가 실패했습니다.");
					commitFlag=false;
				}//end else
			}//end for
		}//end if
		
		if(commitFlag) {//트랜잭션
			session.commit();
		}else {
			session.rollback();
		}//end if
		
		//3. MyBatis Handler 끊기
		mbh.closeHandler(session);
	}//updatePrd
	
}//class
