package kr.co.salad.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.manager.service.MngDashboardService;
import kr.co.salad.manager.service.MngLoginService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpSession;

@SessionAttributes("mngId")
@Controller
public class MngDashboardController {
	
	@Autowired(required = false)
	private MngDashboardService service1;
	
	//사이드 메뉴 대시보드 누르면 세션 유지된 채로 이동
	@RequestMapping(value="/mng_dashboard.do",method= {GET,POST})
	public String dashMainRequest(HttpSession session,Model model) {
		String url=null;
		String mngid = (String)session.getAttribute("mngId");
		
		if(mngid==null) {
			url= "redirect:http://localhost/salad_mvc/mng_index.do";
		} else if (mngid.equals("admin")) {
		
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
				
				url= "manager/dashboard/mng_dashboard";
		}
		return url;		
	}//
		
}
