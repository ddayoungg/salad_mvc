package kr.co.salad.manager.domain;

import java.util.List;

public class MngPrdDomain {
	private int prdNum, prdPrice, prdDiscount, mainCateNum, subCateNum;
	private String prdName, thum, prdBodyThum, mainCateName,subCateName;
	private List<String> prdImgList, prdBodyImgList;
	private String prdRegistDate;
	
	public MngPrdDomain() {
		super();
	}
	public MngPrdDomain(int prdNum, int prdPrice, int prdDiscount, int mainCateNum, int subCateNum, String prdName,
			String thum, String prdBodyThum, String mainCateName, String subCateName, List<String> prdImgList,
			List<String> prdBodyImgList, String prdRegistDate) {
		super();
		this.prdNum = prdNum;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
		this.prdName = prdName;
		this.thum = thum;
		this.prdBodyThum = prdBodyThum;
		this.mainCateName = mainCateName;
		this.subCateName = subCateName;
		this.prdImgList = prdImgList;
		this.prdBodyImgList = prdBodyImgList;
		this.prdRegistDate = prdRegistDate;
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
	public String getPrdRegistDate() {
		return prdRegistDate;
	}
	public void setPrdRegistDate(String prdRegistDate) {
		this.prdRegistDate = prdRegistDate;
	}
	@Override
	public String toString() {
		return "MngPrdDomain [prdNum=" + prdNum + ", prdPrice=" + prdPrice + ", prdDiscount=" + prdDiscount
				+ ", mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", prdName=" + prdName + ", thum="
				+ thum + ", prdBodyThum=" + prdBodyThum + ", mainCateName=" + mainCateName + ", subCateName="
				+ subCateName + ", prdImgList=" + prdImgList + ", prdBodyImgList=" + prdBodyImgList + ", prdRegistDate="
				+ prdRegistDate + "]";
	}
	
}//class
