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
	
	//���� �ֹ� ����Ʈ ȭ��
	@RequestMapping(value = "/mng_order_main.do",method = GET)
	public String mOrderMain(HttpSession session, Model model) {
		String url="/manager/order/mng_order_main";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://localhost/salad_mvc/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
		MngOrderService mds = new MngOrderService();
		model.addAttribute("orderList", mds.searchOrderList());
		return url;
	}//mOrderMain
	
	//�α��� �� ��ú���� �̵�
	@RequestMapping(value="/mng_order_detail.do",method = GET)
	public String mOrderDetail(HttpSession session, MngOrderDomain mod, Model model) {
		String url="/manager/order/mng_order_detail";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://localhost/salad_mvc/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
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
