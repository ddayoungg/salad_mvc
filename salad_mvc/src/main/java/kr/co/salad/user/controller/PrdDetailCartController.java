package kr.co.salad.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.domain.PrdDetailRevDomain;
import kr.co.salad.user.service.PrdDetailCartService;
import kr.co.salad.user.service.PrdDetailService;
import kr.co.salad.user.service.PrdDetailQnaService;
import kr.co.salad.user.service.PrdDetailRevService;
import kr.co.salad.user.vo.PrdDetailCartVO;
import kr.co.salad.user.vo.PrdDetailVO;
import kr.co.salad.user.vo.PrdDetailQnaVO;
import kr.co.salad.user.vo.PrdDetailRevVO;
import kr.co.salad.user.vo.WishVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.List;

import javax.servlet.http.HttpSession;

/**
 * ��ǰ�󼼺���
 * @author user
 *
 */
@SessionAttributes({"userId", "userName"})
@Controller
public class PrdDetailCartController {
	
	@Autowired(required = false)
	private PrdDetailCartService pdcService;
	
	@ResponseBody
	@RequestMapping(value="/goods/add_cart_process.do", method=GET, produces="application/json; charset=UTF-8")
	public String addCartProcess(HttpSession session, PrdDetailCartVO pdcVO, Model model) {//��ٱ��� �߰�
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		
		pdcVO.setId(userId);
		
		String jsonObj=""; //��ǰ ���� �߰�
		//�ش� ��ǰ�� ��ٱ��Ͽ� �ִ��� Ȯ�� : true : ��ϵ�, false : ��� �ȵ�.
		if(pdcService.searchCartChk(pdcVO)) {
			jsonObj=pdcService.editCartPrdCnt(pdcVO);
		}else {
			jsonObj=pdcService.addCart(pdcVO);
		}//end if
		
		return jsonObj;
	}//addCartProcess
	
	@ResponseBody
	@RequestMapping(value="/mypage/add_cart_wish_process.do", method= GET, produces="application/json; charset=UTF-8")
	public String addCartWishProcess(HttpSession session, PrdDetailCartVO pdcVO, Model model) {
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			//url="redirect:http://localhost/salad_mvc/login.do";
			//model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		pdcVO.setId(userId);
		System.out.println(pdcVO);
		String jsonObj=pdcService.addCartWish(pdcVO);//�� ��Ͽ��� ��ٱ��� �߰�
		
		return jsonObj;
	}//addCartWishProcess
	
}//class
