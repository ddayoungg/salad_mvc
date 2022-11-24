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

	public PrdDetailDomain selectPrdDetail(int prdNum) {//��ǰ ����
		PrdDetailDomain pDomain=null;
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//��������
		pDomain=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailMapper.selectPrdDetail", prdNum);
						
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return pDomain;
	}//selectPrdDetail
	
	public List<String> selectPrdImgList(int prdNum) {//��ǰ �̹���
		List<String> list=new ArrayList<String>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
								
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailMapper.selectPrdImgList", prdNum);
								
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdImgList
	
	public List<String> selectPrdBodyImgList(int prdNum) {//��ǰ ���� �̹���
		List<String> list=new ArrayList<String>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.PrdDetailMapper.selectPrdBodyImgList", prdNum);
		
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdBodyImgList
	
}//class
