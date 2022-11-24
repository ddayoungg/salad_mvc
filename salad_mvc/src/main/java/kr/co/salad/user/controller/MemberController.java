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

	
	//�α����̵�
	@RequestMapping(value = "/login.do",method = GET)
	public String login(Model model) {
		

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);
		
		return "user/member/login";
	}
	
	//�α��νõ�
	@RequestMapping(value = "/login_process.do",method = {GET,POST})
	public String loginProcess(MemberVO mVO,Model model) {
		String loginUri="";
		String loginname=ms.searchLogin(mVO);
		System.out.println("�α����� �̸� : "+loginname);
		if(loginname==""||loginname==null) { //�α��� ����
			System.out.println("����");
			model.addAttribute("eMsg","��ġ�ϴ� ȸ���� �����ϴ�.");
			loginUri="user/member/login";
		}else { //�α��� ����
			System.out.println("�α����� ID : "+mVO.getId());
			model.addAttribute("userId",mVO.getId()); //id���Ǽ���
			model.addAttribute("userName",loginname); //name���Ǽ���
			loginUri="redirect:http://localhost/salad_mvc/index.do";
			
		}
		
		System.out.println(loginUri);
		return loginUri;
	}
	
	//ȸ�������̵�
	@RequestMapping(value = "/join.do",method = GET)
	public String join(Model model) {
		
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);
		return "user/member/join";
	}
	
	//ȸ�����Լ���
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
			model.addAttribute("joinFail","ȸ�����Կ� �����Ͽ����ϴ�.");
			loginUri="user/member/join";
		}

		return loginUri;
	}
	
	//IDã���̵�
	@RequestMapping(value = "/find_id.do",method = GET)
	public String findId(Model model) {
		

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);
		return "user/member/find_id";
	}
	
	//IDã��Ϸ��̵�
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
	
	//ID�ߺ�Ȯ��
	@RequestMapping(value = "/id_chk_process.do",method = POST)
	@ResponseBody
	public String idChkProcess(String memberId){
		int result=ms.searchIdChk(memberId);
		System.out.println(result);
		if(result!=0) { //�ߺ� ���̵� ����
			return "fail";
		}else {
			return "success"; //���̵� ��� ����
		}
	}
		
	//PWã���̵�
	@RequestMapping(value = "/find_pass.do",method = GET)
	public String findPass(Model model) {

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);

		return "user/member/find_password";
	}
	
	//PW�Է��������̵�(ȸ��Ȯ��)
	@RequestMapping(value = "/find_pass_reset.do",method = POST)
	public String findPassReset(MemberVO mVO,Model model) {
		
		String findpwUri="";
		
		System.out.println("��й�ȣ ������ ȸ�� Ȯ�� : "+mVO);
		boolean pwChk=ms.searchFindPassChk(mVO);

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);

		if(pwChk) { //ȸ����������
			model.addAttribute("id",mVO.getId());
			findpwUri="user/member/find_password_reset";
		}else { //ȸ����������
			model.addAttribute("pwFindFail","��ġ�ϴ� ȸ���� �����ϴ�.");
			findpwUri="user/member/find_password";
		}
		
		return findpwUri;

	}
	
	//PW����
	@RequestMapping(value = "/find_pass_process.do",method = POST)
	public String findPassProcess(MemberVO mVO,Model model) {
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		String updatePwUri="";
		
		mVO.setNewPass(passEncoder.encode(mVO.getNewPass())); //���ο� ��й�ȣ ��ȣȭ
		System.out.println("��й�ȣ ���� : "+mVO);
		int pwEdit=ms.editPassReser(mVO);
		if(pwEdit==1) { //��й�ȣ ���� ����
			System.out.println("��� ���� ����");
			updatePwUri="user/member/find_password_complete";
		}else { //��й�ȣ ���� ����
			System.out.println("��� ���� ����");
			model.addAttribute("pwEditFail","��й�ȣ���� ����.");
			updatePwUri="user/member/find_password_reset";
		}

		
		
		return updatePwUri;
	}
	
	//�α׾ƿ�
	@RequestMapping(value="/logout_process.do",method = GET)
	public String logoutProcess(SessionStatus ss) {
	
		ss.setComplete();
		
		return "redirect:http://localhost/salad_mvc/index.do";
	}
	
	//�̿�������ȭ���̵�
	@RequestMapping(value = "/agreement.do",method = GET)
	public String agreement(Model model) {
		

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);

		return "user/member/agreement";
	}
	
	//����������������ȭ���̵�
	@RequestMapping(value = "/pprivate.do",method = GET)
	public String pprivate(Model model) {

		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);

		return "user/member/pprivate";
	}

}
