package kr.co.salad.user.domain;

public class CartDomain {
	private int cartNum, prdNum, cartPrdCnt, prdPrice, prdDiscount, orderNum, orderPrice;
	private String thum, prdName;

	public CartDomain() {
	}

	public CartDomain(int cartNum, int prdNum, int cartPrdCnt, int prdPrice, int prdDiscount, int orderNum,
			int orderPrice, String thum, String prdName) {
		super();
		this.cartNum = cartNum;
		this.prdNum = prdNum;
		this.cartPrdCnt = cartPrdCnt;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.orderNum = orderNum;
		this.orderPrice = orderPrice;
		this.thum = thum;
		this.prdName = prdName;
	}

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public int getPrdNum() {
		return prdNum;
	}

	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}

	public int getCartPrdCnt() {
		return cartPrdCnt;
	}

	public void setCartPrdCnt(int cartPrdCnt) {
		this.cartPrdCnt = cartPrdCnt;
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

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
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
		return "CartDomain [cartNum=" + cartNum + ", prdNum=" + prdNum + ", cartPrdCnt=" + cartPrdCnt + ", prdPrice="
				+ prdPrice + ", prdDiscount=" + prdDiscount + ", orderNum=" + orderNum + ", orderPrice=" + orderPrice
				+ ", thum=" + thum + ", prdName=" + prdName + "]";
	}

}
