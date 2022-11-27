package kr.co.salad.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.co.salad.manager.service.MngDashboardService;
import kr.co.salad.manager.service.MngLoginService;
import kr.co.salad.manager.vo.MngLoginVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.PrintWriter;
import java.lang.System.Logger;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@SessionAttributes("mngId")
@Controller
public class MngLoginController {
	
	@Autowired(required = false)
	private MngLoginService service;
	
	@Autowired(required = false)
	private MngDashboardService service1;
	
	
	//메인 로그인 화면
	@RequestMapping(value = "/mng_index.do",method = GET)
	public String mngMainRequest() {
		
		return "manager/login/mng_login";
	}
	
	//로그인 시 대시보드로 이동
	@RequestMapping(value = "/mng_login.do",method = {GET,POST})
	public String mngMainRequest(MngLoginVO mlVO,Model model) {
		boolean loginFlag=false;
		String loginURL="manager/login/mng_login";

		MngLoginVO loginMlVO = new MngLoginVO(mlVO.getMngId(), mlVO.getMngPass());
		
		System.out.println("입력한 아이디/비번 :"+loginMlVO);
		
		loginFlag=service.searchLogin(loginMlVO); //관리자 맞냐
		System.out.println("마지막 확인"+loginFlag);
		if(loginFlag==true) {
			loginURL="manager/dashboard/mng_dashboard";
			model.addAttribute("mngId",mlVO.getMngId()); //세션만들기
			
			//대시 보드 => 이번달, 오늘 판매 금액 구하기
			String payDay ="month";
			int pay=0;
			pay=service1.searchTotalPrice(payDay); 
			//System.out.println(pay);		
			model.addAttribute("payDayM", pay);
			
			payDay ="today";
			pay=0;
			pay=service1.searchTotalPrice(payDay); 
			
			model.addAttribute("payDayT", pay);
			
			//대시 보드 => 이번달, 오늘 주문 건수 구하기
			String orderDay ="month";
			int order = 0;
			order=service1.searchTotalOrder(orderDay);
			//System.out.println(order);
			model.addAttribute("orderDayM",order);
			
			orderDay="today";
			order=0;
			order=service1.searchTotalOrder(orderDay);
			model.addAttribute("orderDayT",order);
			
			//대시 보드 => 총,가입,탈퇴 회원 수 구하기
			String memberStatus="total";
			int memberCnt=0;
			memberCnt=service1.searchTotalMember(memberStatus);
			model.addAttribute("memberStatusT", memberCnt);
			
			memberStatus="join";
			memberCnt=0;
			memberCnt=service1.searchTotalMember(memberStatus);
			model.addAttribute("memberStatusJ", memberCnt);
			
			memberStatus="out";
			memberCnt=0;
			memberCnt=service1.searchTotalMember(memberStatus);
			model.addAttribute("memberStatusO", memberCnt);
			
			//대시 보드 => 답변,미답변 후기 수 구하기
			String answerStatus="yesAnswer";
			int answerCnt=0;
			answerCnt=service1.searchTotalAnswer(answerStatus);
			model.addAttribute("answerStatusY", answerCnt);
			
			answerStatus="noAnswer";
			answerCnt=0;
			answerCnt=service1.searchTotalAnswer(answerStatus);
			model.addAttribute("answerStatusN", answerCnt);
			
			//대시 보드 => 메인 카테고리별 판매 수 구하기
			String category="정기배송";
			int categoryCnt=0;
			categoryCnt=service1.searchCategorySale(category);
			model.addAttribute("category1", categoryCnt);
			
			category="샐러드";
			categoryCnt=0;
			categoryCnt=service1.searchCategorySale(category);
			model.addAttribute("category2", categoryCnt);
			
			category="간편식";
			categoryCnt=0;
			categoryCnt=service1.searchCategorySale(category);
			model.addAttribute("category3", categoryCnt);
			
			category="닭가슴살&간식";
			categoryCnt=0;
			categoryCnt=service1.searchCategorySale(category);
			model.addAttribute("category4", categoryCnt);
		
			System.out.println("마지막 2 확인"+loginFlag);
		return loginURL; 
	} 	else if (loginFlag==false) {
		model.addAttribute("msg","올바르게 입력해주세요");
		return loginURL;		
	}
		return loginURL;
	}
	
	//로그아웃
		@RequestMapping(value="/mng_logout.do",method = GET)
		public String logoutProcess(SessionStatus ss) {
		
			ss.setComplete();
			
			return "manager/login/mng_login";
	}
	
	
	
	 //로그아웃 시 로그인 창으로 이동 //세션이 안사라지는 문제 발견
//	@RequestMapping(value="/mng_logout.do", method = GET)
//	 public String mngLogout(HttpServletRequest request) {
//	 
//	 HttpSession session = request.getSession();
//	 session.removeAttribute("mngId");
//	 session.invalidate(); 
//	 //session을 제거할 수 있는 메서드는 총 2개 
//	 //( invalidate():세션 전체 무효화 , removeAttribute() : 특정 이름으로 네이밍한 session객체를 타겟팅하여 삭제)
//	 
//	 //세션 무효화 확인하는 법
//		/*
//		 * Enumeration<?> attrName = session.getAttributeNames(); while
//		 * (attrName.hasMoreElements()) { String attr = (String) attrName.nextElement();
//		 * System.out.println(session.getAttribute(attr)); }
//		 */
//	 //끝
//	  
//	  return "manager/login/mng_login";
//	 
//	  }
	 
	
	
	
	/*
	 * //로그인 시 대시보드로 이동
	 * 
	 * @RequestMapping(value="/mng_login.do",method = GET) public String
	 * mngLoginProcess() { return "manager/dashboard/mng_dashboard"; }
	 */
	
	
	
	/*
	 * //로그인 처리 public ModelAndView mngLoginCheck(@ModelAttribute String
	 * mngId,HttpSession session) { MngLoginService mngLoginService = new
	 * MngLoginService();
	 * 
	 * boolean result = mngLoginService.mngLoginCheck(mngId, session); ModelAndView
	 * mav = new ModelAndView(); if(result == true) {
	 * mav.setViewName("manager/login/mng_login"); mav.addObject("msg","로그인 성공"); }
	 * else { mav.setViewName("manager/dashboard/mng_dashboard");
	 * mav.addObject("msg","로그인 실패"); } return mav; }//
	 * 
	 * //로그아웃 처리
	 * 
	 * @RequestMapping("mngLogout.do") public ModelAndView mngLogout(String
	 * mngId,HttpSession session) { MngLoginService mngLoginService = new
	 * MngLoginService();
	 * 
	 * mngLoginService.mngLogout(mngId,session); ModelAndView mav = new
	 * ModelAndView(); mav.setViewName("manager/login/mng_logout");
	 * mav.addObject("msg","로그아웃 성공"); return mav; }//
	 */	 
	

}
