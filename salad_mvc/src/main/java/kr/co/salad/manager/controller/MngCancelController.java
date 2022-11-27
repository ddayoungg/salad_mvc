package kr.co.salad.manager.controller;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import kr.co.salad.manager.domain.MngCancelDomain;
import kr.co.salad.manager.domain.MngOrderDomain;
import kr.co.salad.manager.domain.MngOrderPrdDomain;
import kr.co.salad.manager.service.MngCancelService;
import kr.co.salad.manager.service.MngDashboardService;
import kr.co.salad.manager.service.MngOrderService;
import kr.co.salad.manager.vo.MngCancelVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;



@SessionAttributes("mngId")
@Controller
public class MngCancelController {
	
	@Autowired(required = false)
	private MngDashboardService serviceDash;
	
	@Autowired(required = false)
	private MngCancelService serviceCancel;
	
	@RequestMapping(value="/mng_cancelList_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String countCancelListAjax(MngCancelVO cancelVO,
			@RequestParam(value="searchText",required = false, defaultValue="") String searchText,
			@RequestParam(value="search",required = false,defaultValue="") String search) {
		
		String jsonObj="";
		if (searchText == "" && search == "") {
		//������� ����Ʈ
		jsonObj=serviceCancel.countCancelList(cancelVO);//���� ������,�˻���
		
		
		}else if (searchText != "" && search != "") {
			cancelVO.setSearch(search);
			cancelVO.setSearchText(searchText);
			jsonObj=serviceCancel.countCancelList(cancelVO);//���� ������,�˻���
			
		}
		return jsonObj;	
	}//
	
	//���� ��� ����Ʈ ȭ��
	@RequestMapping(value = "/mng_cancel.do",method = {GET,POST})
	public String mngCancelMain(HttpSession session,Model model,
			@RequestParam(value="searchText",required = false, defaultValue="") String searchText,
			@RequestParam(value="search",required = false,defaultValue="") String search ) {
		
		String url=null;
		String mngid = (String)session.getAttribute("mngId");
		
		if(mngid==null) {
			url= "redirect:http://localhost/salad_mvc/mng_index.do";
		} else if (mngid.equals("admin")) {
			url = "/manager/cancel/mng_cancel_main";
		}
		//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
		String orderDay ="month";
		int order = 0;
		order=serviceDash.searchTotalOrder(orderDay);
		model.addAttribute("orderDayM",order);
		
		orderDay="today";
		order=0;
		order=serviceDash.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
		
		//��ҰǼ� => ��û/Ȯ�� �Ǽ� ���ϱ�
		String totalCancel = "cancelRequest";
		int cancelCnt = 0;
		cancelCnt=serviceCancel.searchTotalCancel(totalCancel);
		model.addAttribute("cancelRequest",cancelCnt);
		
		totalCancel = "cancelConfirm";
		cancelCnt = 0;
		cancelCnt=serviceCancel.searchTotalCancel(totalCancel);
		model.addAttribute("cancelConfirm",cancelCnt);
		
		System.out.println("��� �ȰŴ�???"+search);
		
		System.out.println(searchText+" / "+search+" / "+searchText);
		if ("".equals(searchText) && "".equals(search)  || "none".equals(searchText)) {
			//��� ���� ���
			List<MngCancelDomain> allCancelList = serviceCancel.searchAllCancel();
			model.addAttribute("allCancelList",allCancelList);
			System.out.println("��� �ȰŴ�?"+allCancelList);
		
			
		} else if ( !("".equals(searchText)) && !("".equals(search))) {		
			//�˻� â�� name&��¥&�ֹ���ȣ �˻�
			MngCancelVO cancelVO = new MngCancelVO();
			cancelVO.setSearch(search);
			cancelVO.setSearchText(searchText);
			List<MngCancelDomain> searchList = serviceCancel.searchCancelList(cancelVO);
			model.addAttribute("allCancelList",searchList);
		}
		return url;
		
	}//
	
	//�˻� â ȭ��
//	@RequestMapping(value = "/mng_searchCancel.do",method = {GET,POST})
//	public String mngSearchCacel(MngCancelVO cancelVO,HttpSession session,Model model) {
//		
//		//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
//		String orderDay ="month";
//		int order = 0;
//		order=serviceDash.searchTotalOrder(orderDay);
//
//		model.addAttribute("orderDayM",order);
//		
//		orderDay="today";
//		order=0;
//		order=serviceDash.searchTotalOrder(orderDay);
//		model.addAttribute("orderDayT",order);
//		
//		//���� ī�װ� ���ϱ�
//		List<MngCancelDomain> allCancelList = serviceCancel.searchAllCancel();
//		model.addAttribute("allCancelList",allCancelList);
//		//System.out.println(allCancelList);
//		
//		//�˻� â�� name&��¥&�ֹ���ȣ �˻�
//		List<MngCancelDomain> searchList = serviceCancel.searchCancelList(cancelVO);
//		model.addAttribute("searchList",searchList);
//		//System.out.println("�˻� ����"+searchList);
//
//		return "/manager/cancel/mng_cancel_main";
//	}//
	
