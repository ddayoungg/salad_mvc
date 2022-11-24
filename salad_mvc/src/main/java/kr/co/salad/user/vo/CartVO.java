package kr.co.salad.user.vo;

public class CartVO {
	private int cartNum, prdNum, cartPrdCnt;
	private String id;

	public CartVO() {
	}

	public CartVO(int cartNum, int prdNum, int cartPrdCnt, String id) {
		this.cartNum = cartNum;
		this.prdNum = prdNum;
		this.cartPrdCnt = cartPrdCnt;
		this.id = id;
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

	@Override
	public String toString() {
		return "CartVO [cartNum=" + cartNum + ", prdNum=" + prdNum + ", cartPrdCnt=" + cartPrdCnt + ", id=" + id + "]";
	}

}
