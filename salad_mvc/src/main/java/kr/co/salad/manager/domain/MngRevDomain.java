package kr.co.salad.manager.domain;

import java.sql.Date;
import java.util.Arrays;
import java.util.List;

public class MngRevDomain {
	private int mainCateNum, subCateNum, revNum, revHits ,prdPrice,prdDiscount;
	private String mainCateName, subCateName, name, prdName,prdBodyThum,revTitle, revCont,bestFlag,revWriteDate;
	private List<String> revImg;
	public MngRevDomain() {
		super();
	}
	public MngRevDomain(int mainCateNum, int subCateNum, int revNum, int revHits, int prdPrice, int prdDiscount,
			String mainCateName, String subCateName, String name, String prdName, String prdBodyThum, String revTitle,
			String revCont, String bestFlag, List<String> revImg, String revWriteDate) {
		super();
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
		this.revNum = revNum;
		this.revHits = revHits;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.mainCateName = mainCateName;
		this.subCateName = subCateName;
		this.name = name;
		this.prdName = prdName;
		this.prdBodyThum = prdBodyThum;
		this.revTitle = revTitle;
		this.revCont = revCont;
		this.bestFlag = bestFlag;
		this.revImg = revImg;
		this.revWriteDate = revWriteDate;
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
	public String getBestFlag() {
		return bestFlag;
	}
	public void setBestFlag(String bestFlag) {
		this.bestFlag = bestFlag;
	}
	public List<String> getRevImg() {
		return revImg;
	}
	public void setRevImg(List<String> revImg) {
		this.revImg = revImg;
	}
	public String getRevWriteDate() {
		return revWriteDate;
	}
	public void setRevWriteDate(String revWriteDate) {
		this.revWriteDate = revWriteDate;
	}
	@Override
	public String toString() {
		return "MngRevDomain [mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", revNum=" + revNum
				+ ", revHits=" + revHits + ", prdPrice=" + prdPrice + ", prdDiscount=" + prdDiscount + ", mainCateName="
				+ mainCateName + ", subCateName=" + subCateName + ", name=" + name + ", prdName=" + prdName
				+ ", prdBodyThum=" + prdBodyThum + ", revTitle=" + revTitle + ", revCont=" + revCont + ", bestFlag="
				+ bestFlag + ", revImg=" + revImg + ", revWriteDate=" + revWriteDate + "]";
	}
	
	
	

}
