package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MainPrdService;
import kr.co.salad.user.vo.KategoriePrdVO;



@Controller
public class MainController {
	
	@Autowired(required = false)
	private MainPrdService mpService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	
	//메인화면
	@RequestMapping(value = "/index.do",method = GET)
	public ModelAndView mainIndex(HttpSession session, ModelAndView mav,KategoriePrdVO kpVO) throws Exception{
		mav.setViewName("/user/main/home");
		mav.addObject("list", mpService.prdlist());
		
		String url="/user/main/home";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			url="redirect:http://localhost/salad_mvc/login.do";
			mav.addObject("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			mav.addObject("userId", userId);
		}//end else

		
		int mainCateNum=kpVO.getMainCateNum();
		
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();

		mav.addObject("mainCateList", mainCateList);//메인 메뉴

		
		return mav;
	}

	
}
