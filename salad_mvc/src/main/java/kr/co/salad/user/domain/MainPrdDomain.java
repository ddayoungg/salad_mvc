package kr.co.salad.user.domain;

import java.util.Date;

public class MainPrdDomain {

	private int mainCateNum, subCateNum, prdNum, prdPrice, prdDiscount, revCnt;
	private String prdName, mainCateName, subCateName, thum;
	private Date prdRegistDate;
	
	public MainPrdDomain() {
		super();
	}

	public MainPrdDomain(int mainCateNum, int subCateNum, int prdNum, int prdPrice, int prdDiscount, int revCnt,
			String prdName, String mainCateName, String subCateName, String thum, Date prdRegistDate) {
		super();
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
		this.prdNum = prdNum;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.revCnt = revCnt;
		this.prdName = prdName;
		this.mainCateName = mainCateName;
		this.subCateName = subCateName;
		this.thum = thum;
		this.prdRegistDate = prdRegistDate;
	}

	public int getMainCateNum() {
		return mainCateNum;
	}

	public void setMainCateNum(int mainCateNum) {
		this.mainCateNum = mainCateNum;
	}

	public int getSubCateNum() {
		return subCateNum;
	}

	public void setSubCateNum(int subCateNum) {
		this.subCateNum = subCateNum;
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

	public int getRevCnt() {
		return revCnt;
	}

	public void setRevCnt(int revCnt) {
		this.revCnt = revCnt;
	}

	public String getPrdName() {
		return prdName;
	}

	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}

	public String getMainCateName() {
		return mainCateName;
	}

	public void setMainCateName(String mainCateName) {
		this.mainCateName = mainCateName;
	}

	public String getSubCateName() {
		return subCateName;
	}

	public void setSubCateName(String subCateName) {
		this.subCateName = subCateName;
	}

	public String getThum() {
		return thum;
	}

	public void setThum(String thum) {
		this.thum = thum;
	}

	public Date getPrdRegistDate() {
		return prdRegistDate;
	}

	public void setPrdRegistDate(Date prdRegistDate) {
		this.prdRegistDate = prdRegistDate;
	}

	@Override
	public String toString() {
		return "MainPrdDomain [mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", prdNum=" + prdNum
				+ ", prdPrice=" + prdPrice + ", prdDiscount=" + prdDiscount + ", revCnt=" + revCnt + ", prdName="
				+ prdName + ", mainCateName=" + mainCateName + ", subCateName=" + subCateName + ", thum=" + thum
				+ ", prdRegistDate=" + prdRegistDate + "]";
	}
	
	
	
}