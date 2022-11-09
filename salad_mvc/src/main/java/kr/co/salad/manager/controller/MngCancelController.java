package kr.co.salad.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngCancelController {
	
	//메인 취소 리스트 화면
	@RequestMapping(value = "/mng_cancel.do",method = GET)
	public String mngCancelMain() {
		return "/manager/cancel/mng_cancel_main";
	}
	
	//취소 상태 보기 창
	@RequestMapping(value="/mng_cancel_form.do",method = GET)
	public String mngCancelForm() {
		return "/manager/cancel/mng_cancel_form";
	}
	
	//취소 상태 보기 창 변경 확인
	@RequestMapping(value="/mng_cancel_form_1.do",method = GET)
	public String mngCancelForm_1() {
		return "/manager/cancel/mng_cancel_form_1";
	}
	
	//취소 상태 보기 창 변경 완료
	@RequestMapping(value="/mng_cancel_form_2.do",method = GET)
	public String mngCancelForm_2() {
		return "/manager/cancel/mng_cancel_form_2";
	}
	
	

}
