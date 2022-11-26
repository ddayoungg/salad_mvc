package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.domain.PrdDetailRevDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.PrdDetailQnaService;
import kr.co.salad.user.service.PrdDetailRevService;
import kr.co.salad.user.service.PrdDetailService;

/**
 * ��ǰ�󼼺���
 * @author user
 *
 */
@SessionAttributes({"userId", "userName"})
@Controller
public class PrdDetailController {
	
	@Autowired(required = false)
	private PrdDetailService pdsService;
	
	@Autowired(required = false)
	private PrdDetailRevService pdrService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	@RequestMapping(value="/goods/goods_view.do", method=GET)
	public String searchPrdDetailForm(HttpSession session, int prdNum, Model model) {
		String url="user/goods/goods_view";
		
		//��ü ī�װ�
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		
		//��ǰ �� ����
		PrdDetailDomain pDomain=pdsService.searchPrdDetail(prdNum);
		
		model.addAttribute("prdData", pDomain);
		
		//����Ʈ �ı� ����Ʈ
		List<PrdDetailRevDomain> bestRevList=pdrService.searchBestRevList(prdNum);
		
		model.addAttribute("bestRevList", bestRevList);
		
		return url;
	}//searchPrdDetail
	
}//class
