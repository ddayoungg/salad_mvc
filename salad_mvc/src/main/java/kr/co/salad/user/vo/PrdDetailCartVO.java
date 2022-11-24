package kr.co.salad.user.vo;

import java.util.Arrays;

public class PrdDetailCartVO {
	
	private int prdNum, cartPrdCnt, cartNum;
	private String id;
	private int[] prdNumArr;
	
	public PrdDetailCartVO() {
		super();
	}
	public PrdDetailCartVO(int prdNum, int cartPrdCnt, int cartNum, String id, int[] prdNumArr) {
		super();
		this.prdNum = prdNum;
		this.cartPrdCnt = cartPrdCnt;
		this.cartNum = cartNum;
		this.id = id;
		this.prdNumArr = prdNumArr;
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
	public int[] getPrdNumArr() {
		return prdNumArr;
	}
	public void setPrdNumArr(int[] prdNumArr) {
		this.prdNumArr = prdNumArr;
	}
	@Override
	public String toString() {
		return "PrdDetailCartVO [prdNum=" + prdNum + ", cartPrdCnt=" + cartPrdCnt + ", cartNum=" + cartNum + ", id="
				+ id + ", prdNumArr=" + Arrays.toString(prdNumArr) + "]";
	}
	
}//class
