package kr.co.salad.user.domain;

import java.util.List;

public class NoticeDomain {
	private int notiNum, notiHits;
	private String notiTitle, notiCont, notiWriteDate;
	private List<String> revImg;
	public NoticeDomain() {
		super();
	}
	public NoticeDomain(int notiNum, int notiHits, String notiTitle, String notiCont, String notiWriteDate,
			List<String> revImg) {
		super();
		this.notiNum = notiNum;
		this.notiHits = notiHits;
		this.notiTitle = notiTitle;
		this.notiCont = notiCont;
		this.notiWriteDate = notiWriteDate;
		this.revImg = revImg;
	}
	public int getNotiNum() {
		return notiNum;
	}
	public void setNotiNum(int notiNum) {
		this.notiNum = notiNum;
	}
	public int getNotiHits() {
		return notiHits;
	}
	public void setNotiHits(int notiHits) {
		this.notiHits = notiHits;
	}
	public String getNotiTitle() {
		return notiTitle;
	}
	public void setNotiTitle(String notiTitle) {
		this.notiTitle = notiTitle;
	}
	public String getNotiCont() {
		return notiCont;
	}
	public void setNotiCont(String notiCont) {
		this.notiCont = notiCont;
	}
	public String getNotiWriteDate() {
		return notiWriteDate;
	}
	public void setNotiWriteDate(String notiWriteDate) {
		this.notiWriteDate = notiWriteDate;
	}
	public List<String> getRevImg() {
		return revImg;
	}
	public void setRevImg(List<String> revImg) {
		this.revImg = revImg;
	}
	@Override
	public String toString() {
		return "NoticeDomain [notiNum=" + notiNum + ", notiHits=" + notiHits + ", notiTitle=" + notiTitle
				+ ", notiCont=" + notiCont + ", notiWriteDate=" + notiWriteDate + ", revImg=" + revImg + "]";
	}

}
