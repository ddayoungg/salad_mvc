package kr.co.salad.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.domain.PrdDetailRevDomain;
import kr.co.salad.user.service.PrdDetailCartService;
import kr.co.salad.user.service.PrdDetailService;
import kr.co.salad.user.service.PrdDetailQnaService;
import kr.co.salad.user.service.PrdDetailRevService;
import kr.co.salad.user.vo.PrdDetailCartVO;
import kr.co.salad.user.vo.PrdDetailVO;
import kr.co.salad.user.vo.PrdDetailQnaVO;
import kr.co.salad.user.vo.PrdDetailRevVO;
import kr.co.salad.user.vo.WishVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

/**
 * 상품상세보기
 * @author user
 *
 */
@SessionAttributes({"userId", "userName"})
@Controller
public class PrdDetailCartController {
	
	@Autowired(required = false)
	private PrdDetailCartService pdcService;
	
	@ResponseBody
	@RequestMapping(value="/goods/add_cart_process.do", method=GET, produces="application/json; charset=UTF-8")
	public String addCartProcess(HttpSession session, PrdDetailCartVO pdcVO, Model model) {//장바구니 추가
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		
		pdcVO.setId(userId);
		
		String jsonObj=""; //물품 수량 추가
		//해당 제품이 장바구니에 있는지 확인 : true : 등록됨, false : 등록 안됨.
		if(pdcService.searchCartChk(pdcVO)) {
			jsonObj=pdcService.editCartPrdCnt(pdcVO);
		}else {
			jsonObj=pdcService.addCart(pdcVO);
		}//end if
		
		return jsonObj;
	}//addCartProcess
	
	@ResponseBody
	@RequestMapping(value="/mypage/add_cart_wish_process.do", method= GET, produces="application/json; charset=UTF-8")
	public String addCartWishProcess(HttpSession session, PrdDetailCartVO pdcVO, Model model) {
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			//url="redirect:http://localhost/salad_mvc/login.do";
			//model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		pdcVO.setId(userId);
		System.out.println(pdcVO);
		String jsonObj=pdcService.addCartWish(pdcVO);//찜 목록에서 장바구니 추가
		
		return jsonObj;
	}//addCartWishProcess
	
}//class
