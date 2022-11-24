package kr.co.salad.user.controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.manager.vo.MngCancelVO;
import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.domain.MyChangeDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.MyChangeService;
import kr.co.salad.user.vo.MyChangeVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.lang.System.Logger;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


@SessionAttributes({"userId","userName"})
@Controller
public class MyChangeController {
	
	@Autowired(required = false)
	private MyChangeService chanService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	
	//ȸ������ ���� �� ��� Ȯ��
	@RequestMapping(value = "/my_change_index.do",method=GET)
	public String mypageMain(HttpSession session,Model model) {
			String chkURL = null;
			String userId = (String)session.getAttribute("userId");//���� ��������
			
			
			  if(userId==null) {//�α����� �ȵǾ�������
			  chkURL="redirect:http://localhost/salad_mvc/login.do";
			  model.addAttribute("eMsg","�α����� ���ּ���"); 
			  } else {//�α����� �Ǿ�������(��������)
			  chkURL="user/mypage/my_page_password"; 
			  model.addAttribute("userId",userId);
			  }
			 
			  //��ü ī�װ� 
			  List<KategoriePrdDomain> mainCateList = kpService.mainCateList();
			  model.addAttribute("mainCateList",mainCateList);//���θ޴�
				
		return chkURL;
	}//
	
	
	//ȸ������ 
	@RequestMapping(value = "/my_change.do",method= {GET,POST})
	public String myChangeForm(MyChangeVO chanVO,Model model,HttpSession session) {
		
		String chkURL = null;
		String userId = (String)session.getAttribute("userId");//���� ��������
		
		if(userId==null) {//�α����� �ȵǾ�������
			chkURL="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg","�α����� ���ּ���");
		} else {//�α����� �Ǿ�������(��������)
			chkURL="user/mypage/my_page";
			model.addAttribute("userId",userId);
		}

		boolean passConfirm=false;
		
		//��ü ī�װ� 
		List<KategoriePrdDomain> mainCateList = kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);//���θ޴�
		
		System.out.println(chanVO);
		passConfirm = chanService.searchMyChangePass(chanVO);
		//model.addAttribute("chanVO",chanVO);
		
		if (passConfirm == true) {
			
			MyChangeVO chanConfirmVO = new MyChangeVO();
			chanConfirmVO = chanService.searchMyMember(chanVO);
			
			//���̵�&�̸��� ����
			String editEmail = chanConfirmVO.getEmail();
			int index = editEmail.indexOf("@");
			String resultId = editEmail.substring(0,index);
			String resultEmail = editEmail.substring(index+1);
			
			System.out.println("����"+resultId+resultEmail);
			System.out.println("�� ������"+chanConfirmVO);			
			
			model.addAttribute("resultId", resultId);
			model.addAttribute("resultEmail", resultEmail);
			model.addAttribute("chanConfirmVO", chanConfirmVO);		

		}
		return chkURL;
	}//
	
	//�� ���� ����
	@RequestMapping(value = "/my_change_update.do",method= {GET,POST})
	public String updateMyChangeForm(MyChangeVO chanVO,Model model,HttpSession session) {
		String chkURL = null;
		String userId = (String)session.getAttribute("userId");//���� ��������
		
		if(userId==null) {//�α����� �ȵǾ�������
			chkURL="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg","�α����� ���ּ���");
		} else {//�α����� �Ǿ�������(��������)
			chkURL="user/mypage/my_page";
			model.addAttribute("userId",userId);
		}
		
		//��ü ī�װ� 
		List<KategoriePrdDomain> mainCateList = kpService.mainCateList();
		model.addAttribute("mainCateList",mainCateList);//���θ޴�
		
		System.out.println("����ƴ�?"+chanVO);
		int updateStatus = 0;
		MyChangeVO chanConfirmVO = new MyChangeVO();

		updateStatus = chanService.editMyMember(chanVO);
		chanConfirmVO = chanVO;
		
		if ( updateStatus == 1) {
		
		//���̵�&�̸��� ����
		String editEmail = chanConfirmVO.getEmail();
		int index = editEmail.indexOf("@");
		String resultId = editEmail.substring(0,index);
		String resultEmail = editEmail.substring(index+1);
		
		System.out.println("���� �� ����"+resultId+resultEmail);
		System.out.println("���� �� ������"+chanConfirmVO);			
		
		model.addAttribute("resultId", resultId);
		model.addAttribute("resultEmail", resultEmail);
		model.addAttribute("chanConfirmVO", chanConfirmVO);		
		
		model.addAttribute("confirmMsg","ȸ�������� ����Ǿ����ϴ�.");
		return  chkURL;
		} else  {	
			model.addAttribute("confirmMsg","ȸ�������� ������� �ʾҽ��ϴ�.");
			return  chkURL;
		}
	}//
	
	
//	@RequestMapping("/pw_chk_process.do")
//	public String checkPass(MyChangeVO chanVO,Model model) {
//		boolean reconfirmPass = false;
//		
//		reconfirmPass=chanService.searchMemberPass(chanVO);
//		
//		if(reconfirmPass == true ) {
//			model.addAttribute("msgPass","��й�ȣ�� Ȯ�εǾ����ϴ�.");
//			return "redirect:/my_change.do";
//		} else {
//			model.addAttribute("msgPass","�ùٸ������� ��й�ȣ�Դϴ�.");
//			return "redirect:/my_change.do";
//		}
//	}//
	
	
}//class
