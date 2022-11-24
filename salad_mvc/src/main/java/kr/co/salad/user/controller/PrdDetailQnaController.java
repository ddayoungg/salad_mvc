package kr.co.salad.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.service.PrdDetailService;
import kr.co.salad.user.service.PrdDetailQnaService;
import kr.co.salad.user.vo.PrdDetailVO;
import kr.co.salad.user.vo.PrdDetailQnaVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpSession;

/**
 * ��ǰ�󼼺���
 * @author user
 *
 */
@SessionAttributes({"userId", "userName"})
@Controller
public class PrdDetailQnaController {
	
	@Autowired(required = false)
	private PrdDetailQnaService qService;
	
	@Autowired(required = false)
	private PrdDetailService pService;
	
	@ResponseBody
	@RequestMapping(value="/goods/qna_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchQnaListAjax(PrdDetailQnaVO qVO) {
		
		//��ǰ���� ����Ʈ
		String jsonObj=qService.searchQnaListJson(qVO);//��ǰ ��ȣ, ���� ������
		return jsonObj;
	}//searchQnaListPageProcess
	
	/**
	 * ��ǰ���� �ۼ� �˾� â
	 * @param prdNum
	 * @param prdModel
	 * @return
	 */
	@RequestMapping(value="/board/add_qna_write.do", method= {GET, POST})
	public String addQnaWriteForm(HttpSession session, int prdNum, Model model) {
		String url="user/board/popup_goodsqa_board_write";
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		PrdDetailDomain pDomain=pService.searchPrdDetail(prdNum);
		
		model.addAttribute("prdData", pDomain);
		
		return url;
	}//addQnaWriteForm
	
	@RequestMapping(value="/board/add_qna_write_process.do", method= {POST, GET})
	public String addQnaWriteProcess(HttpSession session, PrdDetailQnaVO qVO, Model model) {
		String url="forward:/board/add_qna_write.do";
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		qVO.setId(userId);
		qService.addQnaWrite(qVO);
		
		return url;
	}//addQnaWriteProcess
	
}//class
