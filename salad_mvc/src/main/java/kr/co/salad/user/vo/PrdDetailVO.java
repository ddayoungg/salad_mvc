package kr.co.salad.user.vo;

public class PrdDetailVO {
	
	private int prdNum, prdCnt, cartNum;
	private String id;
	
	public PrdDetailVO() {
		super();
	}
	public PrdDetailVO(int prdNum, int prdCnt, int cartNum, String id) {
		super();
		this.prdNum = prdNum;
		this.prdCnt = prdCnt;
		this.cartNum = cartNum;
		this.id = id;
	}
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}
	public int getPrdCnt() {
		return prdCnt;
	}
	public void setPrdCnt(int prdCnt) {
		this.prdCnt = prdCnt;
	}
	public int getCartNum() {
		return cartNum;
	}
	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "PrdVO [prdNum=" + prdNum + ", prdCnt=" + prdCnt + ", cartNum=" + cartNum + ", id=" + id + "]";
	}
	
}//class
