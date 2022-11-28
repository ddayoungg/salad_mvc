package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.domain.MyDeliDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MyDeliService;
import kr.co.salad.user.vo.MyDeliVO;

@Controller
public class MyDeliController {
	
	@Autowired(required = false)
	private MyDeliService mdService;
	

	@Autowired(required = false)
	private KategoriePrdService kpService;

	
	
	//배송지 화면
	@RequestMapping(value = "mypage_deli.do",method = GET)
	public String searchDeli(HttpSession session,Model model) {
		String url=null;
		String userId=(String) session.getAttribute("userId");
		if(userId==null) {
			url="redirect:http://salad.sist.co.kr/login.do";
			model.addAttribute("eMsg", "로그인을해주세요");
		}else {
			MyDeliDomain mdDomain=mdService.searchDeli(userId);
			List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
			model.addAttribute("mainCateList",mainCateList);
			model.addAttribute("mdDomain",mdDomain);
			url="/user/mypage/shipping";
		}
		return url;
	}

	//배송지 수정 팝업
	@RequestMapping(value = "delipopup.do",method = GET)
	public String DeliPopup(HttpSession session,String id,Model model) {
		String userId=(String) session.getAttribute("userId");
		MyDeliDomain mdDomain=mdService.searchDeli(userId);
		model.addAttribute("mdDomain",mdDomain);
		return "/user/mypage/deli_popup";
	}
	
	//배송지 수정
	@RequestMapping(value = "mypage_deli_edit_process.do",method = POST)
	public String editDeliProcess(HttpSession session,MyDeliVO mdVO ,Model model) {
		MyDeliVO dbmdVO=mdVO;
		String userId=(String) session.getAttribute("userId");
		dbmdVO.setId(userId); //세션대신 
		int resultFlag=mdService.editDeli(dbmdVO);
		model.addAttribute("eMsg", true);
		return "redirect:http://salad.sist.co.kr/delipopup.do";
	}
	

}
