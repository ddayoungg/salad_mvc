package kr.co.salad.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MainController {
	
	//����ȭ��
	@RequestMapping(value = "/index.do",method = GET)
	public String mainIndex() {
		return "/user/main/home";
	}

}
