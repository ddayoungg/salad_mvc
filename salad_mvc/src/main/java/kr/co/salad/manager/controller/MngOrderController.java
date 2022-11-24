package kr.co.salad.manager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.salad.manager.domain.MngOrderDomain;
import kr.co.salad.manager.domain.MngOrderPrdDomain;
import kr.co.salad.manager.service.MngOrderService;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
public class MngOrderController {
	
	//메인 주문 리스트 화면
	@RequestMapping(value = "/mng_order_main.do",method = GET)
	public String mOrderMain(HttpSession session, Model model) {
		String url="/manager/order/mng_order_main";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://localhost/salad_mvc/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		MngOrderService mds = new MngOrderService();
		model.addAttribute("orderList", mds.searchOrderList());
		return url;
	}//mOrderMain
	
	//로그인 시 대시보드로 이동
	@RequestMapping(value="/mng_order_detail.do",method = GET)
	public String mOrderDetail(HttpSession session, MngOrderDomain mod, Model model) {
		String url="/manager/order/mng_order_detail";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://localhost/salad_mvc/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		MngOrderService mds = new MngOrderService();
		
		List<MngOrderPrdDomain> orderPrdList = mds.searchOrderPrd(mod.getOrderNum());
		model.addAttribute("orderPrdList", orderPrdList);
		
		MngOrderDomain memberInfo = mds.searchOrderMember(mod.getOrderNum());
		model.addAttribute("memberInfo", memberInfo);

		if("1".equals(mod.getExistAddrFlag())) {
			MngOrderDomain deliInfo = mds.searchOrderDeli(mod.getOrderNum());
			model.addAttribute("deliInfo", deliInfo);
		}
		
		return url;
	}//mOrderDetail

}
