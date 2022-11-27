package kr.co.salad.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.salad.manager.domain.MngOrderDomain;
import kr.co.salad.manager.domain.MngOrderPrdDomain;
import kr.co.salad.manager.service.MngDashboardService;
import kr.co.salad.manager.service.MngOrderService;
import kr.co.salad.manager.vo.MngOrderVO;

@Controller
public class MngOrderController {
	
	@Autowired(required = false)
	private MngDashboardService service;
	
	//���� �ֹ� ����Ʈ ȭ��
	@RequestMapping(value = "/mng_order_main.do",method = GET)
	public String mOrderMain(HttpSession session, Model model) {
		String url="/manager/order/mng_order_main";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
		//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
		String orderDay ="month";
		int order = 0;
		order=service.searchTotalOrder(orderDay);
		model.addAttribute("orderDayM",order);
		
		orderDay="today";
		order=0;
		order=service.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
		
		return url;
	}//mOrderMain
	
	@ResponseBody
	@RequestMapping(value="/my_order_list_ajax111.do", method= {GET, POST}, produces="application/json; charset=UTF-8")
	public String myOrderListAjax(HttpSession session,MngOrderVO moVO) {
		String userId=(String)session.getAttribute("userId");//���� ��������
		moVO.setId(userId);
		MngOrderService mos = new MngOrderService();
		String jsonObj = mos.searchOrderList(moVO);
		System.out.println("jsonObj"+jsonObj);
		return jsonObj;
	}//MyCancelListAjax
	
	//�α��� �� ��ú���� �̵�
	@RequestMapping(value="/mng_order_detail.do",method = GET)
	public String mOrderDetail(HttpSession session, MngOrderDomain mod, Model model) {
		String url="/manager/order/mng_order_detail";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
		//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
		String orderDay ="month";
		int order = 0;
		order=service.searchTotalOrder(orderDay);
		model.addAttribute("orderDayM",order);
		
		orderDay="today";
		order=0;
		order=service.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
		
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
