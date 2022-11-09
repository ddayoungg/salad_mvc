package kr.co.salad.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngOrderController {
	
	//메인 주문 리스트 화면
	@RequestMapping(value = "/mng_order.do",method = GET)
	public String mOrderMain() {
		return "/manager/order/mng_order_main";
	}
	
	//로그인 시 대시보드로 이동
	@RequestMapping(value="/mng_detail_order.do",method = GET)
	public String mOrderDetail() {
		return "/manager/order/mng_order_detail";
	}
	
	

}
