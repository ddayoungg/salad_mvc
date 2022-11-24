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
	
	//���̵� �޴� ��ú��� ������ ���� ������ ä�� �̵�
	@RequestMapping(value="/mng_dashboard.do",method= {GET,POST})
	public String dashMainRequest(HttpSession session,Model model) {
		String url=null;
		String mngid = (String)session.getAttribute("mngId");
		
		if(mngid==null) {
			url= "redirect:http://localhost/salad_mvc/mng_index.do";
		} else if (mngid.equals("admin")) {
		
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
				
				url= "manager/dashboard/mng_dashboard";
		}
		return url;		
	}//
		
}
