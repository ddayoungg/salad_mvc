package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.salad.user.domain.CartDomain;
import kr.co.salad.user.domain.CartListDomain;
import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.domain.OrderDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.OrderService;
import kr.co.salad.user.vo.OrderVO;

@Controller
public class OrderController {
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	// �ֹ� �� ȭ��
	@RequestMapping(value = "/order.do", method = GET)
	public String orderRequest(HttpSession session, CartListDomain cld, Model model) {
		String url = "user/order/order";
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
		url="redirect:http://salad.sist.co.kr/login.do";
		model.addAttribute("eMsg", "�α����� ���ּ���."); } else {//�α����� �Ǿ�������
		model.addAttribute("userId", userId); }//end else
				
		//String userId = "test";
		
		//��ü ī�װ�
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		
		OrderService os = new OrderService();
		
		List<CartDomain> cartList = os.searchOrderPrd(cld.getOrders());
		model.addAttribute("cartList", cartList);
		
		//String id="test";
		OrderDomain orderInfo = os.searchMyInfo(userId);
		model.addAttribute("orderInfo", orderInfo);
		
		return url;
	}//orderRequest

	// ���� ��ư ó��
	@RequestMapping(value = "/add_order_process.do", method = GET)
	public String addOrderProcess(OrderVO oVO, CartListDomain cld, OrderDomain od, Model model) {
		OrderService os = new OrderService();
		
		os.addOrder(oVO);
		if(oVO.getExistAddrFlag().equals("1")) {// ���ο� ����� 
			os.addDeli(oVO); 
		}
		
		os.addOrderDetail(cld.getOrders());
		
		Date orderDate = os.searchOrderDate(oVO.getOrderNum());
		od.setOrderDate(orderDate);
		
		model.addAttribute("orderVO", oVO);
		model.addAttribute("od", od);
		System.out.println("oVO : "+oVO);
		System.out.println("od : "+od);
		return "user/order/order_result";
	}//addOrderProcess
	
}//class
