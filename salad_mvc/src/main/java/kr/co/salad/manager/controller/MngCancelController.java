package kr.co.salad.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngCancelController {
	
	//���� ��� ����Ʈ ȭ��
	@RequestMapping(value = "/mng_cancel.do",method = GET)
	public String mngCancelMain() {
		return "/manager/cancel/mng_cancel_main";
	}
	
	//��� ���� ���� â
	@RequestMapping(value="/mng_cancel_form.do",method = GET)
	public String mngCancelForm() {
		return "/manager/cancel/mng_cancel_form";
	}
	
	//��� ���� ���� â ���� Ȯ��
	@RequestMapping(value="/mng_cancel_form_1.do",method = GET)
	public String mngCancelForm_1() {
		return "/manager/cancel/mng_cancel_form_1";
	}
	
	//��� ���� ���� â ���� �Ϸ�
	@RequestMapping(value="/mng_cancel_form_2.do",method = GET)
	public String mngCancelForm_2() {
		return "/manager/cancel/mng_cancel_form_2";
	}
	
	

}
