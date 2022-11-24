package kr.co.salad.user.domain;

import java.util.List;

public class ReviewDomain {
	private int revNum, revHits, prdPrice, prdDiscount;
	private String name, prdName, prdBodyThum, revTitle, revCont, revWriteDate;
	private List<String> revImg;
	public ReviewDomain() {
		super();
	}
	public ReviewDomain(int revNum, int revHits, int prdPrice, int prdDiscount, String name, String prdName,
			String prdBodyThum, String revTitle, String revCont, String revWriteDate, List<String> revImg) {
		super();
		this.revNum = revNum;
		this.revHits = revHits;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.name = name;
		this.prdName = prdName;
		this.prdBodyThum = prdBodyThum;
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
	public String getPrdBodyThum() {
		return prdBodyThum;
	}
	public void setPrdBodyThum(String prdBodyThum) {
		this.prdBodyThum = prdBodyThum;
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
				+ prdDiscount + ", name=" + name + ", prdName=" + prdName + ", prdBodyThum=" + prdBodyThum
				+ ", revTitle=" + revTitle + ", revCont=" + revCont + ", revWriteDate=" + revWriteDate + ", revImg="
				+ revImg + "]";
	}

}
