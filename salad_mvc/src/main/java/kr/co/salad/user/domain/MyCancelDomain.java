package kr.co.salad.user.domain;

public class MyCancelDomain {
	private int orderNum, prdNum, orderCnt, prdPrice, prdDiscount;
	private int totalPrdPrice, totalPrdDiscount, orderTotalPrice;
	private String prdName, thum, revFlag;
	private String orderStatus, statusName, existAddrFlag;
	private String orderDate;
	
	public MyCancelDomain() {
		super();
	}
	public MyCancelDomain(int orderNum, int prdNum, int orderCnt, int prdPrice, int prdDiscount, int totalPrdPrice,
			int totalPrdDiscount, int orderTotalPrice, String prdName, String thum, String revFlag, String orderStatus,
			String statusName, String existAddrFlag, String orderDate) {
		super();
		this.orderNum = orderNum;
		this.prdNum = prdNum;
		this.orderCnt = orderCnt;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.totalPrdPrice = totalPrdPrice;
		this.totalPrdDiscount = totalPrdDiscount;
		this.orderTotalPrice = orderTotalPrice;
		this.prdName = prdName;
		this.thum = thum;
		this.revFlag = revFlag;
		this.orderStatus = orderStatus;
		this.statusName = statusName;
		this.existAddrFlag = existAddrFlag;
		this.orderDate = orderDate;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}
	public int getOrderCnt() {
		return orderCnt;
	}
	public void setOrderCnt(int orderCnt) {
		this.orderCnt = orderCnt;
	}
	public int getPrdPrice() {
		return prdPrice;
	}
	public void setPrdPrice(int prdPrice) {
		this.prdPrice = prdPrice;
	}
	public int getPrdDiscount() {
		return prdDiscount;
	}
	public void setPrdDiscount(int prdDiscount) {
		this.prdDiscount = prdDiscount;
	}
	public int getTotalPrdPrice() {
		return totalPrdPrice;
	}
	public void setTotalPrdPrice(int totalPrdPrice) {
		this.totalPrdPrice = totalPrdPrice;
	}
	public int getTotalPrdDiscount() {
		return totalPrdDiscount;
	}
	public void setTotalPrdDiscount(int totalPrdDiscount) {
		this.totalPrdDiscount = totalPrdDiscount;
	}
	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}
	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}
	public String getThum() {
		return thum;
	}
	public void setThum(String thum) {
		this.thum = thum;
	}
	public String getRevFlag() {
		return revFlag;
	}
	public void setRevFlag(String revFlag) {
		this.revFlag = revFlag;
	}
	public String getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	public String getExistAddrFlag() {
		return existAddrFlag;
	}
	public void setExistAddrFlag(String existAddrFlag) {
		this.existAddrFlag = existAddrFlag;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	@Override
	public String toString() {
		return "MyCancelDomain [orderNum=" + orderNum + ", prdNum=" + prdNum + ", orderCnt=" + orderCnt + ", prdPrice="
				+ prdPrice + ", prdDiscount=" + prdDiscount + ", totalPrdPrice=" + totalPrdPrice + ", totalPrdDiscount="
				+ totalPrdDiscount + ", orderTotalPrice=" + orderTotalPrice + ", prdName=" + prdName + ", thum=" + thum
				+ ", revFlag=" + revFlag + ", orderStatus=" + orderStatus + ", statusName=" + statusName
				+ ", existAddrFlag=" + existAddrFlag + ", orderDate=" + orderDate + "]";
	}
	
}//class
