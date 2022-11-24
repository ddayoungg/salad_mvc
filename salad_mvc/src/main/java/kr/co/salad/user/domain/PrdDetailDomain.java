package kr.co.salad.user.domain;

import java.util.List;

public class PrdDetailDomain {

	private int prdNum, prdPrice, prdDiscount;
	private String prdName, thum, prdBodyThum;
	private List<String> prdImgList, prdBodyImgList;
	private char wishFlag, writeFlag;
	
	public PrdDetailDomain() {
		super();
	}
	public PrdDetailDomain(int prdNum, int prdPrice, int prdDiscount, String prdName, String thum, String prdBodyThum,
			List<String> prdImgList, List<String> prdBodyImgList, char wishFlag, char writeFlag) {
		super();
		this.prdNum = prdNum;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.prdName = prdName;
		this.thum = thum;
		this.prdBodyThum = prdBodyThum;
		this.prdImgList = prdImgList;
		this.prdBodyImgList = prdBodyImgList;
		this.wishFlag = wishFlag;
		this.writeFlag = writeFlag;
	}
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
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
	public String getPrdBodyThum() {
		return prdBodyThum;
	}
	public void setPrdBodyThum(String prdBodyThum) {
		this.prdBodyThum = prdBodyThum;
	}
	public List<String> getPrdImgList() {
		return prdImgList;
	}
	public void setPrdImgList(List<String> prdImgList) {
		this.prdImgList = prdImgList;
	}
	public List<String> getPrdBodyImgList() {
		return prdBodyImgList;
	}
	public void setPrdBodyImgList(List<String> prdBodyImgList) {
		this.prdBodyImgList = prdBodyImgList;
	}
	public char getWishFlag() {
		return wishFlag;
	}
	public void setWishFlag(char wishFlag) {
		this.wishFlag = wishFlag;
	}
	public char getWriteFlag() {
		return writeFlag;
	}
	public void setWriteFlag(char writeFlag) {
		this.writeFlag = writeFlag;
	}
	@Override
	public String toString() {
		return "PrdDetailDomain [prdNum=" + prdNum + ", prdPrice=" + prdPrice + ", prdDiscount=" + prdDiscount
				+ ", prdName=" + prdName + ", thum=" + thum + ", prdBodyThum=" + prdBodyThum + ", prdImgList="
				+ prdImgList + ", prdBodyImgList=" + prdBodyImgList + ", wishFlag=" + wishFlag + ", writeFlag="
				+ writeFlag + "]";
	}
	
}//class
