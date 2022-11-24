package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MainPrdDAO;
import kr.co.salad.user.domain.MainPrdDomain;

@Component
public class MainPrdService {

	@Autowired(required = false)
	private  MainPrdDAO mpDAO;

	public  List<MainPrdDomain> prdlist(){
		List<MainPrdDomain> mpDomain = new ArrayList<MainPrdDomain>();
		mpDomain = mpDAO.prdlist();
		
		return mpDomain;
	}
	

}
