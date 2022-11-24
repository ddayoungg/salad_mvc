package kr.co.salad.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.service.MngDeilService;
import kr.co.salad.manager.service.MngRevService;
import kr.co.salad.manager.vo.MngDeilVO;
import kr.co.salad.manager.vo.MngRevVO;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngDeilController {
	
	@Autowired(required = false)
	private MngDeilService mdService;
	
	//메인 배송 리스트 화면
	@RequestMapping(value = "mng_deli.do",method =GET )
	public String mngDeliMain(HttpSession session, MngDeilVO mdVO,Model model) {
		
		String url=null;
		
		String mngid=(String) session.getAttribute("mngId");
		if(mngid==null) { //세션이 없을때 (로그인화면으로 이동)
			url="redirect:http://localhost/salad_mvc/mng_index.do";
		}else if(mngid.equals("admin")){ //관리자 로그인시
			url="/manager/deli/mng_deli_main";
		}
		
		return url;
	}
	
	
	@RequestMapping(value="mng_deil_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchDeilListAjax(MngDeilVO mdVO) {
		System.out.println(mdVO);
		//배송관리 리스트
		String jsonObj=mdService.searchDeilList(mdVO);//현재 페이지,검색명
		return jsonObj;
	}//searchRevListAjax
	
	//배송 상태  변경 
	@RequestMapping(value="/mng_deli_update.do",method = GET)
	public String mngDeliUpdate(MngDeilVO mdVO,Model model) {
		System.out.println(mdVO);
		mdService.editDeilStatus(mdVO);
		model.addAttribute("msg", "배송상태가변경되었습니다.");
		return "redirect:http://localhost/salad_mvc/mng_deli.do";
	}
	

}
