package kr.co.salad.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.manager.domain.MngNoticeDomain;
import kr.co.salad.manager.service.MngNoticeService;
import kr.co.salad.manager.vo.MngNoticeVO;
import kr.co.salad.manager.vo.MngRevVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

@SessionAttributes("mngId")
@Controller
public class MngNoticeController {
	
	@Autowired(required = false)
	private MngNoticeService mnService;
	
	//공지사항 메인리스트
	@RequestMapping(value = "mng_notice.do",method = GET)
	public String notice(HttpSession session,Model model) {
		String url=null;
		/*
		 * session.setAttribute("mngId", "admin"); //로그인 대신 세션심어주기
		 */		
		String mngid=(String) session.getAttribute("mngId");
		if(mngid==null) {
			url="redirect:http://localhost/salad_mvc/mng_index.do";
		}else if(mngid.equals("admin")){
			url="manager/notice/mng_notice";
		}
		
		return url;
	}
	
	@RequestMapping(value="mng_noti_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchRevListAjax(MngNoticeVO mnVO) {
		System.out.println("검색종류 : "+mnVO.getSearchFlag());
		System.out.println("검색어 : "+mnVO.getSearchText());
		String jsonObj=mnService.searchNotice(mnVO);//현재 페이지,검색명
		System.out.println(jsonObj);
		return jsonObj;
	}//searchRevListAjax
	
	//공지사항 상세보기
	@RequestMapping(value = "mng_notice_detail.do",method = GET)
	public String noticeDetail(HttpSession session,int notiNum,Model model) {
		String url=null;
		
		String mngid=(String) session.getAttribute("mngId");
		if(mngid==null) { //세션이 없을때 (로그인화면으로 이동)
			url="redirect:http://localhost/salad_mvc/mng_index.do";
		}else if(mngid.equals("admin")){ //관리자 로그인시
			url="manager/notice/mng_notice_detail";
		}
		
		MngNoticeDomain mnDomain=mnService.searchNoticeDetail(notiNum);
		model.addAttribute("notiNum",mnDomain.getNotiNum());
		model.addAttribute("notiHits",mnDomain.getNotiHits());
		model.addAttribute("notiTitle",mnDomain.getNotiTitle());
		model.addAttribute("notiCont",mnDomain.getNotiCont());
		
		return url;
	}
	
	//공지사항 작성
	@RequestMapping(value = "mng_notice_form.do",method = GET)
	public String noticeForm(HttpSession session) {
		String url=null;
		
		String mngid=(String) session.getAttribute("mngId");
		if(mngid==null) { //세션이 없을때 (로그인화면으로 이동)
			url="redirect:http://localhost/salad_mvc/mng_index.do";
		}else if(mngid.equals("admin")){ //관리자 로그인시
			url="manager/notice/mng_notice_write";
		}
		
		
		return url;
	}
	
	//공지사항 글쓰기
	@RequestMapping(value = "mng_notice_add_process.do",method = POST)
	public String addNoticeProcess(MngNoticeVO mnVO,Model model) {
		MngNoticeVO writeVO=new MngNoticeVO();
		writeVO.setNotiTitle(mnVO.getNotiTitle());
		writeVO.setNotiCont(mnVO.getNotiCont());
		mnService.addNotice(writeVO);
		model.addAttribute("eMsg", "공지사항이 등록되었습니다.");
		return "redirect:http://localhost/salad_mvc/mng_notice.do";
	}
	
	//공지사항 수정하기
	@RequestMapping(value = "mng_notice_edit_process.do",method = POST)
	public String editNoticeProcess(MngNoticeVO mnVO,Model model) {
		MngNoticeVO editVO=new MngNoticeVO();
		editVO.setNotiNum(mnVO.getNotiNum());
		editVO.setNotiTitle(mnVO.getNotiTitle());
		editVO.setNotiCont(mnVO.getNotiCont());
		int editFlag=mnService.editNotice(mnVO);
		if(editFlag==1) {
			model.addAttribute("eMsg", "공지사항이 수정되었습니다.");
		}else {
			model.addAttribute("eMsg", "공지사항 수정에 실패하였습니다.");
		}
		return "redirect:http://localhost/salad_mvc/mng_notice.do";
	}
	
	//공지사항 삭제하기
	@RequestMapping(value = "mng_notice_remove_process.do",method = GET)
	public String removeNoticeProcess(int notiNum,Model model) {
		int removeFlag=mnService.removeNotice(notiNum);
		if(removeFlag==1) {
			model.addAttribute("eMsg", "공지사항이 삭제되었습니다.");
		}else {		
			model.addAttribute("eMsg", "공지사항 삭제에 실패하였습니다.");
		}
		return "redirect:http://localhost/salad_mvc/mng_notice.do";
	}
	

}
