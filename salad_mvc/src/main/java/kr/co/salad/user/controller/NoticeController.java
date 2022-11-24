package kr.co.salad.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.salad.user.domain.NoticeDomain;
import kr.co.salad.user.service.NoticeService;
import kr.co.salad.user.vo.NoticeVO;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.sql.Date;
import java.util.List;

@Controller
public class NoticeController {
	
	@Autowired(required = false)
	private NoticeService noService;
	
	
	//공지사항 메인
	@RequestMapping(value = "notice.do",method = GET)
	public String notice(NoticeVO noVO, Model model) {
		return "user/service/notice";// header
	}
	
	//공지사항 리스트
	@RequestMapping(value = "list.do",method = GET)
	public String list(NoticeVO noVO, Model model) {
		return "user/board/list"; //list 따로 나눠져 있더라구요
	}
	
	
	//공지사항 리스트
	@RequestMapping(value="list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchNotiListAjax(NoticeVO noVO) {
		System.out.println(noVO);
		String jsonObj=noService.searchNotice(noVO);
		System.out.println(jsonObj);
		return jsonObj;
	}
	
	
	//공지사항 상세보기
	@RequestMapping(value = "view.do",method = GET)
	public String searchnoticeDetail(int notiNum, Model model) {
		//noService.updateNotiCount(notiNum);
		
		
		NoticeDomain noDomain=noService.searchNoticeDetail(notiNum);
		model.addAttribute("notiNum",noDomain.getNotiNum());
		model.addAttribute("notiWriteDate",noDomain.getNotiWriteDate());
		model.addAttribute("notiHits",noDomain.getNotiHits());
		model.addAttribute("notiTitle",noDomain.getNotiTitle());
		model.addAttribute("notiCont",noDomain.getNotiCont());
		
		
	return "user/board/view";
	}
	
	

}