	//���� ī�� �˻� �� ���� ī�� �ߴ� ȭ�� ( �˻� ���ϱ�� �� )
//	@RequestMapping(value="/mng_cate.do",method = {GET,POST})
//	public String mngMainCate(MngCancelVO cancelVO, HttpSession session,Model model) {
//		//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
//		String orderDay ="month";
//		int order = 0;
//		order=serviceDash.searchTotalOrder(orderDay);
//		//System.out.println(order);
//		model.addAttribute("orderDayM",order);
//				
//		orderDay="today";
//		order=0;
//		order=serviceDash.searchTotalOrder(orderDay);
//		model.addAttribute("orderDayT",order);
//				
//		//���� ī�װ� ���ϱ�
//		List<MngCancelDomain> mainCateList = serviceCancel.searchMainCate();
//		model.addAttribute("mainCateList",mainCateList);
//		System.out.println(mainCateList);
//		cancelVO.getMainCateNum();
//		
//		//���� ī�װ� ���ϱ�
//		//System.out.println(mainCateNum);
//		List<MngCancelDomain> subCateList = serviceCancel.searchSubCate(cancelVO);
//		model.addAttribute("subCateList",subCateList);
//		System.out.println(subCateList);
//		System.err.println("��"+cancelVO);
//		
//		//��� ��û, Ȯ�� / ����ī��,����ī�׷� �˻��� ����
//		List<MngCancelDomain> cancelList = serviceCancel.searchCancelMember(cancelVO);
//		model.addAttribute("cancelList",cancelList);
//		System.out.println(cancelList);
//		System.err.println("��22"+cancelVO);		
//		
//		return "/manager/cancel/mng_cancel_main";
//	}//
	
	//������ ��� ȭ��
	@RequestMapping(value="/mng_orderDetail.do",method= {GET,POST})
	public String mngCancelForm_1( int orderNum,HttpSession session,Model model) {
		
		String url=null;
		String mngid = (String)session.getAttribute("mngId");
		
		if(mngid==null) {
			url= "redirect:http://localhost/salad_mvc/mng_index.do";
		} else if (mngid.equals("admin")) {
			url = "/manager/cancel/mng_cancel_form";
		}
		
		//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
		String orderDay ="month";
		int order = 0;
		order=serviceDash.searchTotalOrder(orderDay);
		//System.out.println(order);
		model.addAttribute("orderDayM",order);
						
		orderDay="today";
		order=0;
		order=serviceDash.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
		
		//���� ī�װ� ���ϱ�
		List<MngCancelDomain> allCancelList = serviceCancel.searchAllCancel();
		model.addAttribute("allCancelList",allCancelList);
		//System.out.println(allCancelList);
						
		//�ֹ� �� ���� ���
		MngCancelDomain cancelOrder = serviceCancel.searchOrderDetail(orderNum);
		//System.out.println("��ȣ ������"+orderNum);
		model.addAttribute("cancelOrder",cancelOrder);
		System.out.println(cancelOrder+"d");

		return url;
	}//
	
	//��� ���� ���� â ���� �Ϸ�
	@RequestMapping(value="/mng_orderCancel.do",method = GET)
	public String mngCancelForm_2( int orderNum,HttpSession session,Model model) {
		
		String url=null;
		String mngid = (String)session.getAttribute("mngId");
		
		if(mngid==null) {
			url= "redirect:http://localhost/salad_mvc/mng_index.do";
		} else if (mngid.equals("admin")) {
			url = "/manager/cancel/mng_cancel_form2";
		}
		
		//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
		String orderDay ="month";
		int order = 0;
		order=serviceDash.searchTotalOrder(orderDay);
		//System.out.println(order);
		model.addAttribute("orderDayM",order);
								
		orderDay="today";
		order=0;
		order=serviceDash.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
				
		//���� ī�װ� ���ϱ�
		List<MngCancelDomain> allCancelList = serviceCancel.searchAllCancel();
		model.addAttribute("allCancelList",allCancelList);
		//System.out.println(allCancelList);
								
		//�ֹ� �� ���� ���
		MngCancelDomain cancelOrder = serviceCancel.searchOrderDetail(orderNum);
		System.out.println("��ȣ ������ ���߿�"+orderNum);
		model.addAttribute("cancelOrder",cancelOrder);
		
		//��� ��û�� ��� Ȯ������ �ٲٱ� 4 => 5
		int chOrderStatus=0;
		chOrderStatus=serviceCancel.editCancelStatic(orderNum);
		System.out.println("��ȣ �ٲ�Ŵ�?"+chOrderStatus);
		
		
		
		return url;
	}//

	
	
