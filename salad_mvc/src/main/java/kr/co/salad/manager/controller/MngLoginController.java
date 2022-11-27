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
	
	
	//���� �α��� ȭ��
	@RequestMapping(value = "/mng_index.do",method = GET)
	public String mngMainRequest() {
		
		return "manager/login/mng_login";
	}
	
	//�α��� �� ��ú���� �̵�
	@RequestMapping(value = "/mng_login.do",method = {GET,POST})
	public String mngMainRequest(MngLoginVO mlVO,Model model) {
		boolean loginFlag=false;
		String loginURL="manager/login/mng_login";

		MngLoginVO loginMlVO = new MngLoginVO(mlVO.getMngId(), mlVO.getMngPass());
		
		System.out.println("�Է��� ���̵�/��� :"+loginMlVO);
		
		loginFlag=service.searchLogin(loginMlVO); //������ �³�
		System.out.println("������ Ȯ��"+loginFlag);
		if(loginFlag==true) {
			loginURL="manager/dashboard/mng_dashboard";
			model.addAttribute("mngId",mlVO.getMngId()); //���Ǹ����
			
			//��� ���� => �̹���, ���� �Ǹ� �ݾ� ���ϱ�
			String payDay ="month";
			int pay=0;
			pay=service1.searchTotalPrice(payDay); 
			//System.out.println(pay);		
			model.addAttribute("payDayM", pay);
			
			payDay ="today";
			pay=0;
			pay=service1.searchTotalPrice(payDay); 
			
			model.addAttribute("payDayT", pay);
			
			//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
			String orderDay ="month";
			int order = 0;
			order=service1.searchTotalOrder(orderDay);
			//System.out.println(order);
			model.addAttribute("orderDayM",order);
			
			orderDay="today";
			order=0;
			order=service1.searchTotalOrder(orderDay);
			model.addAttribute("orderDayT",order);
			
			//��� ���� => ��,����,Ż�� ȸ�� �� ���ϱ�
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
			
			//��� ���� => �亯,�̴亯 �ı� �� ���ϱ�
			String answerStatus="yesAnswer";
			int answerCnt=0;
			answerCnt=service1.searchTotalAnswer(answerStatus);
			model.addAttribute("answerStatusY", answerCnt);
			
			answerStatus="noAnswer";
			answerCnt=0;
			answerCnt=service1.searchTotalAnswer(answerStatus);
			model.addAttribute("answerStatusN", answerCnt);
			
			//��� ���� => ���� ī�װ��� �Ǹ� �� ���ϱ�
			String category="������";
			int categoryCnt=0;
			categoryCnt=service1.searchCategorySale(category);
			model.addAttribute("category1", categoryCnt);
			
			category="������";
			categoryCnt=0;
			categoryCnt=service1.searchCategorySale(category);
			model.addAttribute("category2", categoryCnt);
			
			category="�����";
			categoryCnt=0;
			categoryCnt=service1.searchCategorySale(category);
			model.addAttribute("category3", categoryCnt);
			
			category="�߰�����&����";
			categoryCnt=0;
			categoryCnt=service1.searchCategorySale(category);
			model.addAttribute("category4", categoryCnt);
		
			System.out.println("������ 2 Ȯ��"+loginFlag);
		return loginURL; 
	} 	else if (loginFlag==false) {
		model.addAttribute("msg","�ùٸ��� �Է����ּ���");
		return loginURL;		
	}
		return loginURL;
	}
	
	//�α׾ƿ�
		@RequestMapping(value="/mng_logout.do",method = GET)
		public String logoutProcess(SessionStatus ss) {
		
			ss.setComplete();
			
			return "manager/login/mng_login";
	}
	
	
	
	 //�α׾ƿ� �� �α��� â���� �̵� //������ �Ȼ������ ���� �߰�
//	@RequestMapping(value="/mng_logout.do", method = GET)
//	 public String mngLogout(HttpServletRequest request) {
//	 
//	 HttpSession session = request.getSession();
//	 session.removeAttribute("mngId");
//	 session.invalidate(); 
//	 //session�� ������ �� �ִ� �޼���� �� 2�� 
//	 //( invalidate():���� ��ü ��ȿȭ , removeAttribute() : Ư�� �̸����� ���̹��� session��ü�� Ÿ�����Ͽ� ����)
//	 
//	 //���� ��ȿȭ Ȯ���ϴ� ��
//		/*
//		 * Enumeration<?> attrName = session.getAttributeNames(); while
//		 * (attrName.hasMoreElements()) { String attr = (String) attrName.nextElement();
//		 * System.out.println(session.getAttribute(attr)); }
//		 */
//	 //��
//	  
//	  return "manager/login/mng_login";
//	 
//	  }
	 
	
	
	
	/*
	 * //�α��� �� ��ú���� �̵�
	 * 
	 * @RequestMapping(value="/mng_login.do",method = GET) public String
	 * mngLoginProcess() { return "manager/dashboard/mng_dashboard"; }
	 */
	
	
	
	/*
	 * //�α��� ó�� public ModelAndView mngLoginCheck(@ModelAttribute String
	 * mngId,HttpSession session) { MngLoginService mngLoginService = new
	 * MngLoginService();
	 * 
	 * boolean result = mngLoginService.mngLoginCheck(mngId, session); ModelAndView
	 * mav = new ModelAndView(); if(result == true) {
	 * mav.setViewName("manager/login/mng_login"); mav.addObject("msg","�α��� ����"); }
	 * else { mav.setViewName("manager/dashboard/mng_dashboard");
	 * mav.addObject("msg","�α��� ����"); } return mav; }//
	 * 
	 * //�α׾ƿ� ó��
	 * 
	 * @RequestMapping("mngLogout.do") public ModelAndView mngLogout(String
	 * mngId,HttpSession session) { MngLoginService mngLoginService = new
	 * MngLoginService();
	 * 
	 * mngLoginService.mngLogout(mngId,session); ModelAndView mav = new
	 * ModelAndView(); mav.setViewName("manager/login/mng_logout");
	 * mav.addObject("msg","�α׾ƿ� ����"); return mav; }//
	 */	 
	

}
