package kr.co.salad.user.vo;

public class KategoriePrdVO {

	private int startNum, endNum, currentPage;
	private int prdNum, mainCateNum, subCateNum;
	private String sortType, keyword;
	
	public KategoriePrdVO() {
		super();
	}
	public KategoriePrdVO(int startNum, int endNum, int currentPage, int prdNum, int mainCateNum, int subCateNum,
			String sortType, String keyword) {
		super();
		this.startNum = startNum;
		this.endNum = endNum;
		this.currentPage = currentPage;
		this.prdNum = prdNum;
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
		this.sortType = sortType;
		this.keyword = keyword;
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
	public String getSortType() {
		return sortType;
	}
	public void setSortType(String sortType) {
		this.sortType = sortType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "KategoriePrdVO [startNum=" + startNum + ", endNum=" + endNum + ", currentPage=" + currentPage
				+ ", prdNum=" + prdNum + ", mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", sortType="
				+ sortType + ", keyword=" + keyword + "]";
	}
	
}//class
