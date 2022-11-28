package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MyOrderService;
import kr.co.salad.user.vo.CartVO;
import kr.co.salad.user.vo.MyOrderVO;

@Controller
public class MyOrderController {
	
	@Autowired(required = false)
	private KategoriePrdService kpService;

	@Autowired(required = false)
	private MyOrderService mos;
	
	@RequestMapping(value = "/order_list.do", method = GET)
	public String MyOrderList(HttpSession session, Model model) {
		String url = "user/mypage/order_list";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/login.do";
			model.addAttribute("eMsg", "로그인을 해주세요."); 
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId); 
		}//end else*/
		//model.addAttribute("userId", "test");
		
		//전체 카테고리
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList", mainCateList);//메인 메뉴
		
		return url;
	}//MyOrderList
	
	@ResponseBody
	@RequestMapping(value="/my_order_list_ajax.do", method= {GET, POST}, produces="application/json; charset=UTF-8")
	public String MyOrderListAjax(HttpSession session, MyOrderVO mcVO) { 
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		//String userId = "test";
		mcVO.setId(userId);
		
		MyOrderService mos = new MyOrderService();
		String jsonObj=mos.searchMyOrderListJson(mcVO);//찜 리스트
		return jsonObj;
	}//MyCancelListAjax
	
	@ResponseBody
	@RequestMapping(value = "/cancel_order.do", method = GET, produces="application/json; charset=UTF-8")
	public void cancelOrderProcess(HttpSession session, MyOrderVO moVO) {
		moVO.setId((String)session.getAttribute("userId"));//세션 가져오기
		mos.cancelOrder(moVO);
	}//editCartCntProcess

}//class
