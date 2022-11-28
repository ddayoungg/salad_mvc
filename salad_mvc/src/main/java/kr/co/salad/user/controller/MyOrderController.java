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

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MyOrderService;
import kr.co.salad.user.vo.CartVO;
import kr.co.salad.user.vo.MyOrderVO;

@Controller
public class MyOrderController {
	
	@Autowired(required = false)
	private KategoriePrdService kpService;

	@Autowired(required = false)
	private MyOrderService mos;
	
	@RequestMapping(value = "/order_list.do", method = GET)
	public String MyOrderList(HttpSession session, Model model) {
		String url = "user/mypage/order_list";
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/login.do";
			model.addAttribute("eMsg", "�α����� ���ּ���."); 
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId); 
		}//end else*/
		//model.addAttribute("userId", "test");
		
		//��ü ī�װ�
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		
		return url;
	}//MyOrderList
	
	@ResponseBody
	@RequestMapping(value="/my_order_list_ajax.do", method= {GET, POST}, produces="application/json; charset=UTF-8")
	public String MyOrderListAjax(HttpSession session, MyOrderVO mcVO) { 
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		//String userId = "test";
		mcVO.setId(userId);
		
		MyOrderService mos = new MyOrderService();
		String jsonObj=mos.searchMyOrderListJson(mcVO);//�� ����Ʈ
		return jsonObj;
	}//MyCancelListAjax
	
	@ResponseBody
	@RequestMapping(value = "/cancel_order.do", method = GET, produces="application/json; charset=UTF-8")
	public void cancelOrderProcess(HttpSession session, MyOrderVO moVO) {
		moVO.setId((String)session.getAttribute("userId"));//���� ��������
		mos.cancelOrder(moVO);
	}//editCartCntProcess

}//class
