package kr.co.salad.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.encoding.PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MemberService;
import kr.co.salad.user.vo.MemberVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.lang.reflect.Member;
import java.util.List;;

@SessionAttributes({"userId","userName"})
@Controller
public class MemberController {
	
	@Autowired(required = false)
	private MemberService ms;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;

	
	//로그인이동
	@RequestMapping(value = "/login.do",method = GET)
	public String login(Model model) {
		

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);
		
		return "user/member/login";
	}
	
	//로그인시도
	@RequestMapping(value = "/login_process.do",method = {GET,POST})
	public String loginProcess(MemberVO mVO,Model model) {
		String loginUri="";
		String loginname=ms.searchLogin(mVO);
		System.out.println("로그인한 이름 : "+loginname);
		if(loginname==""||loginname==null) { //로그인 실패
			System.out.println("실패");
			model.addAttribute("eMsg","일치하는 회원이 없습니다.");
			loginUri="user/member/login";
		}else { //로그인 성공
			System.out.println("로그인한 ID : "+mVO.getId());
			model.addAttribute("userId",mVO.getId()); //id세션설정
			model.addAttribute("userName",loginname); //name세션설정
			loginUri="redirect:http://localhost/salad_mvc/index.do";
			
		}
		
		System.out.println(loginUri);
		return loginUri;
	}
	
	//회원가입이동
	@RequestMapping(value = "/join.do",method = GET)
	public String join(Model model) {
		
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);
		return "user/member/join";
	}
	
	//회원가입성공
	@RequestMapping(value = "/join_process.do",method = POST)
	public String joinProcess(MemberVO mVO,Model model) {
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		
		String loginUri="";
		
		
		mVO.setPass(passEncoder.encode(mVO.getPass()));
		System.out.println(mVO);
		boolean joinFalg=ms.addJoin(mVO);
		if(joinFalg) {
			model.addAttribute("name",mVO.getName());
			loginUri="user/member/join_ok";
		}else {
			model.addAttribute("joinFail","회원가입에 실패하였습니다.");
			loginUri="user/member/join";
		}

		return loginUri;
	}
	
	//ID찾기이동
	@RequestMapping(value = "/find_id.do",method = GET)
	public String findId(Model model) {
		

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);
		return "user/member/find_id";
	}
	
	//ID찾기완료이동
	@RequestMapping(value = "/find_id_process.do",method = POST)
	public String findIdProcess(MemberVO mVO,Model model) {
		String findIdUri="";
		
		String findId=ms.searchFindIdChk(mVO);
		System.out.println(findId);

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);

		if(findId!=null) {
			model.addAttribute("id",findId);
			model.addAttribute("name",mVO.getName());
			findIdUri="user/member/find_id_success";
		}else{
			model.addAttribute("eMsg",true);
			findIdUri="user/member/find_id";
		}

		return findIdUri;
	}
	
	//ID중복확인
	@RequestMapping(value = "/id_chk_process.do",method = POST)
	@ResponseBody
	public String idChkProcess(String memberId){
		int result=ms.searchIdChk(memberId);
		System.out.println(result);
		if(result!=0) { //중복 아이디 존재
			return "fail";
		}else {
			return "success"; //아이디 사용 가능
		}
	}
		
	//PW찾기이동
	@RequestMapping(value = "/find_pass.do",method = GET)
	public String findPass(Model model) {

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);

		return "user/member/find_password";
	}
	
	//PW입력페이지이동(회원확인)
	@RequestMapping(value = "/find_pass_reset.do",method = POST)
	public String findPassReset(MemberVO mVO,Model model) {
		
		String findpwUri="";
		
		System.out.println("비밀번호 변경전 회원 확인 : "+mVO);
		boolean pwChk=ms.searchFindPassChk(mVO);

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);

		if(pwChk) { //회원정보있음
			model.addAttribute("id",mVO.getId());
			findpwUri="user/member/find_password_reset";
		}else { //회원정보없음
			model.addAttribute("pwFindFail","일치하는 회원이 없습니다.");
			findpwUri="user/member/find_password";
		}
		
		return findpwUri;

	}
	
	//PW변경
	@RequestMapping(value = "/find_pass_process.do",method = POST)
	public String findPassProcess(MemberVO mVO,Model model) {
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		String updatePwUri="";
		
		mVO.setNewPass(passEncoder.encode(mVO.getNewPass())); //새로운 비밀번호 암호화
		System.out.println("비밀번호 변경 : "+mVO);
		int pwEdit=ms.editPassReser(mVO);
		if(pwEdit==1) { //비밀번호 변경 성공
			System.out.println("비번 변경 성공");
			updatePwUri="user/member/find_password_complete";
		}else { //비밀번호 변경 실패
			System.out.println("비번 변경 실패");
			model.addAttribute("pwEditFail","비밀번호변경 실패.");
			updatePwUri="user/member/find_password_reset";
		}

		
		
		return updatePwUri;
	}
	
	//로그아웃
	@RequestMapping(value="/logout_process.do",method = GET)
	public String logoutProcess(SessionStatus ss) {
	
		ss.setComplete();
		
		return "redirect:http://localhost/salad_mvc/index.do";
	}
	
	//이용약관동의화면이동
	@RequestMapping(value = "/agreement.do",method = GET)
	public String agreement(Model model) {
		

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);

		return "user/member/agreement";
	}
	
	//개인정보수집동의화면이동
	@RequestMapping(value = "/pprivate.do",method = GET)
	public String pprivate(Model model) {

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);

		return "user/member/pprivate";
	}

}
