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
	
	public List<KategoriePrdDomain> selectMainCateList() {//���� ī�װ�
		List<KategoriePrdDomain> list =new ArrayList<KategoriePrdDomain>();
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.KategoriePrdMapper.selectMainCateList");
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectMainCateList
	
	public List<KategoriePrdDomain> selectSubCateList(int mainCateNum) {// ���� ī�װ�
		List<KategoriePrdDomain> list =new ArrayList<KategoriePrdDomain>();
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.KategoriePrdMapper.selectSubCateList", mainCateNum);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectSubCate
	
	public int selectPrdTotalCount(KategoriePrdVO kpVO) {//��ü ��ǰ ����Ʈ ���� ��
		int totalCnt=0;
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//��������
		totalCnt=ss.selectOne("kr.co.salad.user.dao.mapper.KategoriePrdMapper.selectPrdTotalCount", kpVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return totalCnt;
	}//selectPrdTotalCount
	
	public List<KategoriePrdDomain> selectPrdBoxList(KategoriePrdVO kpVO) {//ī�װ��� ��ǰ ����Ʈ
		List<KategoriePrdDomain> list=new ArrayList<KategoriePrdDomain>();
		
		//MyBatis Handler ���
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//��������
		list=ss.selectList("kr.co.salad.user.dao.mapper.KategoriePrdMapper.selectPrdBoxList", kpVO);
		//3. MyBatis Handler ����
		mbh.closeHandler(ss);
		
		return list;
	}//selectPrdBoxList
	
}//class
