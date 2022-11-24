package kr.co.salad.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.ReviewDomain;
import kr.co.salad.user.service.ReviewService;
import kr.co.salad.user.vo.ReviewVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import org.springframework.beans.factory.annotation.Autowired;
@Controller
public class ReviewController {
	
	@Autowired(required = false)
	private ReviewService revService;
	
	//리얼후기 전체리스트
	@RequestMapping(value = "goodsreview_list.do",method =GET )
	public String ReviewRequest(ReviewVO revVO, Model model) {
		return "user/board/goodsreview_list";
	}
	
	
	@RequestMapping(value="goodsreview_list.ajax.do", method=GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchRevListAjax(ReviewVO revVO) {
		//리얼후기 전체리스트
		String jsonObj=revService.searchRevList(revVO);
		System.out.println(jsonObj);
		return jsonObj;
	}//searchRevListAjax
	
	
	//후기관리 상세보기
	@RequestMapping(value = "goodsreview_view.do",method =GET )
	public String ReviewDetail(int revNum, Model model) {
		ReviewDomain revDomain=revService.searchRevDetail(revNum);
		//revService.updateNotiCount(notiNum);
		
		
		//가격 계산
		double disCountPro=revDomain.getPrdDiscount()*0.01;
		double disCount= revDomain.getPrdPrice()*disCountPro;
		double price=revDomain.getPrdPrice()-disCount;
		
		model.addAttribute("revNum", revDomain.getRevNum());
		model.addAttribute("revTitle", revDomain.getRevTitle());
		model.addAttribute("revName", revDomain.getName());
		model.addAttribute("revWriteDate", revDomain.getRevWriteDate());
		model.addAttribute("revHits", revDomain.getRevHits());
		model.addAttribute("prdBodyThum",revDomain.getPrdBodyThum());
		model.addAttribute("prdName", revDomain.getPrdName());
		model.addAttribute("price", price);
		model.addAttribute("revImg", revDomain.getRevImg());
		model.addAttribute("revCont", revDomain.getRevCont());
		
		return "user/board/goodsreview_view";
	}
}
