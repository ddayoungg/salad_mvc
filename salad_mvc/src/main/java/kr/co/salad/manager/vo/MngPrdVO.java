package kr.co.salad.manager.vo;

import java.util.List;

public class MngPrdVO {

	private int startNum, endNum, currentPage;
	private int prdNum, prdPrice, prdDiscount, subCateNum;
	private String prdName, thum, prdBodyThum, prdImg, prdBodyImg, keyword;
	private List<String> prdImgList, prdBodyImgList;
	
	public MngPrdVO() {
		super();
	}
	public MngPrdVO(int startNum, int endNum, int currentPage, int prdNum, int prdPrice, int prdDiscount,
			int subCateNum, String prdName, String thum, String prdBodyThum, String prdImg, String prdBodyImg,
			String keyword, List<String> prdImgList, List<String> prdBodyImgList) {
		super();
		this.startNum = startNum;
		this.endNum = endNum;
		this.currentPage = currentPage;
		this.prdNum = prdNum;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.subCateNum = subCateNum;
		this.prdName = prdName;
		this.thum = thum;
		this.prdBodyThum = prdBodyThum;
		this.prdImg = prdImg;
		this.prdBodyImg = prdBodyImg;
		this.keyword = keyword;
		this.prdImgList = prdImgList;
		this.prdBodyImgList = prdBodyImgList;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
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
	public String getPrdImg() {
		return prdImg;
	}
	public void setPrdImg(String prdImg) {
		this.prdImg = prdImg;
	}
	public String getPrdBodyImg() {
		return prdBodyImg;
	}
	public void setPrdBodyImg(String prdBodyImg) {
		this.prdBodyImg = prdBodyImg;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
	@Override
	public String toString() {
		return "MngPrdVO [startNum=" + startNum + ", endNum=" + endNum + ", currentPage=" + currentPage + ", prdNum="
				+ prdNum + ", prdPrice=" + prdPrice + ", prdDiscount=" + prdDiscount + ", subCateNum=" + subCateNum
				+ ", prdName=" + prdName + ", thum=" + thum + ", prdBodyThum=" + prdBodyThum + ", prdImg=" + prdImg
				+ ", prdBodyImg=" + prdBodyImg + ", keyword=" + keyword + ", prdImgList=" + prdImgList
				+ ", prdBodyImgList=" + prdBodyImgList + "]";
	}
	
}//class
