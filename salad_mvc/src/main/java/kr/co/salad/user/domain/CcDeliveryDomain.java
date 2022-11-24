package kr.co.salad.user.domain;

public class CcDeliveryDomain {
	private int orderNum;
	private String deliZipcode, deliAddr, deliDetailAddr, receiver, deliPhone;
	private String deliReq;
	
	public CcDeliveryDomain() {
		super();
	}
	public CcDeliveryDomain(int orderNum, String deliZipcode, String deliAddr, String deliDetailAddr, String receiver,
			String deliPhone, String deliReq) {
		super();
		this.orderNum = orderNum;
		this.deliZipcode = deliZipcode;
		this.deliAddr = deliAddr;
		this.deliDetailAddr = deliDetailAddr;
		this.receiver = receiver;
		this.deliPhone = deliPhone;
		this.deliReq = deliReq;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getDeliZipcode() {
		return deliZipcode;
	}
	public void setDeliZipcode(String deliZipcode) {
		this.deliZipcode = deliZipcode;
	}
	public String getDeliAddr() {
		return deliAddr;
	}
	public void setDeliAddr(String deliAddr) {
		this.deliAddr = deliAddr;
	}
	public String getDeliDetailAddr() {
		return deliDetailAddr;
	}
	public void setDeliDetailAddr(String deliDetailAddr) {
		this.deliDetailAddr = deliDetailAddr;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getDeliPhone() {
		return deliPhone;
	}
	public void setDeliPhone(String deliPhone) {
		this.deliPhone = deliPhone;
	}
	public String getDeliReq() {
		return deliReq;
	}
	public void setDeliReq(String deliReq) {
		this.deliReq = deliReq;
	}
	@Override
	public String toString() {
		return "CcDeliveryDomain [orderNum=" + orderNum + ", deliZipcode=" + deliZipcode + ", deliAddr=" + deliAddr
				+ ", deliDetailAddr=" + deliDetailAddr + ", receiver=" + receiver + ", deliPhone=" + deliPhone
				+ ", deliReq=" + deliReq + "]";
	}
	
}//class
