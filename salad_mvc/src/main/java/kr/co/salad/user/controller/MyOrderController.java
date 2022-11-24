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
import kr.co.salad.user.vo.MyOrderVO;

@Controller
public class MyOrderController {
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	@RequestMapping(value = "/order_list.do", method = GET)
	public String MyOrderList(HttpSession session, Model model) {
		String url = "user/mypage/order_list";
		
		String mngId=(String)session.getAttribute("userId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://localhost/salad_mvc/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
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
		MyOrderService mcService = new MyOrderService();
		String jsonObj=mcService.searchMyOrderListJson(mcVO);//�� ����Ʈ
		
		return jsonObj;
	}//MyCancelListAjax

}//class
