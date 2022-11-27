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
		//리뷰관리 리스트
		jsonObj=serviceCancel.countCancelList(cancelVO);//현재 페이지,검색명
		
		
		}else if (searchText != "" && search != "") {
			cancelVO.setSearch(search);
			cancelVO.setSearchText(searchText);
			jsonObj=serviceCancel.countCancelList(cancelVO);//현재 페이지,검색명
			
		}
		return jsonObj;	
	}//
	
	//메인 취소 리스트 화면
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
		//대시 보드 => 이번달, 오늘 주문 건수 구하기
		String orderDay ="month";
		int order = 0;
		order=serviceDash.searchTotalOrder(orderDay);
		model.addAttribute("orderDayM",order);
		
		orderDay="today";
		order=0;
		order=serviceDash.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
		
		//취소건수 => 요청/확정 건수 구하기
		String totalCancel = "cancelRequest";
		int cancelCnt = 0;
		cancelCnt=serviceCancel.searchTotalCancel(totalCancel);
		model.addAttribute("cancelRequest",cancelCnt);
		
		totalCancel = "cancelConfirm";
		cancelCnt = 0;
		cancelCnt=serviceCancel.searchTotalCancel(totalCancel);
		model.addAttribute("cancelConfirm",cancelCnt);
		
		System.out.println("어떻게 된거니???"+search);
		
		System.out.println(searchText+" / "+search+" / "+searchText);
		if ("".equals(searchText) && "".equals(search)  || "none".equals(searchText)) {
			//취소 내역 얻기
			List<MngCancelDomain> allCancelList = serviceCancel.searchAllCancel();
			model.addAttribute("allCancelList",allCancelList);
			System.out.println("어떻게 된거니?"+allCancelList);
		
			
		} else if ( !("".equals(searchText)) && !("".equals(search))) {		
			//검색 창에 name&날짜&주문번호 검색
			MngCancelVO cancelVO = new MngCancelVO();
			cancelVO.setSearch(search);
			cancelVO.setSearchText(searchText);
			List<MngCancelDomain> searchList = serviceCancel.searchCancelList(cancelVO);
			model.addAttribute("allCancelList",searchList);
		}
		return url;
		
	}//
	
	//검색 창 화면
//	@RequestMapping(value = "/mng_searchCancel.do",method = {GET,POST})
//	public String mngSearchCacel(MngCancelVO cancelVO,HttpSession session,Model model) {
//		
//		//대시 보드 => 이번달, 오늘 주문 건수 구하기
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
//		//메인 카테고리 구하기
//		List<MngCancelDomain> allCancelList = serviceCancel.searchAllCancel();
//		model.addAttribute("allCancelList",allCancelList);
//		//System.out.println(allCancelList);
//		
//		//검색 창에 name&날짜&주문번호 검색
//		List<MngCancelDomain> searchList = serviceCancel.searchCancelList(cancelVO);
//		model.addAttribute("searchList",searchList);
//		//System.out.println("검색 내용"+searchList);
//
//		return "/manager/cancel/mng_cancel_main";
//	}//
	
	//메인 카테 검색 시 서브 카테 뜨는 화면 ( 검색 안하기로 함 )
//	@RequestMapping(value="/mng_cate.do",method = {GET,POST})
//	public String mngMainCate(MngCancelVO cancelVO, HttpSession session,Model model) {
//		//대시 보드 => 이번달, 오늘 주문 건수 구하기
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
//		//메인 카테고리 구하기
//		List<MngCancelDomain> mainCateList = serviceCancel.searchMainCate();
//		model.addAttribute("mainCateList",mainCateList);
//		System.out.println(mainCateList);
//		cancelVO.getMainCateNum();
//		
//		//서브 카테고리 구하기
//		//System.out.println(mainCateNum);
//		List<MngCancelDomain> subCateList = serviceCancel.searchSubCate(cancelVO);
//		model.addAttribute("subCateList",subCateList);
//		System.out.println(subCateList);
//		System.err.println("봐"+cancelVO);
//		
//		//취소 요청, 확정 / 메인카테,서브카테로 검색한 내용
//		List<MngCancelDomain> cancelList = serviceCancel.searchCancelMember(cancelVO);
//		model.addAttribute("cancelList",cancelList);
//		System.out.println(cancelList);
//		System.err.println("봐22"+cancelVO);		
//		
//		return "/manager/cancel/mng_cancel_main";
//	}//
	
	//상세정보 얻는 화면
	@RequestMapping(value="/mng_orderDetail.do",method= {GET,POST})
	public String mngCancelForm_1( int orderNum,HttpSession session,Model model) {
		
		String url=null;
		String mngid = (String)session.getAttribute("mngId");
		
		if(mngid==null) {
			url= "redirect:http://localhost/salad_mvc/mng_index.do";
		} else if (mngid.equals("admin")) {
			url = "/manager/cancel/mng_cancel_form";
		}
		
		//대시 보드 => 이번달, 오늘 주문 건수 구하기
		String orderDay ="month";
		int order = 0;
		order=serviceDash.searchTotalOrder(orderDay);
		//System.out.println(order);
		model.addAttribute("orderDayM",order);
						
		orderDay="today";
		order=0;
		order=serviceDash.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
		
		//메인 카테고리 구하기
		List<MngCancelDomain> allCancelList = serviceCancel.searchAllCancel();
		model.addAttribute("allCancelList",allCancelList);
		//System.out.println(allCancelList);
						
		//주문 상세 정보 얻기
		MngCancelDomain cancelOrder = serviceCancel.searchOrderDetail(orderNum);
		//System.out.println("번호 전달함"+orderNum);
		model.addAttribute("cancelOrder",cancelOrder);
		System.out.println(cancelOrder+"d");

		return url;
	}//
	
	//취소 상태 보기 창 변경 완료
	@RequestMapping(value="/mng_orderCancel.do",method = GET)
	public String mngCancelForm_2( int orderNum,HttpSession session,Model model) {
		
		String url=null;
		String mngid = (String)session.getAttribute("mngId");
		
		if(mngid==null) {
			url= "redirect:http://localhost/salad_mvc/mng_index.do";
		} else if (mngid.equals("admin")) {
			url = "/manager/cancel/mng_cancel_form2";
		}
		
		//대시 보드 => 이번달, 오늘 주문 건수 구하기
		String orderDay ="month";
		int order = 0;
		order=serviceDash.searchTotalOrder(orderDay);
		//System.out.println(order);
		model.addAttribute("orderDayM",order);
								
		orderDay="today";
		order=0;
		order=serviceDash.searchTotalOrder(orderDay);
		model.addAttribute("orderDayT",order);
				
		//메인 카테고리 구하기
		List<MngCancelDomain> allCancelList = serviceCancel.searchAllCancel();
		model.addAttribute("allCancelList",allCancelList);
		//System.out.println(allCancelList);
								
		//주문 상세 정보 얻기
		MngCancelDomain cancelOrder = serviceCancel.searchOrderDetail(orderNum);
		System.out.println("번호 전달함 제발요"+orderNum);
		model.addAttribute("cancelOrder",cancelOrder);
		
		//취소 요청을 취소 확정으로 바꾸기 4 => 5
		int chOrderStatus=0;
		chOrderStatus=serviceCancel.editCancelStatic(orderNum);
		System.out.println("번호 바뀐거니?"+chOrderStatus);
		
		
		
		return url;
	}//

	
	
	//환불 내역 확인 하는 기능 구현 못해서 막아놓음
