package kr.co.salad.manager.vo;

import java.util.Date;

public class MngQnaAVO {

	private int qnaANum, qnaNum;
	private String qnaACont;
	private String qnaAWriteDate;
	
	public MngQnaAVO() {
		super();
	}

	public MngQnaAVO(int qnaANum, int qnaNum, String qnaACont, String qnaAWriteDate) {
		super();
		this.qnaANum = qnaANum;
		this.qnaNum = qnaNum;
		this.qnaACont = qnaACont;
		this.qnaAWriteDate = qnaAWriteDate;
	}
	
	public int getQnaANum() {
		return qnaANum;
	}

	public void setQnaANum(int qnaANum) {
		this.qnaANum = qnaANum;
	}

	public int getQnaNum() {
		return qnaNum;
	}

	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}

	public String getQnaACont() {
		return qnaACont;
	}

	public void setQnaACont(String qnaACont) {
		this.qnaACont = qnaACont;
	}

	public String getQnaAWriteDate() {
		return qnaAWriteDate;
	}

	public void setQnaAWriteDate(String qnaAWriteDate) {
		this.qnaAWriteDate = qnaAWriteDate;
	}

	@Override
	public String toString() {
		return "MngQnaAnswerVO [qnaANum=" + qnaANum + ", qnaNum=" + qnaNum + ", qnaACont=" + qnaACont
				+ ", qnaAWriteDate=" + qnaAWriteDate + "]";
	}
	

	
}
