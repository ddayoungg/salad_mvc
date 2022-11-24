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
	
	//후기화면으로 이동
	@RequestMapping(value = "mng_rev.do",method =GET )
	public String mngRevRequest(HttpSession session,MngRevVO mrVO,Model model) {
		String url=null;
		
		String mngid=(String) session.getAttribute("mngId");
		System.out.println("세션확인 : "+mngid);
		if(mngid==null) { //세션이 없을때 (로그인화면으로 이동)
			url="redirect:http://localhost/salad_mvc/mng_index.do";
		}else if(mngid.equals("admin")){ //관리자 로그인시
			url="manager/review/mng_review";
		}
		
		return url;
	}
	
	
	@RequestMapping(value="mng_rev_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchRevListAjax(MngRevVO mrVO) {
		//리뷰관리 리스트
		String jsonObj=mrService.searchRevList(mrVO);//현재 페이지,검색명
		System.out.println(jsonObj);
		return jsonObj;
	}//searchRevListAjax
	
	//후기관리 상세보기
	@RequestMapping(value = "mng_rev_detail.do",method =GET )
	public String mngRevDetail(HttpSession session,int revNum,Model model) {
		String url=null;
		
		String mngid=(String) session.getAttribute("mngId");
		if(mngid==null) { //세션이 없을때 (로그인화면으로 이동)
			url="redirect:http://localhost/salad_mvc/mng_index.do";
		}else if(mngid.equals("admin")){ //관리자 로그인시
			url="manager/review/mng_review_detail";
		}
		
		
		MngRevDomain mrd=mrService.searchRevDetail(revNum);
	
		model.addAttribute("prdBodyThum",mrd.getPrdBodyThum());
		//가격 계산하기
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
	
	//후기삭제
	@RequestMapping(value = "mng_rev_remove_process.do",method =GET )
	public String mngRevRemove(int revNum,Model model) {
		System.out.println("삭제할 후기글 번호 : "+revNum);
		
		int flag=mrService.removeRev(revNum);
		if(flag==1) {
			model.addAttribute("eMsg", "후기가삭제되었습니다.");
		}else {
			model.addAttribute("eMsg", "후기가삭제되지 않았습니다..");
		}
		return "redirect:http://localhost/salad_mvc/mng_rev.do";
	}
	
	//후기베스트 등록
	@RequestMapping(value = "mng_rev_best_edit_process.do",method =GET )
	public String mngRevBestEditProcess(int revNum,Model model) {
		System.out.println("베스트등록 후기글 번호 : "+revNum);
		int flag=mrService.editBestRev(revNum);
		if(flag==1) {
			model.addAttribute("eMsg", "후기글이 베스트후기글로 등록되었습니다.");
		}else {
			model.addAttribute("eMsg", "후기글이 베스트후기글로 등록되지 않았습니다.");
		}
		return "redirect:http://localhost/salad_mvc/mng_rev.do";
	}
	
	//카테고리 메인
	@RequestMapping(value = "cate_main.do",method =GET ,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String cateMain() {
		String jsonObj=mrService.searchMainCate();
		return jsonObj;
	}
	
	//카테고리 서브
	@RequestMapping(value = "cate_sub.do",method =GET , produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String cateSub(int mainCateNum) {
		String jsonObj=mrService.searchSubCate(mainCateNum);
		return jsonObj;
	}

}
