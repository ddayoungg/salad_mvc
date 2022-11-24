package kr.co.salad.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.service.MngRevService;
import kr.co.salad.manager.vo.MngRevVO;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngRevController {
	
	@Autowired(required = false)
	private MngRevService mrService;
	
	//�ı�ȭ������ �̵�
	@RequestMapping(value = "mng_rev.do",method =GET )
	public String mngRevRequest(HttpSession session,MngRevVO mrVO,Model model) {
		String url=null;
		
		String mngid=(String) session.getAttribute("mngId");
		System.out.println("����Ȯ�� : "+mngid);
		if(mngid==null) { //������ ������ (�α���ȭ������ �̵�)
			url="redirect:http://localhost/salad_mvc/mng_index.do";
		}else if(mngid.equals("admin")){ //������ �α��ν�
			url="manager/review/mng_review";
		}
		
		return url;
	}
	
	
	@RequestMapping(value="mng_rev_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchRevListAjax(MngRevVO mrVO) {
		//������� ����Ʈ
		String jsonObj=mrService.searchRevList(mrVO);//���� ������,�˻���
		System.out.println(jsonObj);
		return jsonObj;
	}//searchRevListAjax
	
	//�ı���� �󼼺���
	@RequestMapping(value = "mng_rev_detail.do",method =GET )
	public String mngRevDetail(HttpSession session,int revNum,Model model) {
		String url=null;
		
		String mngid=(String) session.getAttribute("mngId");
		if(mngid==null) { //������ ������ (�α���ȭ������ �̵�)
			url="redirect:http://localhost/salad_mvc/mng_index.do";
		}else if(mngid.equals("admin")){ //������ �α��ν�
			url="manager/review/mng_review_detail";
		}
		
		
		MngRevDomain mrd=mrService.searchRevDetail(revNum);
	
		model.addAttribute("prdBodyThum",mrd.getPrdBodyThum());
		//���� ����ϱ�
		double disCountPro=mrd.getPrdDiscount()*0.01;
		double disCount= mrd.getPrdPrice()*disCountPro;
		double price=mrd.getPrdPrice()-disCount;
		model.addAttribute("price", price);
		model.addAttribute("revImg", mrd.getRevImg());
		model.addAttribute("revNum", mrd.getRevNum());
		model.addAttribute("revName", mrd.getName());
		model.addAttribute("revTitle", mrd.getRevTitle());
		model.addAttribute("revCont", mrd.getRevCont());
		model.addAttribute("revHits", mrd.getRevHits());
		model.addAttribute("prdName", mrd.getPrdName());
		model.addAttribute("bestFlag", mrd.getBestFlag());
		model.addAttribute("revWriteDate", mrd.getRevWriteDate());
		
		return url;
	}
	
	//�ı����
	@RequestMapping(value = "mng_rev_remove_process.do",method =GET )
	public String mngRevRemove(int revNum,Model model) {
		System.out.println("������ �ı�� ��ȣ : "+revNum);
		
		int flag=mrService.removeRev(revNum);
		if(flag==1) {
			model.addAttribute("eMsg", "�ıⰡ�����Ǿ����ϴ�.");
		}else {
			model.addAttribute("eMsg", "�ıⰡ�������� �ʾҽ��ϴ�..");
		}
		return "redirect:http://localhost/salad_mvc/mng_rev.do";
	}
	
	//�ı⺣��Ʈ ���
	@RequestMapping(value = "mng_rev_best_edit_process.do",method =GET )
	public String mngRevBestEditProcess(int revNum,Model model) {
		System.out.println("����Ʈ��� �ı�� ��ȣ : "+revNum);
		int flag=mrService.editBestRev(revNum);
		if(flag==1) {
			model.addAttribute("eMsg", "�ı���� ����Ʈ�ı�۷� ��ϵǾ����ϴ�.");
		}else {
			model.addAttribute("eMsg", "�ı���� ����Ʈ�ı�۷� ��ϵ��� �ʾҽ��ϴ�.");
		}
		return "redirect:http://localhost/salad_mvc/mng_rev.do";
	}
	
	//ī�װ� ����
	@RequestMapping(value = "cate_main.do",method =GET ,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String cateMain() {
		String jsonObj=mrService.searchMainCate();
		return jsonObj;
	}
	
	//ī�װ� ����
	@RequestMapping(value = "cate_sub.do",method =GET , produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String cateSub(int mainCateNum) {
		String jsonObj=mrService.searchSubCate(mainCateNum);
		return jsonObj;
	}

}
