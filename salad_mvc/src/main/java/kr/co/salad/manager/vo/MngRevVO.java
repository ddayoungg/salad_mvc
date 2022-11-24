package kr.co.salad.manager.vo;

public class MngRevVO {

	private int mainCateNum,subCateNum, orderPrice,startNum, endNum, totalCount, pageScale, currentPage;
	private String searchText;

	public MngRevVO() {
		
	}

	public MngRevVO(int mainCateNum, int subCateNum, int orderPrice, int startNum, int endNum, int totalCount,
			int pageScale, int currentPage, String searchText) {
		super();
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
		this.orderPrice = orderPrice;
		this.startNum = startNum;
		this.endNum = endNum;
		this.totalCount = totalCount;
		this.pageScale = pageScale;
		this.currentPage = currentPage;
		this.searchText = searchText;
	}

	public int getMainCateNum() {
		return mainCateNum;
	}

	public void setMainCateNum(int mainCateNum) {
		this.mainCateNum = mainCateNum;
	}

	public int getSubCateNum() {
		return subCateNum;
	}

	public void setSubCateNum(int subCateNum) {
		this.subCateNum = subCateNum;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
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

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	@Override
	public String toString() {
		return "MngRevVO [mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", orderPrice=" + orderPrice
				+ ", startNum=" + startNum + ", endNum=" + endNum + ", totalCount=" + totalCount + ", pageScale="
				+ pageScale + ", currentPage=" + currentPage + ", searchText=" + searchText + "]";
	}
	

	
	
}