	//ȯ�� ���� Ȯ�� �ϴ� ��� ���� ���ؼ� ���Ƴ���
//	@RequestMapping(value="/mng_cancel_detail.do",method = GET)
//	public String mngCancelDetail(HttpSession session, MngOrderDomain mod, Model model) {
//		String url="/manager/order/mng_cancel_detail";
//		
//		String mngId=(String)session.getAttribute("mngId");//���� ��������
//		if(mngId==null) {//�α����� �ȵǾ�������
//			url="redirect:http://localhost/salad_mvc/mng_index.do";
//			model.addAttribute("eMsg", "�α����� ���ּ���.");
//		} else {//�α����� �Ǿ�������
//			model.addAttribute("mngId", mngId);
//		}//end else
//		
//		MngOrderService mds = new MngOrderService();
//		
//		List<MngOrderPrdDomain> orderPrdList = mds.searchOrderPrd(mod.getOrderNum());
//		model.addAttribute("orderPrdList", orderPrdList);
//		
//		MngOrderDomain memberInfo = mds.searchOrderMember(mod.getOrderNum());
//		model.addAttribute("memberInfo", memberInfo);
//
//		if("1".equals(mod.getOrderStatus())) {
//			MngOrderDomain deliInfo = mds.searchOrderDeli(mod.getOrderNum());
//			model.addAttribute("deliInfo", deliInfo);
//		}
//		
//		return url;
//	}//
	
	//��� ���� ���� â ���� Ȯ��
//	@RequestMapping(value="/mng_cancel_form_1.do",method = GET)
//	public String mngCancelForm_1() {
//		return "/manager/cancel/mng_cancel_form_1";
//	}
	
	
	/////////////////////////////////////�赵�� �����///////////////////////////////////////////
	//���� ��� ����Ʈ ȭ��
//		@RequestMapping(value = "/mng_cancel2.do",method = {GET,POST})
//		public String mngCancelMain2(HttpSession session,Model model) {
//			
//			//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
//			String orderDay ="month";
//			int order = 0;
//			order=serviceDash.searchTotalOrder(orderDay);
//			//System.out.println(order);
//			model.addAttribute("orderDayM",order);
//			
//			orderDay="today";
//			order=0;
//			order=serviceDash.searchTotalOrder(orderDay);
//			model.addAttribute("orderDayT",order);
//			
//			//���� ī�װ� ���ϱ�
//			List<MngCancelDomain> mainCateList = serviceCancel.searchMainCate();
//			model.addAttribute("mainCateList",mainCateList);
//			System.out.println(mainCateList);
//
//			return "/manager/cancel/mng_cancel_main";
//		}
		
		//���� ī�� �˻� �� ���� ī�� �ߴ� ȭ��
//		@RequestMapping(value="/mng_cate2.do",method = {GET,POST})
//		public String mngMainCate2(MngCancelVO cancelVO, HttpSession session,Model model) {
//			//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
//			String orderDay ="month";
//			int order = 0;
//			order=serviceDash.searchTotalOrder(orderDay);
//			//System.out.println(order);
//			model.addAttribute("orderDayM",order);
//					
//			orderDay="today";
//			order=0;
//			order=serviceDash.searchTotalOrder(orderDay);
//			model.addAttribute("orderDayT",order);
//					
//			//���� ī�װ� ���ϱ�
//			List<MngCancelDomain> mainCateList = serviceCancel.searchMainCate();
//			model.addAttribute("mainCateList",mainCateList);
//			System.out.println(mainCateList);
//			cancelVO.getMainCateNum();
//			
//			//���� ī�װ� ���ϱ�
//			//System.out.println(mainCateNum);
//			List<MngCancelDomain> subCateList = serviceCancel.searchSubCate(cancelVO);
//			model.addAttribute("subCateList",subCateList);
//			System.out.println(subCateList);
//			System.err.println("��"+cancelVO);
//			
//			//��� ��û, Ȯ�� / ����ī��,����ī�׷� �˻��� ����
//			List<MngCancelDomain> cancelList = serviceCancel.searchCancelMember(cancelVO);
//			model.addAttribute("cancelList",cancelList);
//			System.out.println(cancelList);
//			System.err.println("��22"+cancelVO);		
//			
//			return "/manager/cancel/mng_cancel_main";
//		}//
		
		//������ ��� ȭ��
//		@RequestMapping(value="/mng_orderDetail2.do",method= {GET,POST})
//		public String mngMainSubCate2( int orderNum,HttpSession session,Model model) {
//			
//			//��� ���� => �̹���, ���� �ֹ� �Ǽ� ���ϱ�
//			String orderDay ="month";
//			int order = 0;
//			order=serviceDash.searchTotalOrder(orderDay);
//			//System.out.println(order);
//			model.addAttribute("orderDayM",order);
//							
//			orderDay="today";
//			order=0;
//			order=serviceDash.searchTotalOrder(orderDay);
//			model.addAttribute("orderDayT",order);
//							
//			//���� ī�װ� ���ϱ�
//			List<MngCancelDomain> mainCateList = serviceCancel.searchMainCate();
//			model.addAttribute("mainCateList",mainCateList);
//			System.out.println("����"+mainCateList);
//							
//			//�ֹ� �� ���� ���
//			MngCancelDomain cancelOrder = serviceCancel.searchOrderDetail(orderNum);
//			System.out.println("��ȣ ������"+orderNum);
//			model.addAttribute("cancelOrder",cancelOrder);
//			
//
//			return "/manager/cancel/mng_cancel_form";
//		}//
	
	

}
