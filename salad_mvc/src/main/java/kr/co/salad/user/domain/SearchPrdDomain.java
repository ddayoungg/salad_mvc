package kr.co.salad.user.domain;

public class SearchPrdDomain {
	private int prdNum, prdPrice, prdDiscount, mainCateNum, subCateNum;
	private String prdName, thum, mainCateName, subCateName;
	private String prdRegistDate;
	
	public SearchPrdDomain() {
		super();
	}
	public SearchPrdDomain(int prdNum, int prdPrice, int prdDiscount, int mainCateNum, int subCateNum, String prdName,
			String thum, String mainCateName, String subCateName, String prdRegistDate) {
		super();
		this.prdNum = prdNum;
		this.prdPrice = prdPrice;
		this.prdDiscount = prdDiscount;
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
		this.prdName = prdName;
		this.thum = thum;
		this.mainCateName = mainCateName;
		this.subCateName = subCateName;
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
	public String getPrdRegistDate() {
		return prdRegistDate;
	}
	public void setPrdRegistDate(String prdRegistDate) {
		this.prdRegistDate = prdRegistDate;
	}
	@Override
	public String toString() {
		return "SearchPrdDomain [prdNum=" + prdNum + ", prdPrice=" + prdPrice + ", prdDiscount=" + prdDiscount
				+ ", mainCateNum=" + mainCateNum + ", subCateNum=" + subCateNum + ", prdName=" + prdName + ", thum="
				+ thum + ", mainCateName=" + mainCateName + ", subCateName=" + subCateName + ", prdRegistDate="
				+ prdRegistDate + "]";
	}
	
}//class
