package kr.co.salad.user.domain;

import java.util.Date;

public class PrdDetailQnaDomain {
	
	private int qnaNum, prdNum;
	private String qnaTitle, qnaCont, id, name;
	private Date qnaWriteDate;
	private char qnaAFlag;
	
	public PrdDetailQnaDomain() {
		super();
	}
	public PrdDetailQnaDomain(int qnaNum, int prdNum, String qnaTitle, String qnaCont, String id, String name,
			Date qnaWriteDate, char qnaAFlag) {
		super();
		this.qnaNum = qnaNum;
		this.prdNum = prdNum;
		this.qnaTitle = qnaTitle;
		this.qnaCont = qnaCont;
		this.id = id;
		this.name = name;
		this.qnaWriteDate = qnaWriteDate;
		this.qnaAFlag = qnaAFlag;
	}
	public int getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaCont() {
		return qnaCont;
	}
	public void setQnaCont(String qnaCont) {
		this.qnaCont = qnaCont;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getQnaWriteDate() {
		return qnaWriteDate;
	}
	public void setQnaWriteDate(Date qnaWriteDate) {
		this.qnaWriteDate = qnaWriteDate;
	}
	public char getQnaAFlag() {
		return qnaAFlag;
	}
	public void setQnaAFlag(char qnaAFlag) {
		this.qnaAFlag = qnaAFlag;
	}
	@Override
	public String toString() {
		return "PrdDetailQnaDomain [qnaNum=" + qnaNum + ", prdNum=" + prdNum + ", qnaTitle=" + qnaTitle + ", qnaCont="
				+ qnaCont + ", id=" + id + ", name=" + name + ", qnaWriteDate=" + qnaWriteDate + ", qnaAFlag="
				+ qnaAFlag + "]";
	}
	
}//class
