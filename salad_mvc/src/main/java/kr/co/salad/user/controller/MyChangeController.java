package kr.co.salad.user.controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.SessionAttributes;


import kr.co.salad.user.domain.KategoriePrdDomain;

import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MyChangeService;
import kr.co.salad.user.vo.MyChangeVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


@SessionAttributes({"userId","userName"})
@Controller
public class MyChangeController {
	
	@Autowired(required = false)
	private MyChangeService chanService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
//	@Autowired(required = false)
//	private PasswordEncoder passwordEncoder;
	
	
	//회원정보 들어가기 전 비번 확인
	@RequestMapping(value = "/my_change_index.do",method=GET)
	public String mypageMain(HttpSession session,Model model) {
			String chkURL = null;
			String userId = (String)session.getAttribute("userId");//세션 가져오기
			
			
			  if(userId==null) {//로그인이 안되어있으면
			  chkURL="redirect:http://localhost/salad_mvc/login.do";
			  model.addAttribute("eMsg","로그인을 해주세요"); 
			  } else {//로그인이 되어있으면(세션있음)
			  chkURL="user/mypage/my_page_password"; 
			  model.addAttribute("userId",userId);
			  MyChangeVO chanVO = new MyChangeVO();
			  chanVO.setId(userId);
			  }
			  //전체 카테고리 
			  List<KategoriePrdDomain> mainCateList = kpService.mainCateList();
			  model.addAttribute("mainCateList",mainCateList);//메인메뉴
			 
				
		return chkURL;
	}//
	
	
	//회원정보 
	@RequestMapping(value = "/my_change.do",method= {GET,POST})
	public String myChangeForm(MyChangeVO chanVO,Model model,HttpSession session) {
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();

		String chkURL = null;
		String userId = (String)session.getAttribute("userId");//세션 가져오기
		
		if(userId==null) {//로그인이 안되어있으면
			chkURL="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg","로그인을 해주세요");
		} else {//로그인이 되어있으면(세션있음)
			//chkURL="user/mypage/my_page";
			chanVO.setId(userId);
			//chanVO.getPass();
			//System.out.println(chanVO.getPass()+chanVO.getId());
			boolean passMatch=false;
			MyChangeVO resultVO = chanService.searchMyMember(chanVO);	
			System.out.println(passMatch);
			passMatch = passEncoder.matches(chanVO.getPass(), resultVO.getPass());
			if(passMatch == false) {
				System.out.println("다오"+passMatch);
				System.out.println("마이페이지 접속 실패"+resultVO);
			} else if (passMatch == true){
				System.out.println("복호화 조회"+resultVO.getPass());
				System.out.println("마이페이지 접속 성공"+resultVO);
				System.out.println("입력한 비번"+chanVO.getPass());
			}
			
		if (passMatch == true ){
			System.out.println(passMatch);
			chkURL="user/mypage/my_page";
			model.addAttribute("userId",userId);
			//전체 카테고리 
			List<KategoriePrdDomain> mainCateList = kpService.mainCateList();
			model.addAttribute("mainCateList",mainCateList);//메인메뉴					
			
			//아이디&이메일 추출
			String editEmail =resultVO.getEmail();
			int index = editEmail.indexOf("@");
			String resultId = editEmail.substring(0,index);
			String resultEmail = editEmail.substring(index+1);
				
			System.out.println("추출"+resultId+resultEmail);
			System.out.println("값 나오니"+resultVO);			
				
			model.addAttribute("resultId", resultId);
			model.addAttribute("resultEmail", resultEmail);
			model.addAttribute("chanConfirmVO", resultVO);		
			}else if (passMatch == false) {
				chkURL="user/mypage/my_page_password"; 
				model.addAttribute("msgPass","비밀번호를 다시 확인해주세요.");
			}
		}
		System.out.println(chkURL);
		return chkURL;
	}//
	
	//내 정보 변경
	@RequestMapping(value = "/my_change_update.do",method= {GET,POST})
	public String updateMyChangeForm(MyChangeVO chanVO,Model model,HttpSession session) {
		String chkURL = null;
		String userId = (String)session.getAttribute("userId");//세션 가져오기
		
		if(userId==null) {//로그인이 안되어있으면
			chkURL="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg","로그인을 해주세요");
		} else {//로그인이 되어있으면(세션있음)
			chkURL="user/mypage/my_page";
			model.addAttribute("userId",userId);
		}
		
		//전체 카테고리 
		List<KategoriePrdDomain> mainCateList = kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);//메인메뉴
		
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		chanVO.setNewPass(passEncoder.encode(chanVO.getNewPass())); //새로운 비밀번호 암호화
		
		System.out.println("변경됐니?"+chanVO);
		int updateStatus = 0;
		MyChangeVO chanConfirmVO = new MyChangeVO();

		updateStatus = chanService.editMyMember(chanVO);
		chanConfirmVO = chanVO;
		
		if ( updateStatus == 1) {
		
		//아이디&이메일 추출
		String editEmail = chanConfirmVO.getEmail();
		int index = editEmail.indexOf("@");
		String resultId = editEmail.substring(0,index);
		String resultEmail = editEmail.substring(index+1);
		
		System.out.println("변경 값 추출"+resultId+resultEmail);
		System.out.println("변경 값 나오니"+chanConfirmVO);			
		
		model.addAttribute("resultId", resultId);
		model.addAttribute("resultEmail", resultEmail);
		model.addAttribute("chanConfirmVO", chanConfirmVO);		
		
		model.addAttribute("confirmMsg","회원정보가 변경되었습니다.");
		return  chkURL;
		} else  {	
			model.addAttribute("confirmMsg","회원정보가 변경되지 않았습니다.");
			return  chkURL;
		}
	}//
	
	//비번 중복 확인
	@RequestMapping("/pw_chk_process.do")
	public String checkPass(MyChangeVO chanVO,Model model,HttpSession session) {
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		String backURL = "";
		
		String userId = (String)session.getAttribute("userId");//세션 가져오기
		chanVO.setId(userId);
		chanVO.getPass();
		System.out.println("들어오는 비번"+chanVO.getPass());
		
		boolean passMatch = false;
		
		MyChangeVO resultVO=chanService.searchMemberPass(chanVO);
		
		passMatch = passEncoder.matches(chanVO.getPass(), resultVO.getPass());
		if(passMatch == false) {
			System.out.println("비번 중복 확인 실패"+resultVO);
			model.addAttribute("confirmMsg","올바르지않은 비밀번호입니다.");
			backURL= "user/mypage/my_page";
			//아이디&이메일 추출
			String editEmail = resultVO.getEmail();
			int index = editEmail.indexOf("@");
			String resultId = editEmail.substring(0,index);
			String resultEmail = editEmail.substring(index+1);
		
			
			System.out.println("변경 값 추출"+resultId+resultEmail);
			System.out.println("변경 값 나오니"+resultVO);			
			
			model.addAttribute("resultId", resultId);
			model.addAttribute("resultEmail", resultEmail);
			model.addAttribute("chanConfirmVO", resultVO);	
		} else if (passMatch == true){
			System.out.println("비번 중복 확인 성공"+resultVO);
			model.addAttribute("confirmMsg","비밀번호가 확인되었습니다.");
			backURL= "user/mypage/my_page";
			
			//아이디&이메일 추출
			String editEmail = resultVO.getEmail();
			int index = editEmail.indexOf("@");
			String resultId = editEmail.substring(0,index);
			String resultEmail = editEmail.substring(index+1);
		
			
			System.out.println("변경 값 추출"+resultId+resultEmail);
			System.out.println("변경 값 나오니"+resultVO);			
			
			model.addAttribute("resultId", resultId);
			model.addAttribute("resultEmail", resultEmail);
			model.addAttribute("chanConfirmVO", resultVO);	
			model.addAttribute("confirmPass",chanVO.getPass());
		}		
		return backURL;
	}//
	
	
}//class
