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
	
	
	//후기 메인
	@RequestMapping(value = "mypage_goods_review.do",method = GET) 
	public String seachMyRev(HttpSession session, MyRevVO mrVO,Model model) { 
		String chkURL=null;
		String userId=(String)session.getAttribute("userId"); //세션 가져오기
		
	if(userId==null) { //로그인이 안되어있는경우 - 로그인화면으로 이동
		chkURL="redirect:http://localhost/salad_mvc/login.do";
	  	model.addAttribute("eMsg", "로그인을 해주세요"); 
	}else{ //로그인이 되어어있는 경우
		chkURL="user/mypage/main_passChk"; model.addAttribute("userId", userId); }
	
	return chkURL; 
	}
	
	
	//후기 리스트
	@RequestMapping(value = "mypage_review_list.do",method = GET)
	public String searchMyRevlist(HttpSession session, MyRevVO mrVO, Model model) {
		return "user/mypage/mypage_review_list"; //list 
	}
	
	
	//나의 후기 리스트 ajax
	@ResponseBody
	@RequestMapping(value="myrev_list_ajax.do", method=GET, produces="application/json; charset=UTF-8") 
	public String searchRevListAjax(MyRevVO mrVO) { //리뷰 리스트 String
	  String jsonObj=mrService.searchMyRevList(mrVO);//현재 페이지,검색명
	  System.out.println(jsonObj); 
	  
	return jsonObj; }//searchRevListAjax
	  
	
	//후기 상세보기
	@RequestMapping(value = "/mypage_review_view.do",method = GET) 
	public String seachMyRevDetail(HttpSession session,int revNum,Model model) {
		MyRevDomain mrDomain=mrService.searchMyRevDetail(revNum);
		
		//가격 계산
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
	  
	
	
	//후기 수정
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
	 
	  
	//후기 삭제
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
