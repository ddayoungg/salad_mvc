package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.SearchPrdService;
import kr.co.salad.user.vo.KategoriePrdVO;
import kr.co.salad.user.vo.SearchPrdVO;

@SessionAttributes({"userId", "userName"})
@Controller
public class SearchPrdController {
	
	@Autowired(required = false)
	private SearchPrdService spService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	@RequestMapping(value="/goods_search.do", method=GET)
	public String goodsSearchForm(HttpSession session ,String keyword, Model model) {
		String url="user/goods/goods_search";
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			//url="redirect:http://localhost/salad_mvc/login.do";
			//model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		//��ü ī�װ�
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		
		return url;
	}//goodsSearchForm
	
	@ResponseBody
	@RequestMapping(value="/search_prd_box_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchSrchPrdBoxListAjax(SearchPrdVO spVO) {
		
		//��ǰ �ڽ��� ����Ʈ
		String jsonObj=spService.searchSrchPrdBoxListJson(spVO);//���� ������, ���� ī�װ�, ���� ī�װ�
		return jsonObj;
	}//searchPrdBoxListAjax
	
}//class
