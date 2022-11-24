package kr.co.salad.manager.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngQnaADAO;
import kr.co.salad.manager.vo.MngQnaAVO;

@Component
public class MngQnaAService {

	@Autowired(required = false)
	private MngQnaADAO mqaDAO;
	
	public MngQnaAVO answerLook(int qnaNum) {
		
		MngQnaAVO mqaVO = mqaDAO.answerLook(qnaNum);
		
		return mqaVO;
		
	}
	
	public void answerWrite(MngQnaAVO mqaVO) {
		mqaDAO.answerWrite(mqaVO);
	}
	
	public void answerEdit(MngQnaAVO mqaVO) {
		mqaDAO.answerEdit(mqaVO);
	}
	
}