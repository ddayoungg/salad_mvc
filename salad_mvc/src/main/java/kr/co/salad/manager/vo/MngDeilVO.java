package kr.co.salad.manager.vo;

public class MngDeilVO {
	
	private int mainCateNum,subCateNum, orderNum,startNum, endNum, totalCount, pageScale, currentPage;
	private String searchText,orderDate,name,orderStatus;
	public MngDeilVO() {
		super();
	}
	public MngDeilVO(int mainCateNum, int subCateNum, int orderNum, int startNum, int endNum, int totalCount,
			int pageScale, int currentPage, String searchText, String orderDate, String name, String orderStatus) {
		super();
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
		this.orderNum = orderNum;
		this.startNum = startNum;
		this.endNum = endNum;
		this.totalCount = totalCount;
		this.pageScale = pageScale;
		this.currentPage = currentPage;
		this.searchText = searchText;
		this.orderDate = orderDate;
		this.name = name;
		this.orderStatus = orderStatus;
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
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
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
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	@Override
	public String toString() {
		return "MngDeilVO [mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", orderNum=" + orderNum
				+ ", startNum=" + startNum + ", endNum=" + endNum + ", totalCount=" + totalCount + ", pageScale="
				+ pageScale + ", currentPage=" + currentPage + ", searchText=" + searchText + ", orderDate=" + orderDate
				+ ", name=" + name + ", orderStatus=" + orderStatus + "]";
	}
	
	

}
