package kr.co.salad.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.domain.MainPrdDomain;

@Component
public class MainPrdDAO {

	public List<MainPrdDomain> prdlist() {
		List<MainPrdDomain> list=new ArrayList<MainPrdDomain>();
		
		
		//MyBatis Handler 얻기
		MyBatisHandler sh=MyBatisHandler.getInstance();
		SqlSession ss=sh.getHandler();
		
		//쿼리실행
		list=ss.selectList("kr.co.salad.user.dao.mainMapper.selectPrd");
		//3. MyBatis Handler 종료
		sh.closeHandler(ss);
		
		return list;
	}//selectMemberList

	
	
}
