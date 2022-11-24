package kr.co.salad.manager.domain;

import java.sql.Date;

public class MngNoticeDomain {
	
	private int notiNum, notiHits;
	private String notiTitle, notiCont,notiWriteDate;
	public MngNoticeDomain() {
		super();
	}
	public MngNoticeDomain(int notiNum, int notiHits, String notiTitle, String notiCont, String notiWriteDate) {
		super();
		this.notiNum = notiNum;
		this.notiHits = notiHits;
		this.notiTitle = notiTitle;
		this.notiCont = notiCont;
		this.notiWriteDate = notiWriteDate;
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
	@Override
	public String toString() {
		return "MngNoticeDomain [notiNum=" + notiNum + ", notiHits=" + notiHits + ", notiTitle=" + notiTitle
				+ ", notiCont=" + notiCont + ", notiWriteDate=" + notiWriteDate + "]";
	}
	
	

}
