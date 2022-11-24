package kr.co.salad.user.domain;

public class PrdDetailCartDomain {

	private int cartNum, prdNum, cartPrdCnt;
	private String id;
	private String cartRegistDate;
	
	public PrdDetailCartDomain() {
		super();
	}
	public PrdDetailCartDomain(int cartNum, int prdNum, int cartPrdCnt, String id, String cartRegistDate) {
		super();
		this.cartNum = cartNum;
		this.prdNum = prdNum;
		this.cartPrdCnt = cartPrdCnt;
		this.id = id;
		this.cartRegistDate = cartRegistDate;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCartRegistDate() {
		return cartRegistDate;
	}
	public void setCartRegistDate(String cartRegistDate) {
		this.cartRegistDate = cartRegistDate;
	}
	@Override
	public String toString() {
		return "CartDomain [cartNum=" + cartNum + ", prdNum=" + prdNum + ", cartPrdCnt=" + cartPrdCnt + ", id=" + id
				+ ", cartRegistDate=" + cartRegistDate + "]";
	}
	
}//class
