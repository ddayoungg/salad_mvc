package kr.co.salad.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngDeliController {
	
	//���� ��� ����Ʈ ȭ��
	@RequestMapping(value = "/mng_deli.do",method = GET)
	public String mngDeliMain() {
		return "/manager/deli/mng_deli_main";
	}
	
	//��� ���� ���� â
	@RequestMapping(value="/mng_deli_form.do",method = GET)
	public String mngDeliForm() {
		return "/manager/deli/mng_deli_form";
	}
	
	//��� ���� ���� â ( ��� �غ� �� ) ���� Ȯ��
	@RequestMapping(value="/mng_deli_form_1.do",method = GET)
	public String mngDeliForm_1() {
		return "/manager/deli/mng_deli_form_1";
	}
	
	//��� ���� ���� â ( ��� �� ) ���� Ȯ��
	@RequestMapping(value="/mng_deli_form_2.do",method = GET)
	public String mngDeliForm_2() {
		return "/manager/deli/mng_deli_form_2";
	}
	
	//��� ���� ���� â ( ��� �Ϸ� ) ���� Ȯ��
	@RequestMapping(value="/mng_deli_form_3.do",method = GET)
	public String mngDeliForm_3() {
		return "/manager/deli/mng_deli_form_3";
	}
	
	//��� ���� ���� â ���� �Ϸ�
	@RequestMapping(value="/mng_deli_form_4.do",method = GET)
	public String mngDeliForm_4() {
		return "/manager/deli/mng_deli_form_4";
	}
	
	

}
