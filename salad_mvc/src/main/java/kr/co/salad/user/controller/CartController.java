package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.salad.user.domain.CartDomain;
import kr.co.salad.user.domain.CartListDomain;
import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.CartService;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.vo.CartVO;

@Controller
public class CartController {
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	// ��ٱ���
	@RequestMapping(value = "/cart.do",method = GET)
	public String cartList(HttpSession session, Model model) {
		
		String url = "user/order/cart";
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		//��ü ī�װ�
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		
		CartService cs = new CartService();
		List<CartDomain> cartList = cs.searchCart(userId);
//		List<CartDomain> cartList = cs.searchCart("test");
		model.addAttribute("cartList", cartList);
		return url;
	}//cartList
	
	// ��ٱ��� ����
	@RequestMapping(value = "/remove_cart_process.do", method = GET)
	public String removeCartProcess(CartListDomain cld) {
		CartService cs = new CartService();
		cs.removeCart(cld.getOrders());
		return "redirect:/cart.do?id=test";
	}//removeCartProcess
	
	// ��ٱ��� ���� ����
	@RequestMapping(value = "/edit_cart_cnt.do", method = GET)
	public String editCartCntProcess(CartVO cVO) {
		CartService cs = new CartService();
		cs.updateCnt(cVO);
		return "redirect:/cart.do?id=test";
	}//editCartCntProcess
	
}//class
