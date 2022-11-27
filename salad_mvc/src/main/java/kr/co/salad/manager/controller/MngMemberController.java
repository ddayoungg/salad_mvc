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
	public String mngMemberMain(HttpSession session, Model model) {//ȸ�� ���� Ȩ ȭ��
		String url="manager/member/mng_member";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
		return url;
	}//searchPrdDetail
	
	@ResponseBody
	@RequestMapping(value="/mng_member_total_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchMemberTotalAjax() {
		
		//��ü ȸ�� ��, ���� ��, Ż�� ��
		String jsonObj=mmService.searchMemberTotalJson();//ȸ�� �� ����
		return jsonObj;
	}//searchMemberTotalAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_member_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchMemberListAjax(MngMemberVO mmVO) {
		
		//ȸ������ ����Ʈ
		String jsonObj=mmService.searchMemberListJson(mmVO);//���� ������, �ʵ��,  �˻���
		return jsonObj;
	}//searchRevListAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_member_detail_popup_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchMemberDetailAjax(String id) {//ȸ�� �� ���� �˾�
		//ȸ�� �� ����
		String jsonObj=mmService.searchMemberDetailJson(id);//ȸ�� �� ����
		return jsonObj;
	}//searchRevListAjax
	
	@RequestMapping(value="/mng_member_out_process.do", method= {POST, GET})
	public String mngMemberOutProcess(HttpSession session, MngMemberVO mmVO, Model model) {//ȸ�� ���� Ż�� ó��
		String url="forward:/mng_member.do";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
		mmService.editMemberOut(mmVO);
		
		return url;
	}//mngMemberOutProcess
	
}//class
