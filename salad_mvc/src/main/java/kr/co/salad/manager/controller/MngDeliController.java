package kr.co.salad.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngDeliController {
	
	//메인 배송 리스트 화면
	@RequestMapping(value = "/mng_deli.do",method = GET)
	public String mngDeliMain() {
		return "/manager/deli/mng_deli_main";
	}
	
	//배송 상태 보기 창
	@RequestMapping(value="/mng_deli_form.do",method = GET)
	public String mngDeliForm() {
		return "/manager/deli/mng_deli_form";
	}
	
	//배송 상태 보기 창 ( 배송 준비 중 ) 변경 확인
	@RequestMapping(value="/mng_deli_form_1.do",method = GET)
	public String mngDeliForm_1() {
		return "/manager/deli/mng_deli_form_1";
	}
	
	//배송 상태 보기 창 ( 배송 중 ) 변경 확인
	@RequestMapping(value="/mng_deli_form_2.do",method = GET)
	public String mngDeliForm_2() {
		return "/manager/deli/mng_deli_form_2";
	}
	
	//배송 상태 보기 창 ( 배송 완료 ) 변경 확인
	@RequestMapping(value="/mng_deli_form_3.do",method = GET)
	public String mngDeliForm_3() {
		return "/manager/deli/mng_deli_form_3";
	}
	
	//배송 상태 보기 창 변경 완료
	@RequestMapping(value="/mng_deli_form_4.do",method = GET)
	public String mngDeliForm_4() {
		return "/manager/deli/mng_deli_form_4";
	}
	
	

}
