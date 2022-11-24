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

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.PrdDetailService;
import kr.co.salad.user.service.WishService;
import kr.co.salad.user.vo.WishVO;

/**
 * 상품상세보기
 * @author user
 *
 */
@SessionAttributes({"userId", "userName"})
@Controller
public class WishController {
	
	@Autowired(required = false)
	private WishService wService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	@RequestMapping(value="/mypage/wish_list.do", method= {GET, POST})//
	public String wishListForm(HttpSession session, Model model) { 
		String url="user/mypage/wish_list";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		//전체 카테고리
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		
		model.addAttribute("mainCateList", mainCateList);//메인 메뉴
		
		return url;
	}//wishListForm
	
	@ResponseBody
	@RequestMapping(value="/user/mypage/my_total_ajax.do", method={GET, POST}, produces="application/json; charset=UTF-8")
	public String searchMyTotalAjax(HttpSession session) {
		
		WishVO wVO=new WishVO();
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		
		wVO.setId(userId);
		
		//나의 찜, 후기, 상품문의 건수
		String jsonObj=wService.searchMyTotalJson(wVO);//나의 찜, 후기, 상품문의 건수
		return jsonObj;
	}//searchMyTotalAjax
	
	
	@ResponseBody
	@RequestMapping(value="/mypage/wish_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String wishListAjax(HttpSession session, WishVO wVO ) { 
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		
		wVO.setId(userId);
		String jsonObj=wService.searchWishListJson(wVO);//찜 리스트
		
		return jsonObj;
	}//wishListAjax
	
	@ResponseBody
	@RequestMapping(value="/mypage/remove_wish_process.do", method= GET, produces="application/json; charset=UTF-8")
	public String removeWishProcess(HttpSession session, WishVO wVO) {
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		
		wVO.setId(userId);
		String jsonObj=wService.removeWish(wVO);
		
		return jsonObj;
	}//removeWishProcess
	
	@ResponseBody
	@RequestMapping(value="/goods/wish_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String wishAjax(HttpSession session, WishVO wVO ) {//(아이디Session, prdNum, wishFlag, setFlag)  

		String userId=(String)session.getAttribute("userId");//세션 가져오기
		
		if(userId==null) {
			userId="";
		}//end if
		
		wVO.setId(userId);
		//찜 여부
		int[] prdNumArrTemp={wVO.getPrdNum()};//임의의 물품 번호 배열
		if("eventSet".equals(wVO.getSetFlag())) {//버튼 클릭 이벤트 여부
			if("true".equals(wVO.getWishFlag())) {//찜 여부
				
				wVO.setPrdNumArr(prdNumArrTemp);
				wService.removeWish(wVO);//찜 삭제
			}else {
				wService.addWish(wVO);//찜 추가
			}//end else
		}//end if
		
		String jsonObj=wService.wishJson(wVO);//찜 여부
		
		return jsonObj;
	}//wishAjax
	
}//class
