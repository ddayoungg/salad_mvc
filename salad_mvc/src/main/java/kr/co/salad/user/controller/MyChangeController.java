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
			  MyChangeVO chanVO = new MyChangeVO();
			  chanVO.setId(userId);
			  }
			  //��ü ī�װ� 
			  List<KategoriePrdDomain> mainCateList = kpService.mainCateList();
			  model.addAttribute("mainCateList",mainCateList);//���θ޴�
			 
				
		return chkURL;
	}//
	
	
	//ȸ������ 
	@RequestMapping(value = "/my_change.do",method= {GET,POST})
	public String myChangeForm(MyChangeVO chanVO,Model model,HttpSession session) {
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();

		String chkURL = null;
		String userId = (String)session.getAttribute("userId");//���� ��������
		
		if(userId==null) {//�α����� �ȵǾ�������
			chkURL="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg","�α����� ���ּ���");
		} else {//�α����� �Ǿ�������(��������)
			//chkURL="user/mypage/my_page";
			chanVO.setId(userId);
			//chanVO.getPass();
			//System.out.println(chanVO.getPass()+chanVO.getId());
			boolean passMatch=false;
			MyChangeVO resultVO = chanService.searchMyMember(chanVO);	
			System.out.println(passMatch);
			passMatch = passEncoder.matches(chanVO.getPass(), resultVO.getPass());
			if(passMatch == false) {
				System.out.println("�ٿ�"+passMatch);
				System.out.println("���������� ���� ����"+resultVO);
			} else if (passMatch == true){
				System.out.println("��ȣȭ ��ȸ"+resultVO.getPass());
				System.out.println("���������� ���� ����"+resultVO);
				System.out.println("�Է��� ���"+chanVO.getPass());
			}
			
		if (passMatch == true ){
			System.out.println(passMatch);
			chkURL="user/mypage/my_page";
			model.addAttribute("userId",userId);
			//��ü ī�װ� 
			List<KategoriePrdDomain> mainCateList = kpService.mainCateList();
			model.addAttribute("mainCateList",mainCateList);//���θ޴�					
			
			//���̵�&�̸��� ����
			String editEmail =resultVO.getEmail();
			int index = editEmail.indexOf("@");
			String resultId = editEmail.substring(0,index);
			String resultEmail = editEmail.substring(index+1);
				
			System.out.println("����"+resultId+resultEmail);
			System.out.println("�� ������"+resultVO);			
				
			model.addAttribute("resultId", resultId);
			model.addAttribute("resultEmail", resultEmail);
			model.addAttribute("chanConfirmVO", resultVO);		
			}else if (passMatch == false) {
				chkURL="user/mypage/my_page_password"; 
				model.addAttribute("msgPass","��й�ȣ�� �ٽ� Ȯ�����ּ���.");
			}
		}
		System.out.println(chkURL);
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
		
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		chanVO.setNewPass(passEncoder.encode(chanVO.getNewPass())); //���ο� ��й�ȣ ��ȣȭ
		
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
	
	//��� �ߺ� Ȯ��
	@RequestMapping("/pw_chk_process.do")
	public String checkPass(MyChangeVO chanVO,Model model,HttpSession session) {
		BCryptPasswordEncoder passEncoder=new BCryptPasswordEncoder();
		String backURL = "";
		
		String userId = (String)session.getAttribute("userId");//���� ��������
		chanVO.setId(userId);
		chanVO.getPass();
		System.out.println("������ ���"+chanVO.getPass());
		
		boolean passMatch = false;
		
		MyChangeVO resultVO=chanService.searchMemberPass(chanVO);
		
		passMatch = passEncoder.matches(chanVO.getPass(), resultVO.getPass());
		if(passMatch == false) {
			System.out.println("��� �ߺ� Ȯ�� ����"+resultVO);
			model.addAttribute("confirmMsg","�ùٸ������� ��й�ȣ�Դϴ�.");
			backURL= "user/mypage/my_page";
			//���̵�&�̸��� ����
			String editEmail = resultVO.getEmail();
			int index = editEmail.indexOf("@");
			String resultId = editEmail.substring(0,index);
			String resultEmail = editEmail.substring(index+1);
		
			
			System.out.println("���� �� ����"+resultId+resultEmail);
			System.out.println("���� �� ������"+resultVO);			
			
			model.addAttribute("resultId", resultId);
			model.addAttribute("resultEmail", resultEmail);
			model.addAttribute("chanConfirmVO", resultVO);	
		} else if (passMatch == true){
			System.out.println("��� �ߺ� Ȯ�� ����"+resultVO);
			model.addAttribute("confirmMsg","��й�ȣ�� Ȯ�εǾ����ϴ�.");
			backURL= "user/mypage/my_page";
			
			//���̵�&�̸��� ����
			String editEmail = resultVO.getEmail();
			int index = editEmail.indexOf("@");
			String resultId = editEmail.substring(0,index);
			String resultEmail = editEmail.substring(index+1);
		
			
			System.out.println("���� �� ����"+resultId+resultEmail);
			System.out.println("���� �� ������"+resultVO);			
			
			model.addAttribute("resultId", resultId);
			model.addAttribute("resultEmail", resultEmail);
			model.addAttribute("chanConfirmVO", resultVO);	
			model.addAttribute("confirmPass",chanVO.getPass());
		}		
		return backURL;
	}//
	
	
}//class