//	@RequestMapping(value="/mng_cancel_detail.do",method = GET)
//	public String mngCancelDetail(HttpSession session, MngOrderDomain mod, Model model) {
//		String url="/manager/order/mng_cancel_detail";
//		
//		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
//		if(mngId==null) {//로그인이 안되어있으면
//			url="redirect:http://localhost/salad_mvc/mng_index.do";
//			model.addAttribute("eMsg", "로그인을 해주세요.");
//		} else {//로그인이 되어있으면
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
	
	//취소 상태 보기 창 변경 확인
//	@RequestMapping(value="/mng_cancel_form_1.do",method = GET)
//	public String mngCancelForm_1() {
//		return "/manager/cancel/mng_cancel_form_1";
//	}
	
	
	/////////////////////////////////////김도희 백업용///////////////////////////////////////////
	//메인 취소 리스트 화면
//		@RequestMapping(value = "/mng_cancel2.do",method = {GET,POST})
//		public String mngCancelMain2(HttpSession session,Model model) {
//			
//			//대시 보드 => 이번달, 오늘 주문 건수 구하기
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
//			//메인 카테고리 구하기
//			List<MngCancelDomain> mainCateList = serviceCancel.searchMainCate();
//			model.addAttribute("mainCateList",mainCateList);
//			System.out.println(mainCateList);
//
//			return "/manager/cancel/mng_cancel_main";
//		}
		
		//메인 카테 검색 시 서브 카테 뜨는 화면
//		@RequestMapping(value="/mng_cate2.do",method = {GET,POST})
//		public String mngMainCate2(MngCancelVO cancelVO, HttpSession session,Model model) {
//			//대시 보드 => 이번달, 오늘 주문 건수 구하기
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
//			//메인 카테고리 구하기
//			List<MngCancelDomain> mainCateList = serviceCancel.searchMainCate();
//			model.addAttribute("mainCateList",mainCateList);
//			System.out.println(mainCateList);
//			cancelVO.getMainCateNum();
//			
//			//서브 카테고리 구하기
//			//System.out.println(mainCateNum);
//			List<MngCancelDomain> subCateList = serviceCancel.searchSubCate(cancelVO);
//			model.addAttribute("subCateList",subCateList);
//			System.out.println(subCateList);
//			System.err.println("봐"+cancelVO);
//			
//			//취소 요청, 확정 / 메인카테,서브카테로 검색한 내용
//			List<MngCancelDomain> cancelList = serviceCancel.searchCancelMember(cancelVO);
//			model.addAttribute("cancelList",cancelList);
//			System.out.println(cancelList);
//			System.err.println("봐22"+cancelVO);		
//			
//			return "/manager/cancel/mng_cancel_main";
//		}//
		
		//상세정보 얻는 화면
//		@RequestMapping(value="/mng_orderDetail2.do",method= {GET,POST})
//		public String mngMainSubCate2( int orderNum,HttpSession session,Model model) {
//			
//			//대시 보드 => 이번달, 오늘 주문 건수 구하기
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
//			//메인 카테고리 구하기
//			List<MngCancelDomain> mainCateList = serviceCancel.searchMainCate();
//			model.addAttribute("mainCateList",mainCateList);
//			System.out.println("전송"+mainCateList);
//							
//			//주문 상세 정보 얻기
//			MngCancelDomain cancelOrder = serviceCancel.searchOrderDetail(orderNum);
//			System.out.println("번호 전달함"+orderNum);
//			model.addAttribute("cancelOrder",cancelOrder);
//			
//
//			return "/manager/cancel/mng_cancel_form";
//		}//
	
	

}
