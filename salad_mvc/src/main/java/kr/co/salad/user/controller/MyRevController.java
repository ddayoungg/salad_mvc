package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.MyRevDomain;
import kr.co.salad.user.service.MyRevService;
import kr.co.salad.user.vo.MyRevVO;
@SessionAttributes({"userId","userName"})
@Controller
public class MyRevController {
	
	@Autowired(required = false)
	private MyRevService mrService;
	
	
	//�ı� ����
	@RequestMapping(value = "mypage_goods_review.do",method = GET) 
	public String seachMyRev(HttpSession session, MyRevVO mrVO,Model model) { 
		String chkURL=null;
		String userId=(String)session.getAttribute("userId"); //���� ��������
		
	if(userId==null) { //�α����� �ȵǾ��ִ°�� - �α���ȭ������ �̵�
		chkURL="redirect:http://localhost/salad_mvc/login.do";
	  	model.addAttribute("eMsg", "�α����� ���ּ���"); 
	}else{ //�α����� �Ǿ���ִ� ���
		chkURL="user/mypage/main_passChk"; model.addAttribute("userId", userId); }
	
	return chkURL; 
	}
	
	
	//�ı� ����Ʈ
	@RequestMapping(value = "mypage_review_list.do",method = GET)
	public String searchMyRevlist(HttpSession session, MyRevVO mrVO, Model model) {
		return "user/mypage/mypage_review_list"; //list 
	}
	
	
	//���� �ı� ����Ʈ ajax
	@ResponseBody
	@RequestMapping(value="myrev_list_ajax.do", method=GET, produces="application/json; charset=UTF-8") 
	public String searchRevListAjax(MyRevVO mrVO) { //���� ����Ʈ String
	  String jsonObj=mrService.searchMyRevList(mrVO);//���� ������,�˻���
	  System.out.println(jsonObj); 
	  
	return jsonObj; }//searchRevListAjax
	  
	
	//�ı� �󼼺���
	@RequestMapping(value = "/mypage_review_view.do",method = GET) 
	public String seachMyRevDetail(HttpSession session,int revNum,Model model) {
		MyRevDomain mrDomain=mrService.searchMyRevDetail(revNum);
		
		//���� ���
		double disCountPro=mrDomain.getPrdDiscount()*0.01;
		double disCount= mrDomain.getPrdPrice()*disCountPro;
		double price=mrDomain.getPrdPrice()-disCount;
		
		model.addAttribute("revNum", mrDomain.getRevNum());
		model.addAttribute("revNum", mrDomain.getRevNum());
		model.addAttribute("revTitle", mrDomain.getRevTitle());
		model.addAttribute("revName", mrDomain.getName());
		model.addAttribute("revWriteDate", mrDomain.getRevWriteDate());
		model.addAttribute("revHits", mrDomain.getRevHits());
		model.addAttribute("prdBodyThum",mrDomain.getPrdBodyThum());
		model.addAttribute("prdName", mrDomain.getPrdName());
		model.addAttribute("price", price);
		model.addAttribute("revImg", mrDomain.getRevImg());
		model.addAttribute("revCont", mrDomain.getRevCont());
		
	return "/user/mypage/mypage_review_view"; 
	} 
	  
	
	
	//�ı� ����
//	@RequestMapping(value = "/mypage_review_view.do",method = GET) 
//	public String editMyRevProcess(HttpSession session, HttpServletRequest request,Model model) {
//		String edURL="redirect:http://localhost/salad_mvc/.do";
//		MyRevVO edVO = new MyRevVO();
//	edVO.setRevNum(edVO.getRevNum());	
//	edVO.setRevNum(edVO.getRevTitle());	
//	edVO.setRevNum(edVO.getRevCont());	
//	edVO.setRevNum(edVO.getRevImg());
//	int edFlag=mrService. editMyRev(meVO);
//	if(edFlag == 1) {
//		edURL="redirect:http://localhost/salad_mvc/.do";	
//	}else {
//	
//	}
//	return edURL;
	
//	return "/user/mypage/mypage_review_view"; 
//	}
	 
	  
	//�ı� ����
//	@RequestMapping(value = "/mypage_review_view.do",method = GET) 
//	public String removeNoticeProcess(HttpSession session, int revNum, Model model) {
//		String nextURL="redirect:http://localhost/salad_mvc/.do";
//		int removeFlag=mrService.removeMyRev(revNum);
//		if(removeFlag==1) {
//			nextURL="redirect:http://localhost/salad_mvc/mypage_review_view.do";
//		}else {		
//		}
//		return nextURL;
//	}
}
