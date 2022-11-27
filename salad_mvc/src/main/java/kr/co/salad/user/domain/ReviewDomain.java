package kr.co.salad.user.domain;

import java.util.List;

public class ReviewDomain {
	private int revNum, revHits, prdPrice, prdDiscount, prdNum;
	private String name, prdName, thum, revTitle, revCont, revWriteDate;
	private List<String> revImg;
	public ReviewDomain() {
		super();
	}
	public ReviewDomain(int revNum, int revHits, int prdPrice, int prdDiscount, int prdNum, String name, String prdName,
			String thum, String revTitle, String revCont, String revWriteDate, List<String> revImg) {
		super();
		this.revNum = revNum;
		this.revHits = revHits;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.prdNum = prdNum;
		this.name = name;
		this.prdName = prdName;
		this.thum = thum;
		this.revTitle = revTitle;
		this.revCont = revCont;
		this.revWriteDate = revWriteDate;
		this.revImg = revImg;
	}
	public int getRevNum() {
		return revNum;
	}
	public void setRevNum(int revNum) {
		this.revNum = revNum;
	}
	public int getRevHits() {
		return revHits;
	}
	public void setRevHits(int revHits) {
		this.revHits = revHits;
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
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getRevTitle() {
		return revTitle;
	}
	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}
	public String getRevCont() {
		return revCont;
	}
	public void setRevCont(String revCont) {
		this.revCont = revCont;
	}
	public String getRevWriteDate() {
		return revWriteDate;
	}
	public void setRevWriteDate(String revWriteDate) {
		this.revWriteDate = revWriteDate;
	}
	public List<String> getRevImg() {
		return revImg;
	}
	public void setRevImg(List<String> revImg) {
		this.revImg = revImg;
	}
	@Override
	public String toString() {
		return "ReviewDomain [revNum=" + revNum + ", revHits=" + revHits + ", prdPrice=" + prdPrice + ", prdDiscount="
				+ prdDiscount + ", prdNum=" + prdNum + ", name=" + name + ", prdName=" + prdName + ", thum=" + thum
				+ ", revTitle=" + revTitle + ", revCont=" + revCont + ", revWriteDate=" + revWriteDate + ", revImg="
				+ revImg + "]";
	}
	

}
