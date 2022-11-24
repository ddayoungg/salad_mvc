package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.vo.KategoriePrdVO;

@SessionAttributes({"userId", "userName"})
@Controller
public class KategoriePrdController {
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	@RequestMapping(value="/goods_list.do", method=GET)
	public String goodsListForm(HttpSession session ,KategoriePrdVO kpVO, Model model) {
		String url="user/goods/goods_list";
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			//url="redirect:http://localhost/salad_mvc/login.do";
			//model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		int mainCateNum=kpVO.getMainCateNum();
		
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		List<KategoriePrdDomain> subCateList=kpService.subCateList(mainCateNum);
		
		String mainCateName=mainCateList.get(mainCateNum-1).getMainCateName();//���� ���� ī�װ���
		
		model.addAttribute("mainCateName", mainCateName);//���� ���� ī�װ���
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		model.addAttribute("subCateList", subCateList);//���� �޴�
		
		return url;
	}//goodsListForm
	
	@ResponseBody
	@RequestMapping(value="/cate_prd_box_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchCatePrdBoxListAjax(KategoriePrdVO kpVO) {
		
		//��ǰ �ڽ��� ����Ʈ
		String jsonObj=kpService.searchPrdBoxListJson(kpVO);//���� ������, ���� ī�װ�, ���� ī�װ�
		return jsonObj;
	}//searchCatePrdBoxListAjax
	
}//class
