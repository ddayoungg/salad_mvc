package kr.co.salad.user.domain;

public class QnaDetailDomain {
	private int qnaNum, prdNum, qnaANum;
	private String id, name, qnaTitle, qnaCont, qnaAFlag, qnaWriteDate, 
				qnaACont, qnaAWriteDate;
	
	public QnaDetailDomain() {
		super();
	}
	public QnaDetailDomain(int qnaNum, int prdNum, int qnaANum, String id, String name, String qnaTitle, String qnaCont,
			String qnaAFlag, String qnaWriteDate, String qnaACont, String qnaAWriteDate) {
		super();
		this.qnaNum = qnaNum;
		this.prdNum = prdNum;
		this.qnaANum = qnaANum;
		this.id = id;
		this.name = name;
		this.qnaTitle = qnaTitle;
		this.qnaCont = qnaCont;
		this.qnaAFlag = qnaAFlag;
		this.qnaWriteDate = qnaWriteDate;
		this.qnaACont = qnaACont;
		this.qnaAWriteDate = qnaAWriteDate;
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
	public int getQnaANum() {
		return qnaANum;
	}
	public void setQnaANum(int qnaANum) {
		this.qnaANum = qnaANum;
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
	public String getQnaAFlag() {
		return qnaAFlag;
	}
	public void setQnaAFlag(String qnaAFlag) {
		this.qnaAFlag = qnaAFlag;
	}
	public String getQnaWriteDate() {
		return qnaWriteDate;
	}
	public void setQnaWriteDate(String qnaWriteDate) {
		this.qnaWriteDate = qnaWriteDate;
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
		return "QnaDetailDomain [qnaNum=" + qnaNum + ", prdNum=" + prdNum + ", qnaANum=" + qnaANum + ", id=" + id
				+ ", name=" + name + ", qnaTitle=" + qnaTitle + ", qnaCont=" + qnaCont + ", qnaAFlag=" + qnaAFlag
				+ ", qnaWriteDate=" + qnaWriteDate + ", qnaACont=" + qnaACont + ", qnaAWriteDate=" + qnaAWriteDate
				+ "]";
	}
	
}//class
