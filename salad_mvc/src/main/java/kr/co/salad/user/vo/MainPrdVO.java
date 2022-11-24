package kr.co.salad.user.vo;

public class MainPrdVO {
	
	private int mainCateNum, subCateNum, prdNum;

	public MainPrdVO() {
		super();
	}

	public MainPrdVO(int mainCateNum, int subCateNum, int prdNum) {
		super();
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
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

	public int getPrdNum() {
		return prdNum;
	}

	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}

	@Override
	public String toString() {
		return "MainPrdVO [mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", prdNum=" + prdNum + "]";
	}
	
	
}