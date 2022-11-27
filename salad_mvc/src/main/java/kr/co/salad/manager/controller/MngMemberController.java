package kr.co.salad.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.manager.service.MngMemberService;
import kr.co.salad.manager.vo.MngMemberVO;

@SessionAttributes("mngId")
@Controller
public class MngMemberController {
	
	@Autowired(required = false)
	private MngMemberService mmService;
	
	@RequestMapping(value="/mng_member.do", method=GET)
	public String mngMemberMain(HttpSession session, Model model) {//회원 관리 홈 화면
		String url="manager/member/mng_member";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		return url;
	}//searchPrdDetail
	
	@ResponseBody
	@RequestMapping(value="/mng_member_total_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchMemberTotalAjax() {
		
		//전체 회원 수, 가입 수, 탈퇴 수
		String jsonObj=mmService.searchMemberTotalJson();//회원 상세 정보
		return jsonObj;
	}//searchMemberTotalAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_member_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchMemberListAjax(MngMemberVO mmVO) {
		
		//회원관리 리스트
		String jsonObj=mmService.searchMemberListJson(mmVO);//현재 페이지, 필드명,  검색명
		return jsonObj;
	}//searchRevListAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_member_detail_popup_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchMemberDetailAjax(String id) {//회원 상세 정보 팝업
		//회원 상세 정보
		String jsonObj=mmService.searchMemberDetailJson(id);//회원 상세 정보
		return jsonObj;
	}//searchRevListAjax
	
	@RequestMapping(value="/mng_member_out_process.do", method= {POST, GET})
	public String mngMemberOutProcess(HttpSession session, MngMemberVO mmVO, Model model) {//회원 강제 탈퇴 처리
		String url="forward:/mng_member.do";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		mmService.editMemberOut(mmVO);
		
		return url;
	}//mngMemberOutProcess
	
}//class
