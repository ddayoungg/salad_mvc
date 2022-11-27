package kr.co.salad.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.salad.manager.domain.MngOrderDomain;
import kr.co.salad.manager.domain.MngOrderPrdDomain;
import kr.co.salad.manager.service.MngDashboardService;
import kr.co.salad.manager.service.MngOrderService;
import kr.co.salad.manager.vo.MngOrderVO;

@Controller
public class MngOrderController {
	
	@Autowired(required = false)
	private MngDashboardService service;
	
	//메인 주문 리스트 화면
	@RequestMapping(value = "/mng_order_main.do",method = GET)
	public String mOrderMain(HttpSession session, Model model) {
		String url="/manager/order/mng_order_main";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		//대시 보드 => 이번달, 오늘 주문 건수 구하기
		String orderDay ="month";
		int order = 0;
		order=service.searchTotalOrder(orderDay);
		model.addAttribute("orderDayM",order);
		
		orderDay="today";
		order=0;
		order=service.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
		
		return url;
	}//mOrderMain
	
	@ResponseBody
	@RequestMapping(value="/my_order_list_ajax111.do", method= {GET, POST}, produces="application/json; charset=UTF-8")
	public String myOrderListAjax(HttpSession session,MngOrderVO moVO) {
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		moVO.setId(userId);
		MngOrderService mos = new MngOrderService();
		String jsonObj = mos.searchOrderList(moVO);
		System.out.println("jsonObj"+jsonObj);
		return jsonObj;
	}//MyCancelListAjax
	
	//로그인 시 대시보드로 이동
	@RequestMapping(value="/mng_order_detail.do",method = GET)
	public String mOrderDetail(HttpSession session, MngOrderDomain mod, Model model) {
		String url="/manager/order/mng_order_detail";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		//대시 보드 => 이번달, 오늘 주문 건수 구하기
		String orderDay ="month";
		int order = 0;
		order=service.searchTotalOrder(orderDay);
		model.addAttribute("orderDayM",order);
		
		orderDay="today";
		order=0;
		order=service.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
		
		MngOrderService mds = new MngOrderService();
		
		List<MngOrderPrdDomain> orderPrdList = mds.searchOrderPrd(mod.getOrderNum());
		model.addAttribute("orderPrdList", orderPrdList);
		
		MngOrderDomain memberInfo = mds.searchOrderMember(mod.getOrderNum());
		model.addAttribute("memberInfo", memberInfo);

		if("1".equals(mod.getExistAddrFlag())) {
			MngOrderDomain deliInfo = mds.searchOrderDeli(mod.getOrderNum());
			model.addAttribute("deliInfo", deliInfo);
		}

		return url;
	}//mOrderDetail

}
