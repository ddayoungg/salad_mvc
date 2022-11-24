package kr.co.salad.user.vo;

import java.util.List;

public class MyRevVO {
	private String revTitle, revCont, name, searchFlag, searchText, id;
	private int  startNum, endNum, totalCount, currentPage, revNum;
	private List<String> revImg;
	public MyRevVO() {
		super();
	}
	public MyRevVO(String revTitle, String revCont, String name, String searchFlag, String searchText, String id,
			int startNum, int endNum, int totalCount, int currentPage, int revNum, List<String> revImg) {
		super();
		this.revTitle = revTitle;
		this.revCont = revCont;
		this.name = name;
		this.searchFlag = searchFlag;
		this.searchText = searchText;
		this.id = id;
		this.startNum = startNum;
		this.endNum = endNum;
		this.totalCount = totalCount;
		this.currentPage = currentPage;
		this.revNum = revNum;
		this.revImg = revImg;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSearchFlag() {
		return searchFlag;
	}
	public void setSearchFlag(String searchFlag) {
		this.searchFlag = searchFlag;
	}
	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getRevNum() {
		return revNum;
	}
	public void setRevNum(int revNum) {
		this.revNum = revNum;
	}
	public List<String> getRevImg() {
		return revImg;
	}
	public void setRevImg(List<String> revImg) {
		this.revImg = revImg;
	}
	@Override
	public String toString() {
		return "MyRevVO [revTitle=" + revTitle + ", revCont=" + revCont + ", name=" + name + ", searchFlag="
				+ searchFlag + ", searchText=" + searchText + ", id=" + id + ", startNum=" + startNum + ", endNum="
				+ endNum + ", totalCount=" + totalCount + ", currentPage=" + currentPage + ", revNum=" + revNum
				+ ", revImg=" + revImg + "]";
	}

}
