package kr.co.salad.manager.domain;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import oracle.sql.CHAR;

public class MngCancelDomain {

	private int mainCateNum, subCateNum, orderNum, orderTotalPrice, existAddrFlag;
	
	private String name, mainCateName, subCateName, id, orderStatus,
	search, searchText;
	
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date orderDate;

	@Override
	public String toString() {
		return "MngCancelDomain [mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", orderNum=" + orderNum
				+ ", orderTotalPrice=" + orderTotalPrice + ", existAddrFlag=" + existAddrFlag + ", name=" + name
				+ ", mainCateName=" + mainCateName + ", subCateName=" + subCateName + ", id=" + id + ", orderStatus="
				+ orderStatus + ", search=" + search + ", searchText=" + searchText + ", orderDate=" + orderDate + "]";
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

	public String getMainCateName() {
		return mainCateName;
	}

	public void setMainCateName(String mainCateName) {
		this.mainCateName = mainCateName;
	}

	public String getSubCateName() {
		return subCateName;
	}

	public void setSubCateName(String subCateName) {
		this.subCateName = subCateName;
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

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
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
