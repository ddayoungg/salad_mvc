package kr.co.salad.user.domain;

import java.util.Date;
import java.util.List;

public class PrdDetailRevDomain {

	private int revNum, revHits, orderNum, prdNum;
	private String revTitle, revCont, id, name, revImg;
	private Date revWriteDate;
	private char bestFlag;
	private List<String> revImgList;
	
	public PrdDetailRevDomain() {
		super();
	}
	
	public PrdDetailRevDomain(int revNum, int revHits, int orderNum, int prdNum, String revTitle, String revCont, String id,
			String name, String revImg, Date revWriteDate, char bestFlag, List<String> revImgList) {
		super();
		this.revNum = revNum;
		this.revHits = revHits;
		this.orderNum = orderNum;
		this.prdNum = prdNum;
		this.revTitle = revTitle;
		this.revCont = revCont;
		this.id = id;
		this.name = name;
		this.revImg = revImg;
		this.revWriteDate = revWriteDate;
		this.bestFlag = bestFlag;
		this.revImgList = revImgList;
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
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public int getPrdNum() {
		return prdNum;
	}
	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRevImg() {
		return revImg;
	}
	public void setRevImg(String revImg) {
		this.revImg = revImg;
	}
	public Date getRevWriteDate() {
		return revWriteDate;
	}
	public void setRevWriteDate(Date revWriteDate) {
		this.revWriteDate = revWriteDate;
	}
	public char getBestFlag() {
		return bestFlag;
	}
	public void setBestFlag(char bestFlag) {
		this.bestFlag = bestFlag;
	}
	public List<String> getRevImgList() {
		return revImgList;
	}
	public void setRevImgList(List<String> revImgList) {
		this.revImgList = revImgList;
	}
	@Override
	public String toString() {
		return "RevDomain [revNum=" + revNum + ", revHits=" + revHits + ", orderNum=" + orderNum + ", prdNum=" + prdNum
				+ ", revTitle=" + revTitle + ", revCont=" + revCont + ", id=" + id + ", name=" + name + ", revImg="
				+ revImg + ", revWriteDate=" + revWriteDate + ", bestFlag=" + bestFlag + ", revImgList=" + revImgList
				+ "]";
	}
	
}//class
