package kr.co.salad.user.vo;

public class NoticeVO {

	private int startNum, endNum, totalCount, currentPage;
	
	public NoticeVO() {
		super();
	}

	public NoticeVO(int startNum, int endNum, int totalCount, int pageScale, int currentPage) {
		super();
		this.startNum = startNum;
		this.endNum = endNum;
		this.totalCount = totalCount;
		this.currentPage = currentPage;
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


	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	@Override
	public String toString() {
		return "NoticeVO [startNum=" + startNum + ", endNum=" + endNum + ", totalCount=" + totalCount 
							+  ", currentPage=" + currentPage + "]";
	}



	
	
}
