package kr.co.salad.user.vo;

import java.util.Arrays;

public class WishVO {
	String id, wishFlag, setFlag, tableName;
	int prdNum;
	int startNum, endNum, currentPage;
	int[] prdNumArr;
	
	public WishVO() {
		super();
	}
	public WishVO(String id, String wishFlag, String setFlag, String tableName, int prdNum, int startNum, int endNum,
			int currentPage, int[] prdNumArr) {
		super();
		this.id = id;
		this.wishFlag = wishFlag;
		this.setFlag = setFlag;
		this.tableName = tableName;
		this.prdNum = prdNum;
		this.startNum = startNum;
		this.endNum = endNum;
		this.currentPage = currentPage;
		this.prdNumArr = prdNumArr;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWishFlag() {
		return wishFlag;
	}
	public void setWishFlag(String wishFlag) {
		this.wishFlag = wishFlag;
	}
	public String getSetFlag() {
		return setFlag;
	}
	public void setSetFlag(String setFlag) {
		this.setFlag = setFlag;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
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
	public int[] getPrdNumArr() {
		return prdNumArr;
	}
	public void setPrdNumArr(int[] prdNumArr) {
		this.prdNumArr = prdNumArr;
	}
	@Override
	public String toString() {
		return "WishVO [id=" + id + ", wishFlag=" + wishFlag + ", setFlag=" + setFlag + ", tableName=" + tableName
				+ ", prdNum=" + prdNum + ", startNum=" + startNum + ", endNum=" + endNum + ", currentPage="
				+ currentPage + ", prdNumArr=" + Arrays.toString(prdNumArr) + "]";
	}
	
}//class
