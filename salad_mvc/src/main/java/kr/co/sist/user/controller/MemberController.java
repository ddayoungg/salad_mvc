package kr.co.sist.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MemberController {
	
	//로그인이동
	@RequestMapping(value = "/login.do",method = GET)
	public String loginRequest() {
		return "user/member/login";
	}
	
	//회원가입이동
		@RequestMapping(value = "/join.do",method = GET)
		public String joinRequest() {
			return "user/member/join";
		}

}
