package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

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
import kr.co.salad.user.service.PrdDetailService;
import kr.co.salad.user.service.WishService;
import kr.co.salad.user.vo.WishVO;

/**
 * ��ǰ�󼼺���
 * @author user
 *
 */
@SessionAttributes({"userId", "userName"})
@Controller
public class WishController {
	
	@Autowired(required = false)
	private WishService wService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	@RequestMapping(value="/mypage/wish_list.do", method= {GET, POST})//
	public String wishListForm(HttpSession session, Model model) { 
		String url="user/mypage/wish_list";
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		//��ü ī�װ�
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		
		return url;
	}//wishListForm
	
	@ResponseBody
	@RequestMapping(value="/user/mypage/my_total_ajax.do", method={GET, POST}, produces="application/json; charset=UTF-8")
	public String searchMyTotalAjax(HttpSession session) {
		
		WishVO wVO=new WishVO();
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		
		wVO.setId(userId);
		
		//���� ��, �ı�, ��ǰ���� �Ǽ�
		String jsonObj=wService.searchMyTotalJson(wVO);//���� ��, �ı�, ��ǰ���� �Ǽ�
		return jsonObj;
	}//searchMyTotalAjax
	
	
	@ResponseBody
	@RequestMapping(value="/mypage/wish_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String wishListAjax(HttpSession session, WishVO wVO ) { 
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		
		wVO.setId(userId);
		String jsonObj=wService.searchWishListJson(wVO);//�� ����Ʈ
		
		return jsonObj;
	}//wishListAjax
	
	@ResponseBody
	@RequestMapping(value="/mypage/remove_wish_process.do", method= GET, produces="application/json; charset=UTF-8")
	public String removeWishProcess(HttpSession session, WishVO wVO) {
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		
		wVO.setId(userId);
		String jsonObj=wService.removeWish(wVO);
		
		return jsonObj;
	}//removeWishProcess
	
	@ResponseBody
	@RequestMapping(value="/goods/wish_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String wishAjax(HttpSession session, WishVO wVO ) {//(���̵�Session, prdNum, wishFlag, setFlag)  

		String userId=(String)session.getAttribute("userId");//���� ��������
		
		if(userId==null) {
			userId="";
		}//end if
		
		wVO.setId(userId);
		//�� ����
		int[] prdNumArrTemp={wVO.getPrdNum()};//������ ��ǰ ��ȣ �迭
		if("eventSet".equals(wVO.getSetFlag())) {//��ư Ŭ�� �̺�Ʈ ����
			if("true".equals(wVO.getWishFlag())) {//�� ����
				
				wVO.setPrdNumArr(prdNumArrTemp);
				wService.removeWish(wVO);//�� ����
			}else {
				wService.addWish(wVO);//�� �߰�
			}//end else
		}//end if
		
		String jsonObj=wService.wishJson(wVO);//�� ����
		
		return jsonObj;
	}//wishAjax
	
}//class
