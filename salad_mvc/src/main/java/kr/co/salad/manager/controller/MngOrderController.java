package kr.co.salad.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngOrderController {
	
	//���� �ֹ� ����Ʈ ȭ��
	@RequestMapping(value = "/mng_order.do",method = GET)
	public String mOrderMain() {
		return "/manager/order/mng_order_main";
	}
	
	//�α��� �� ��ú���� �̵�
	@RequestMapping(value="/mng_detail_order.do",method = GET)
	public String mOrderDetail() {
		return "/manager/order/mng_order_detail";
	}
	
	

}
