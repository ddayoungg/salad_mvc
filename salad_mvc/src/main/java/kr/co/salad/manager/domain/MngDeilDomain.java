package kr.co.salad.manager.domain;

public class MngDeilDomain {
	
	private int mainCateNum, subCateNum, orderNum, orderTotalPrice;
	private String mainCateName, subCateName, name, orderStatus,orderDate;
	public MngDeilDomain() {
		super();
	}
	public MngDeilDomain(int mainCateNum, int subCateNum, int orderNum, int orderTotalPrice, String mainCateName,
			String subCateName, String name, String orderStatus, String orderDate) {
		super();
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
		this.orderNum = orderNum;
		this.orderTotalPrice = orderTotalPrice;
		this.mainCateName = mainCateName;
		this.subCateName = subCateName;
		this.name = name;
		this.orderStatus = orderStatus;
		this.orderDate = orderDate;
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
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	@Override
	public String toString() {
		return "MngDeilDomain [mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", orderNum=" + orderNum
				+ ", orderTotalPrice=" + orderTotalPrice + ", mainCateName=" + mainCateName + ", subCateName="
				+ subCateName + ", name=" + name + ", orderStatus=" + orderStatus + ", orderDate=" + orderDate + "]";
	}
	
	

}
