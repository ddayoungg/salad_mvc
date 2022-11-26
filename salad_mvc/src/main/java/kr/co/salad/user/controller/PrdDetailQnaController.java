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
import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.domain.QnaDetailDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.PrdDetailQnaService;
import kr.co.salad.user.service.PrdDetailService;
import kr.co.salad.user.vo.PrdDetailQnaVO;

/**
 * 상품상세보기
 * @author user
 *
 */
@SessionAttributes({"userId", "userName"})
@Controller
public class PrdDetailQnaController {
	
	@Autowired(required = false)
	private PrdDetailQnaService pdqService;
	
	@Autowired(required = false)
	private PrdDetailService pdService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	@ResponseBody
	@RequestMapping(value="/goods/qna_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchQnaListAjax(PrdDetailQnaVO pdqVO) {
		
		//상품문의 리스트
		String jsonObj=pdqService.searchQnaListJson(pdqVO);//제품 번호, 현재 페이지
		return jsonObj;
	}//searchQnaListAjax
	
	/**
	 * 상품문의 작성 팝업 창
	 * @param prdNum
	 * @param prdModel
	 * @return
	 */
	@RequestMapping(value="/board/add_qna_write.do", method= {GET, POST})
	public String addQnaWriteForm(HttpSession session, int prdNum, Model model) {
		String url="user/board/popup_goodsqa_board_write";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		PrdDetailDomain pDomain=pdService.searchPrdDetail(prdNum);
		
		model.addAttribute("prdData", pDomain);
		
		return url;
	}//addQnaWriteForm
	
	@RequestMapping(value="/board/add_qna_write_process.do", method= {POST, GET})
	public String addQnaWriteProcess(HttpSession session, PrdDetailQnaVO pdqVO, Model model) {
		String url="forward:/board/add_qna_write.do";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		pdqVO.setId(userId);
		pdqService.addQnaWrite(pdqVO);
		
		return url;
	}//addQnaWriteProcess
	
	@RequestMapping(value="/qna_detail.do", method= {GET, POST})
	public String searchQnaDetailForm(HttpSession session, PrdDetailQnaVO pdpdqVO, Model model) {
		String url="user/board/popup_goodsqa_board_detail";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		
		pdpdqVO.setId(userId);
		
		PrdDetailDomain pDomain=pdService.searchPrdDetail(pdpdqVO.getPrdNum());
		
		model.addAttribute("prdData", pDomain);
		
		QnaDetailDomain qdDomain=pdqService.searchQnaDetail(pdpdqVO.getQnaNum());
		
		model.addAttribute("qnaData", qdDomain);
		
		return url;
	}//searchQnaDetailForm
	
	@RequestMapping(value="/my_qna.do", method= {GET, POST})//
	public String qnaListForm(HttpSession session, Model model) { 
		String url="user/mypage/qna_list";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		//전체 카테고리
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		
		model.addAttribute("mainCateList", mainCateList);//메인 메뉴
		
		return url;
	}//qnaListForm
	
	@ResponseBody
	@RequestMapping(value="/my_qna_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchMyQnaListAjax(HttpSession session, PrdDetailQnaVO pdqVO) {//마이페이지 상품문의 리스트
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		
		pdqVO.setId(userId);
		
		//마이페이지 상품문의 리스트
		String jsonObj=pdqService.searchQnaListJson(pdqVO);//제품 번호, 현재 페이지
		return jsonObj;
	}//searchMyQnaListAjax
	
}//class
