package kr.co.salad.manager.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.manager.domain.MngQnaDomain;
import kr.co.salad.manager.vo.MngQnaVO;

@Component
public class MngQnaDAO {

	public int selectQnaTotalCount(MngQnaVO mqVO) {
		int cnt=0;
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
				
		//쿼리실행
		cnt=ss.selectOne("kr.co.salad.manager.dao.mapper.MngQnaMapper.selectQnaTotalCount", mqVO);
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	public List<MngQnaDomain> selectMainCate(){
		List<MngQnaDomain> list = new ArrayList<MngQnaDomain>();
		
		//MyBatis Handler 얻기
				MyBatisHandler mbh=MyBatisHandler.getInstance();
				SqlSession ss=mbh.getHandler();
				
				System.out.println("mainCAte"+list);
				
				//쿼리실행
				list=ss.selectList("kr.co.salad.manager.dao.mapper.MngQnaMapper.selectMainCate");
				
				
				//3. MyBatis Handler 종료
				mbh.closeHandler(ss);
				
		return list;
	}
	
	public List<MngQnaDomain> selectSubCate(int mainCateNum){
		List<MngQnaDomain> list = new ArrayList<MngQnaDomain>();
		
		//MyBatis Handler 얻기
				MyBatisHandler mbh=MyBatisHandler.getInstance();
				SqlSession ss=mbh.getHandler();
				
				//쿼리실행
				list=ss.selectList("kr.co.salad.manager.dao.mapper.MngQnaMapper.selectSubCate", mainCateNum);
				
				System.out.println("subcate"+list);
				//3. MyBatis Handler 종료
				mbh.closeHandler(ss);
				
		return list;
	}
	
	public List<MngQnaDomain> selectQnaList(MngQnaVO mqVO) {
		List<MngQnaDomain> list=new ArrayList<MngQnaDomain>();
		
		System.out.println(mqVO.getSubCateNum()+"/"+mqVO.getKeyword());
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.manager.dao.mapper.MngQnaMapper.selectQnaList", mqVO);
		
		System.out.println( "dao list is----->"+list );
		
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return list;
	}
	
	public MngQnaDomain selectQnaDetail(int qnaNum) {
		MngQnaDomain mqDomain = new MngQnaDomain();
		
		MyBatisHandler sh=MyBatisHandler.getInstance();
		SqlSession ss=sh.getHandler();
		System.out.println( "dao detail is----->"+mqDomain );

		//쿼리실행
		mqDomain=ss.selectOne("kr.co.salad.manager.dao.mapper.MngQnaMapper.selectQnaDetail", qnaNum);
		//3. MyBatis Handler 종료
		sh.closeHandler(ss);
		
		return mqDomain;
	}

}
