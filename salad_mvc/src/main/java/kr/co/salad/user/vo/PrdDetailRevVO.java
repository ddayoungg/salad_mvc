package kr.co.salad.user.vo;

import java.util.List;

public class PrdDetailRevVO {
	
	private int revNum, prdNum, orderNum, startNum, endNum, currentPage;
	private String id, revTitle, revCont, rangeType, sortType, orderBy, revImg;
	private List<String> revImgList;
	
	public PrdDetailRevVO() {
		super();
	}
	public PrdDetailRevVO(int revNum, int prdNum, int orderNum, int startNum, int endNum, int currentPage, String id,
			String revTitle, String revCont, String rangeType, String sortType, String orderBy, String revImg,
			List<String> revImgList) {
		super();
		this.revNum = revNum;
		this.prdNum = prdNum;
		this.orderNum = orderNum;
		this.startNum = startNum;
		this.endNum = endNum;
		this.currentPage = currentPage;
		this.id = id;
		this.revTitle = revTitle;
		this.revCont = revCont;
		this.rangeType = rangeType;
		this.sortType = sortType;
		this.orderBy = orderBy;
		this.revImg = revImg;
		this.revImgList = revImgList;
	}
	public int getRevNum() {
		return revNum;
	}
	public void setRevNum(int revNum) {
		this.revNum = revNum;
	}
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getRangeType() {
		return rangeType;
	}
	public void setRangeType(String rangeType) {
		this.rangeType = rangeType;
	}
	public String getSortType() {
		return sortType;
	}
	public void setSortType(String sortType) {
		this.sortType = sortType;
	}
	public String getOrderBy() {
		return orderBy;
	}
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	public String getRevImg() {
		return revImg;
	}
	public void setRevImg(String revImg) {
		this.revImg = revImg;
	}
	public List<String> getRevImgList() {
		return revImgList;
	}
	public void setRevImgList(List<String> revImgList) {
		this.revImgList = revImgList;
	}
	@Override
	public String toString() {
		return "PrdDetailRevVO [revNum=" + revNum + ", prdNum=" + prdNum + ", orderNum=" + orderNum + ", startNum="
				+ startNum + ", endNum=" + endNum + ", currentPage=" + currentPage + ", id=" + id + ", revTitle="
				+ revTitle + ", revCont=" + revCont + ", rangeType=" + rangeType + ", sortType=" + sortType
				+ ", orderBy=" + orderBy + ", revImg=" + revImg + ", revImgList=" + revImgList + "]";
	}
	
}//class
