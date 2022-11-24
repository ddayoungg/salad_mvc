package kr.co.salad.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.salad.manager.service.MngQnaAService;
import kr.co.salad.manager.vo.MngQnaAVO;



@Controller
public class MngQnaAController {
	
	@Autowired(required = false)
	private MngQnaAService mqaService;
	
	//답글작성
	@ResponseBody
	@RequestMapping(value="mng_qna_detail_answerWrite.do", method=POST, produces="application/json; charset=UTF-8")
	public void answerWrite(MngQnaAVO mqaVO, HttpServletRequest request) throws Exception{
		mqaService.answerWrite(mqaVO);
	}
	
}