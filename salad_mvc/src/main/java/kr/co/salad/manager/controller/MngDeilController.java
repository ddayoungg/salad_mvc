package kr.co.salad.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.service.MngDeilService;
import kr.co.salad.manager.service.MngRevService;
import kr.co.salad.manager.vo.MngDeilVO;
import kr.co.salad.manager.vo.MngRevVO;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class MngDeilController {
	
	@Autowired(required = false)
	private MngDeilService mdService;
	
	//���� ��� ����Ʈ ȭ��
	@RequestMapping(value = "mng_deli.do",method =GET )
	public String mngDeliMain(HttpSession session, MngDeilVO mdVO,Model model) {
		
		String url=null;
		
		String mngid=(String) session.getAttribute("mngId");
		if(mngid==null) { //������ ������ (�α���ȭ������ �̵�)
			url="redirect:http://localhost/salad_mvc/mng_index.do";
		}else if(mngid.equals("admin")){ //������ �α��ν�
			url="/manager/deli/mng_deli_main";
		}
		
		return url;
	}
	
	
	@RequestMapping(value="mng_deil_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchDeilListAjax(MngDeilVO mdVO) {
		System.out.println(mdVO);
		//��۰��� ����Ʈ
		String jsonObj=mdService.searchDeilList(mdVO);//���� ������,�˻���
		return jsonObj;
	}//searchRevListAjax
	
	//��� ����  ���� 
	@RequestMapping(value="/mng_deli_update.do",method = GET)
	public String mngDeliUpdate(MngDeilVO mdVO,Model model) {
		System.out.println(mdVO);
		mdService.editDeilStatus(mdVO);
		model.addAttribute("msg", "��ۻ��°�����Ǿ����ϴ�.");
		return "redirect:http://localhost/salad_mvc/mng_deli.do";
	}
	

}
