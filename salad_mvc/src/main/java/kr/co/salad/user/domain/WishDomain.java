package kr.co.salad.user.domain;

public class WishDomain {
	String id, wishRegistDate;
	int prdNum;
	
	public WishDomain() {
		super();
	}
	public WishDomain(String id, String wishRegistDate, int prdNum) {
		super();
		this.id = id;
		this.wishRegistDate = wishRegistDate;
		this.prdNum = prdNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWishRegistDate() {
		return wishRegistDate;
	}
	public void setWishRegistDate(String wishRegistDate) {
		this.wishRegistDate = wishRegistDate;
	}
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}
	@Override
	public String toString() {
		return "WishDomain [id=" + id + ", wishRegistDate=" + wishRegistDate + ", prdNum=" + prdNum + "]";
	}
	
	
}//class
