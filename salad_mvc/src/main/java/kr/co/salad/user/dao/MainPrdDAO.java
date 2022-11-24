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
		
		
		//MyBatis Handler ���
		MyBatisHandler sh=MyBatisHandler.getInstance();
		SqlSession ss=sh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mainMapper.selectPrd");
		//3. MyBatis Handler ����
		sh.closeHandler(ss);
		
		return list;
	}//selectMemberList

	
	
}
