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
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			//url="redirect:http://localhost/salad_mvc/login.do";
			//model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		//전체 카테고리
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		
		model.addAttribute("mainCateList", mainCateList);//메인 메뉴
		
		return url;
	}//goodsSearchForm
	
	@ResponseBody
	@RequestMapping(value="/search_prd_box_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchSrchPrdBoxListAjax(SearchPrdVO spVO) {
		
		//상품 박스형 리스트
		String jsonObj=spService.searchSrchPrdBoxListJson(spVO);//현재 페이지, 메인 카테고리, 서브 카테고리
		return jsonObj;
	}//searchPrdBoxListAjax
	
}//class
