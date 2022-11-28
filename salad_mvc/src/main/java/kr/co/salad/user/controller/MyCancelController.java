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
 * ��ǰ�󼼺���
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
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/login.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		//��ü ī�װ�
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		
		return url;
	}//wishListForm
	
	@ResponseBody
	@RequestMapping(value="/mypage/my_cancel_list_ajax.do", method= {GET, POST}, produces="application/json; charset=UTF-8")
	public String myCancelListAjax(HttpSession session, MyCancelVO mcVO ) { //���� ��� ���� ����Ʈ
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		
		mcVO.setId(userId);
		String jsonObj=mcService.searchMyOrderListJson(mcVO);//���� ��� ���� ����Ʈ
		
		return jsonObj;
	}//MyCancelListAjax
	
	@RequestMapping(value="/my_order_detail.do", method= GET)
	public String searchMyCancelDetailForm(HttpSession session, MyCancelVO mcVO, Model model) {//��� �� ������
		String url="user/board/popup_order_detail";
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/login.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		mcVO.setId(userId);
		
		//�ֹ� ����Ʈ
		List<MyCancelDomain> orderList=mcService.searchMyOrderDetailList(mcVO);
		
		model.addAttribute("orderList", orderList);
		
		//�ֹ� ����Ʈ �� �հ� ���
		MyCancelDomain totalPrice=mcService.searchMyCcOrderTotalPrice(orderList);
		
		model.addAttribute("totalPrice", totalPrice);
		
		//�⺻ ����� ����
		String existAddrFlag=mcService.searchCcExistAddrFlag(mcVO);
		
		model.addAttribute("existAddrFlag", existAddrFlag);
		
		//ȸ�� ����
		CcMemberDomain cmDomain=mcService.searchMyInfoDetail(mcVO);
		
		model.addAttribute("myData", cmDomain);
		//��� ����
		CcDeliveryDomain cdDomain=mcService.searchMyCcDeliDetail(mcVO);
		
		model.addAttribute("deliData", cdDomain);
		
		return url;
	}//searchMyCancelDetailForm
	
}//class
