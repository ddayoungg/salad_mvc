package kr.co.salad.manager.vo;

public class MngNoticeVO {
	
	private int notiNum,startNum, endNum, totalCount, pageScale, currentPage;
	private String notiTitle, notiCont,searchFlag,searchText;
	public MngNoticeVO() {
		super();
	}
	
	public MngNoticeVO(int notiNum, int startNum, int endNum, int totalCount, int pageScale, int currentPage,
			String notiTitle, String notiCont, String searchFlag, String searchText) {
		super();
		this.notiNum = notiNum;
		this.startNum = startNum;
		this.endNum = endNum;
		this.totalCount = totalCount;
		this.pageScale = pageScale;
		this.currentPage = currentPage;
		this.notiTitle = notiTitle;
		this.notiCont = notiCont;
		this.searchFlag = searchFlag;
		this.searchText = searchText;
	}

	public int getNotiNum() {
		return notiNum;
	}
	public void setNotiNum(int notiNum) {
		this.notiNum = notiNum;
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
	public String getNotiTitle() {
		return notiTitle;
	}
	public void setNotiTitle(String notiTitle) {
		this.notiTitle = notiTitle;
	}
	public String getNotiCont() {
		return notiCont;
	}
	public void setNotiCont(String notiCont) {
		this.notiCont = notiCont;
	}
	

	public String getSearchFlag() {
		return searchFlag;
	}

	public void setSearchFlag(String searchFlag) {
		this.searchFlag = searchFlag;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	@Override
	public String toString() {
		return "MngNoticeVO [notiNum=" + notiNum + ", startNum=" + startNum + ", endNum=" + endNum + ", totalCount="
				+ totalCount + ", pageScale=" + pageScale + ", currentPage=" + currentPage + ", notiTitle=" + notiTitle
				+ ", notiCont=" + notiCont + ", searchFlag=" + searchFlag + ", searchText=" + searchText + "]";
	}
	
	
	
	

}
