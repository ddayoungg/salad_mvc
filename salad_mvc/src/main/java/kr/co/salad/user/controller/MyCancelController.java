package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.CcDeliveryDomain;
import kr.co.salad.user.domain.CcMemberDomain;
import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.domain.MyCancelDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MyCancelService;
import kr.co.salad.user.service.WishService;
import kr.co.salad.user.vo.MyCancelVO;
import kr.co.salad.user.vo.WishVO;

/**
 * 상품상세보기
 * @author user
 *
 */
@SessionAttributes({"userId", "userName"})
@Controller
public class MyCancelController {
	
	@Autowired(required = false)
	private MyCancelService mcService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	@RequestMapping(value="/mypage/cancel_list.do", method= {GET, POST})//
	public String searchMyCancelListForm(HttpSession session, Model model) { 
		String url="user/mypage/cancel_list";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/login.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		//전체 카테고리
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		
		model.addAttribute("mainCateList", mainCateList);//메인 메뉴
		
		return url;
	}//wishListForm
	
	@ResponseBody
	@RequestMapping(value="/mypage/my_cancel_list_ajax.do", method= {GET, POST}, produces="application/json; charset=UTF-8")
	public String myCancelListAjax(HttpSession session, MyCancelVO mcVO ) { //나의 취소 내역 리스트
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		
		mcVO.setId(userId);
		String jsonObj=mcService.searchMyOrderListJson(mcVO);//나의 취소 내역 리스트
		
		return jsonObj;
	}//MyCancelListAjax
	
	@RequestMapping(value="/my_order_detail.do", method= GET)
	public String searchMyCancelDetailForm(HttpSession session, MyCancelVO mcVO, Model model) {//취소 상세 페이지
		String url="user/board/popup_order_detail";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/login.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		mcVO.setId(userId);
		
		//주문 리스트
		List<MyCancelDomain> orderList=mcService.searchMyOrderDetailList(mcVO);
		
		model.addAttribute("orderList", orderList);
		
		//주문 리스트 총 합계 계산
		MyCancelDomain totalPrice=mcService.searchMyCcOrderTotalPrice(orderList);
		
		model.addAttribute("totalPrice", totalPrice);
		
		//기본 배송지 여부
		String existAddrFlag=mcService.searchCcExistAddrFlag(mcVO);
		
		model.addAttribute("existAddrFlag", existAddrFlag);
		
		//회원 정보
		CcMemberDomain cmDomain=mcService.searchMyInfoDetail(mcVO);
		
		model.addAttribute("myData", cmDomain);
		//배송 정보
		CcDeliveryDomain cdDomain=mcService.searchMyCcDeliDetail(mcVO);
		
		model.addAttribute("deliData", cdDomain);
		
		return url;
	}//searchMyCancelDetailForm
	
}//class
