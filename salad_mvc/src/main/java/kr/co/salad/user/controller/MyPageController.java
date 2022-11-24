package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MyPageService;
import kr.co.salad.user.vo.MyPageVO;

@Controller
public class MyPageController {
	
	@Autowired(required = false)
	private MyPageService mpService;
	
   @Autowired(required = false)
	private KategoriePrdService kpService;

	
	//���������� ù ȭ��
	@RequestMapping(value = "/mypage_pass.do",method = GET)
	public String myPagePassForm(HttpSession session,Model model) {
		String chkURL=null;
		
		String userId=(String)session.getAttribute("userId"); //���� ��������
		if(userId==null) { //�α����� �ȵǾ�������
			chkURL="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "�α��������ּ���");
		}else { //�α����� �Ǿ�������(��������)
			List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
			model.addAttribute("mainCateList",mainCateList);
			chkURL="user/mypage/main_passChk";
			model.addAttribute("userId", userId);
		}
		
		
		return chkURL;
	}
	
	//���������� ��й�ȣ ����ó��
	@RequestMapping(value = "/mypage_pass_process.do",method = POST)
	public String myPagePassProcess(HttpSession session,String pass,Model model) {
		String chkURL=null;
		
		String userId=(String)session.getAttribute("userId"); //���� ��������
		
		MyPageVO mpVO=new MyPageVO(userId, pass);
		boolean passChkFlag=false;
		passChkFlag=mpService.searchMyPass(mpVO);
		
		if(passChkFlag) {
			chkURL="redirect:http://localhost/salad_mvc/order_list.do"; //�ֹ�����ȭ������
		}else {
			chkURL="redirect:http://localhost/salad_mvc/mypage_pass.do";
			model.addAttribute("eMsg", true);
		}
		return chkURL;
	}

}
