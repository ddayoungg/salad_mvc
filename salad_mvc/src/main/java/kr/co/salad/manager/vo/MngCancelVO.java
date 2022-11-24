package kr.co.salad.manager.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import oracle.sql.CHAR;

public class MngCancelVO {
	private int mainCateNum, subCateNum, orderNum, startNum, endNum, totalCount,
	pageScale, currentPage, orderTotalPrice, existAddrFlag;
	
	private String name, search, id, orderStatus , searchText;
	
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date orderDate;

	public MngCancelVO() {
	
	}

	public MngCancelVO(int mainCateNum, int subCateNum, int orderNum, int startNum, int endNum, int totalCount,
			int pageScale, int currentPage, int orderTotalPrice, int existAddrFlag, String name, String search,
			String id, String orderStatus, String searchText, Date orderDate) {
		super();
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
		this.orderNum = orderNum;
		this.startNum = startNum;
		this.endNum = endNum;
		this.totalCount = totalCount;
		this.pageScale = pageScale;
		this.currentPage = currentPage;
		this.orderTotalPrice = orderTotalPrice;
		this.existAddrFlag = existAddrFlag;
		this.name = name;
		this.search = search;
		this.id = id;
		this.orderStatus = orderStatus;
		this.searchText = searchText;
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "MngCancelVO [mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", orderNum=" + orderNum
				+ ", startNum=" + startNum + ", endNum=" + endNum + ", totalCount=" + totalCount + ", pageScale="
				+ pageScale + ", currentPage=" + currentPage + ", orderTotalPrice=" + orderTotalPrice
				+ ", existAddrFlag=" + existAddrFlag + ", name=" + name + ", search=" + search + ", id=" + id
				+ ", orderStatus=" + orderStatus + ", searchText=" + searchText + ", orderDate=" + orderDate + "]";
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

	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}

	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}

	public int getExistAddrFlag() {
		return existAddrFlag;
	}

	public void setExistAddrFlag(int existAddrFlag) {
		this.existAddrFlag = existAddrFlag;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	
	
}//class
