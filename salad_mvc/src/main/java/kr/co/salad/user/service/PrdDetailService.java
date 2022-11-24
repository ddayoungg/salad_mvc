package kr.co.salad.user.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.dao.PrdDetailDAO;
import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.vo.PrdDetailVO;
@Component
public class PrdDetailService {
	@Autowired(required = false)
	private PrdDetailDAO pDAO;
	
	public PrdDetailDomain searchPrdDetail(int prdNum) {
		PrdDetailDomain pDomain=new PrdDetailDomain();
		
		pDomain=pDAO.selectPrdDetail(prdNum);
		
		List<String> prdImgList=null; 
		List<String> prdBodyImgList=null; 
		
		prdImgList=pDAO.selectPrdImgList(prdNum);
		prdBodyImgList=pDAO.selectPrdBodyImgList(prdNum);
		
		pDomain.setPrdImgList(prdImgList);
		pDomain.setPrdBodyImgList(prdBodyImgList);
		 
		return pDomain;
	}//searchPrdDetail
	
}//class
