package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.vo.KategoriePrdVO;
@Component
public class KategoriePrdDAO {
	
	public List<KategoriePrdDomain> selectMainCateList() {//메인 카테고리
		List<KategoriePrdDomain> list =new ArrayList<KategoriePrdDomain>();
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.KategoriePrdMapper.selectMainCateList");
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectMainCateList
	
	public List<KategoriePrdDomain> selectSubCateList(int mainCateNum) {// 서브 카테고리
		List<KategoriePrdDomain> list =new ArrayList<KategoriePrdDomain>();
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.KategoriePrdMapper.selectSubCateList", mainCateNum);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectSubCate
	
	public int selectPrdTotalCount(KategoriePrdVO kpVO) {//전체 상품 리스트 행의 수
		int totalCnt=0;
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//쿼리실행
		totalCnt=ss.selectOne("kr.co.salad.user.dao.mapper.KategoriePrdMapper.selectPrdTotalCount", kpVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return totalCnt;
	}//selectPrdTotalCount
	
	public List<KategoriePrdDomain> selectPrdBoxList(KategoriePrdVO kpVO) {//카테고리별 상품 리스트
		List<KategoriePrdDomain> list=new ArrayList<KategoriePrdDomain>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.KategoriePrdMapper.selectPrdBoxList", kpVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdBoxList
	
}//class
