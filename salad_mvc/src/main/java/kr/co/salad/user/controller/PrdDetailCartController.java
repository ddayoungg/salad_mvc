package kr.co.salad.user.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.service.PrdDetailCartService;
import kr.co.salad.user.vo.PrdDetailCartVO;

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
		
		pdcVO.setId(userId);
		pdcVO.setCartPrdCnt(1);
		String jsonObj=pdcService.addCartWish(pdcVO);//�� ��Ͽ��� ��ٱ��� �߰�
		
		return jsonObj;
	}//addCartWishProcess
	
}//class
