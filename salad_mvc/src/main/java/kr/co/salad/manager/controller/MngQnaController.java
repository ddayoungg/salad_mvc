package kr.co.salad.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.salad.manager.domain.MngQnaDomain;
import kr.co.salad.manager.service.MngQnaAService;
import kr.co.salad.manager.service.MngQnaService;
import kr.co.salad.manager.vo.MngQnaAVO;
import kr.co.salad.manager.vo.MngQnaVO;



@Controller
public class MngQnaController {
	
	@Autowired(required = false)
	private MngQnaService mqService;
	@Autowired(required = false)
	private MngQnaAService mqaService;
	
	//메인화면
	@RequestMapping(value = "/mng_qna.do",method = GET)
	public String mngQnaMain(HttpSession session, MngQnaVO mqVO, Model model) {
		String url="manager/qna/mng_qna";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://localhost/salad_mvc/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		return url;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mng_qna_total_ajax.do",method = GET, produces="application/json; charset=UTF-8")
	public String mngQnaTotalAjax() {
		//전체 문의수, 답변, 미답변
		String jsonObj=mqService.searchQnaTotalJson();
		System.out.println(jsonObj);
		return jsonObj;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mng_qna_main_cate_ajax.do",method = GET, produces="application/json; charset=UTF-8")
	public String searchMainCateAjax() {
		//전체 문의수, 답변, 미답변
		String jsonObj=mqService.searchMainCate();
		
		return jsonObj;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mng_qna_sub_cate_ajax.do",method = GET, produces="application/json; charset=UTF-8")
	public String searchSubCateAjax(int mainCateNum) {
		//전체 문의수, 답변, 미답변
		String jsonObj=mqService.searchSubCate(mainCateNum);
		
		return jsonObj;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mng_qna_list_ajax.do",method = GET, produces="application/json; charset=UTF-8")
	public String mngQnaListAjax(MngQnaVO mqVO) {
				
		System.out.println( "-----------"+mqVO );
		String jsonObj=mqService.searchQnaListJson(mqVO); 
		return jsonObj;
	}
	

	
	@RequestMapping(value = "/mng_qna_detail.do",method = GET)
	public String mngQnaDetail(HttpSession session, int qnaNum, Model model) {
		String url="manager/qna/mng_qna_detail";
		
//		String mngId=(String)session.getAttribute("mngId");
//		if(mngId==null) {
//			url="redirect:http://localhost/salad_mvc/mng_index.do";
//			model.addAttribute("eMsg", "로그인을 해주세요");
//		}else {
//			url="manager/qna/mng_qna";
//		}
		
		MngQnaDomain mqDomain = mqService.searchQnaDetail(qnaNum);
		model.addAttribute("qnaData", mqDomain);
		
		MngQnaAVO answer =null;
		answer=mqaService.answerLook(qnaNum);
		model.addAttribute("answer", answer);
		
		return url;
	}

//	@RequestMapping(value = "/mng_qna_answer.do",method = GET)
//	public String mngQnaa(HttpSession session, MngQnaVO mqVO, int qnaNum, Model model) {
//		String url="manager/qna/mng_qna_answer";
//		
//		/*
//		 * String mngId=(String)session.getAttribute("mngId"); if(mngId==null) {
//		 * url="redirect:http://localhost/salad_mvc/mng_index.do";
//		 * model.addAttribute("eMsg", "로그인을 해주세요"); }else {
//		 * url="manager/qna/mng_qna_finish"; }
//		 */
//		MngQnaDomain mqDomain = mqService.searchQnaDetail(qnaNum);
//		model.addAttribute("qnaData", mqDomain);
//		
//		return url;
//	}
//	
//	@RequestMapping(value = "/mng_qna_edit.do", method= {POST, GET})
//	public String mngQnaEditForm(HttpSession session, int qnaNum, Model model) {
//		String url="manager/qna/mng_qna_edit";
//		
//		String mngId=(String)session.getAttribute("mngId");
//		if(mngId==null) {
//			url="redirect:http://localhost/salad_mvc/mng_index.do";
//			model.addAttribute("eMsg", "로그인을 해주세요");
//		}else {
//			model.addAttribute("mngId", mngId);
//		}
//		
//		MngQnaDomain mqDomain = mqService.searchQnaDetail(qnaNum);
//		
//		model.addAttribute("qnaData", mqDomain);
//		
//		return url;
//	}
	

	
}
