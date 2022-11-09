package kr.co.salad.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngLoginController {
	
	//메인 로그인 화면
	@RequestMapping(value = "mng_index.do",method = GET)
	public String mngMainRequest() {
		return "manager/login/mng_login";
	}
	
	//로그인 시 대시보드로 이동
	@RequestMapping(value="/mng_login.do",method = GET)
	public String mngLoginProcess() {
		return "#";
	}
	
	

}
