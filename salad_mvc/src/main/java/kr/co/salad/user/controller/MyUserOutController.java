package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.domain.MyDeliDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MyUserOutService;
import kr.co.salad.user.vo.MyUserOutVO;

@Controller
public class MyUserOutController {
	
	@Autowired(required = false)
	private MyUserOutService muoService;
	
   @Autowired(required = false)
	private KategoriePrdService kpService;

	
	//회원 확인폼(비밀번호)
	@RequestMapping(value = "mypage_out_pwChk.do",method = GET)
	public String mypageOutPwChk(HttpSession session,Model model) {
		String chkURL=null;
		
		String userId=(String)session.getAttribute("userId"); //세션 가져오기
		if(userId==null) { //로그인이 안되어있으면
			chkURL="redirect:http://salad.sist.co.kr/login.do";
			model.addAttribute("eMsg", "로그인을해주세요");
		}else { //로그인이 되어있으면(세션있음)
			List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
			model.addAttribute("mainCateList",mainCateList);
			chkURL="user/mypage/hack_out_pwChk";
			model.addAttribute("userId", userId);
		}
		
		
		return chkURL;
	}
	
	//탈퇴입력 화면으로 이동 (회원확인)
	@RequestMapping(value = "mypage_out_form.do",method = POST)
	public String mypageOut(HttpSession session,String pass,Model model) {
		String url=null;
		String userId=(String) session.getAttribute("userId");
		if(userId==null) {
			url="redirect:http://salad.sist.co.kr/login.do";
			model.addAttribute("eMsg", "로그인을해주세요");
		}else {

			List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
			model.addAttribute("mainCateList",mainCateList);

			MyUserOutVO muoOutVO=new MyUserOutVO();
			muoOutVO.setId(userId); //이자리 세션값
			muoOutVO.setPass(pass);
			int passFlag=muoService.searchUser(muoOutVO);
			if(passFlag!=1) {
				model.addAttribute("failPwChk", "회원정보가 맞지않습니다.");
				url="user/mypage/hack_out_pwChk";
			}else {
				
				url="user/mypage/hack_out";
			}
		}
		return url;
	}
	
	//탈퇴하기
	@RequestMapping(value = "mypage_out_process.do",method = POST)
	public String mypageOutProcess(SessionStatus ss,HttpSession session,String outReason) {
		String URL="user/mypage/hack_out";
		String userId=(String) session.getAttribute("userId");
		System.out.println(outReason);
		MyUserOutVO muoOutVO=new MyUserOutVO();
		muoOutVO.setId(userId);
		muoOutVO.setOutReason(outReason);
		int resultFlag=muoService.editUserOut(muoOutVO);
		if(resultFlag==1) {
			URL="redirect:/logout_process.do";
		}
		return URL;
	}

}
