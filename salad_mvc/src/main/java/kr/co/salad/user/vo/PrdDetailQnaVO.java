package kr.co.salad.user.vo;

public class PrdDetailQnaVO {
	
	private int qnaNum, prdNum, startNum, endNum, currentPage;
	private String id, qnaTitle, qnaCont;
	
	public PrdDetailQnaVO() {
		super();
	}
	public PrdDetailQnaVO(int qnaNum, int prdNum, int startNum, int endNum, int currentPage, String id, String qnaTitle,
			String qnaCont) {
		super();
		this.qnaNum = qnaNum;
		this.prdNum = prdNum;
		this.startNum = startNum;
		this.endNum = endNum;
		this.currentPage = currentPage;
		this.id = id;
		this.qnaTitle = qnaTitle;
		this.qnaCont = qnaCont;
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
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	@Override
	public String toString() {
		return "PrdDetailQnaVO [qnaNum=" + qnaNum + ", prdNum=" + prdNum + ", startNum=" + startNum + ", endNum="
				+ endNum + ", currentPage=" + currentPage + ", id=" + id + ", qnaTitle=" + qnaTitle + ", qnaCont="
				+ qnaCont + "]";
	}
	
}//class
