package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.vo.PrdDetailVO;
@Component
public class PrdDetailDAO {

	public PrdDetailDomain selectPrdDetail(int prdNum) {//상품 정보
		PrdDetailDomain pDomain=null;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//쿼리실행
		pDomain=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailMapper.selectPrdDetail", prdNum);
						
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return pDomain;
	}//selectPrdDetail
	
	public List<String> selectPrdImgList(int prdNum) {//상품 이미지
		List<String> list=new ArrayList<String>();
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
								
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailMapper.selectPrdImgList", prdNum);
								
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
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailMapper.selectPrdBodyImgList", prdNum);
		
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdBodyImgList
	
}//class
