package kr.co.salad.manager.vo;

import java.util.Date;

public class MngQnaVO {

	private int qnaNum, prdNum, startNum, endNum, totalCount, pageScale, currentPage, subCateNum;
	private String id, qnaTitle, qnaCont, qnaAFlag, filedName, keyword;
	private Date qnaWriteDate;
	
	public MngQnaVO() {
		super();
	}

	public MngQnaVO(int qnaNum, int prdNum, int startNum, int endNum, int totalCount, int pageScale, int currentPage, int subCateNum,
			String id, String qnaTitle, String qnaCont, String qnaAFlag, String filedName, String keyword, 
			Date qnaWriteDate) {
		super();
		this.qnaNum = qnaNum;
		this.prdNum = prdNum;
		this.startNum = startNum;
		this.endNum = endNum;
		this.totalCount = totalCount;
		this.pageScale = pageScale;
		this.currentPage = currentPage;
		this.id = id;
		this.qnaTitle = qnaTitle;
		this.qnaCont = qnaCont;
		this.qnaAFlag = qnaAFlag;
		this.filedName = filedName;
		this.keyword = keyword;
		this.qnaWriteDate = qnaWriteDate;
		this.subCateNum = subCateNum;
		this.qnaWriteDate = qnaWriteDate;
	}

	
	public int getSubCateNum() {
		return subCateNum;
	}

	public void setSubCateNum(int subCateNum) {
		this.subCateNum = subCateNum;
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

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageScale() {
		return pageScale;
	}

	public void setPageScale(int pageScale) {
		this.pageScale = pageScale;
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

	public String getQnaAFlag() {
		return qnaAFlag;
	}

	public void setQnaAFlag(String qnaAFlag) {
		this.qnaAFlag = qnaAFlag;
	}

	public String getFiledName() {
		return filedName;
	}

	public void setFiledName(String filedName) {
		this.filedName = filedName;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Date getQnaWriteDate() {
		return qnaWriteDate;
	}

	public void setQnaWriteDate(Date qnaWriteDate) {
		this.qnaWriteDate = qnaWriteDate;
	}

	@Override
	public String toString() {
		return "MngQnaVO [qnaNum=" + qnaNum + ", prdNum=" + prdNum + ", startNum=" + startNum + ", endNum=" + endNum
				+ ", totalCount=" + totalCount + ", pageScale=" + pageScale + ", currentPage=" + currentPage
				+ ", subCateNum=" + subCateNum + ", id=" + id + ", qnaTitle=" + qnaTitle + ", qnaCont=" + qnaCont
				+ ", qnaAFlag=" + qnaAFlag + ", filedName=" + filedName + ", keyword=" + keyword + ", qnaWriteDate="
				+ qnaWriteDate + "]";
	}



}
