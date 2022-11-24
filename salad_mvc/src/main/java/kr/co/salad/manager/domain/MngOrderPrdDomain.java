package kr.co.salad.manager.domain;

public class MngOrderPrdDomain {
	private int orderCnt, prdPrice, prdDiscount, orderPrice;
	private String thum, prdName;

	public MngOrderPrdDomain() {
	}

	public MngOrderPrdDomain(int orderCnt, int prdPrice, int prdDiscount, int orderPrice, String thum, String prdName) {
		this.orderCnt = orderCnt;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.orderPrice = orderPrice;
		this.thum = thum;
		this.prdName = prdName;
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

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public String getThum() {
		return thum;
	}

	public void setThum(String thum) {
		this.thum = thum;
	}

	public String getPrdName() {
		return prdName;
	}

	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}

	@Override
	public String toString() {
		return "MngOrderPrdDomain [orderCnt=" + orderCnt + ", prdPrice=" + prdPrice + ", prdDiscount=" + prdDiscount
				+ ", orderPrice=" + orderPrice + ", thum=" + thum + ", prdName=" + prdName + "]";
	}

}
