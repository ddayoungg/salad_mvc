package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.domain.SearchPrdDomain;
import kr.co.salad.user.vo.KategoriePrdVO;
import kr.co.salad.user.vo.SearchPrdVO;
@Component
public class SearchPrdDAO {
	
	public int selectSrchPrdTotalCount(String keyword) {//전체 상품 리스트 행의 수
		int totalCnt=0;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//쿼리실행
		totalCnt=ss.selectOne("kr.co.salad.user.dao.mapper.SearchPrdMapper.selectSrchPrdTotalCount", keyword);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return totalCnt;
	}//selectPrdTotalCount
	
	public List<SearchPrdDomain> selectSrchPrdBoxList(SearchPrdVO kpVO) {//카테고리별 상품 리스트
		List<SearchPrdDomain> list=new ArrayList<SearchPrdDomain>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.SearchPrdMapper.selectSrchPrdBoxList", kpVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdBoxList
	
}//class
