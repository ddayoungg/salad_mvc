package kr.co.salad.manager.domain;

import java.util.Date;

public class MngOrderDomain {
	private int orderNum, orderTotalPrice;
	private String name, orderStatus, phone, email, existAddrFlag, zipcode, deliZipcode, addr, deAddr, deliAddr,
			deliDetailAddr, receiver, deliPhone, deliReq;
	private Date orderDate;

	public MngOrderDomain() {
	}

	public MngOrderDomain(int orderNum, int orderTotalPrice, String name, String orderStatus, String phone,
			String email, String existAddrFlag, String zipcode, String deliZipcode, String addr, String deAddr,
			String deliAddr, String deliDetailAddr, String receiver, String deliPhone, String deliReq, Date orderDate) {
		super();
		this.orderNum = orderNum;
		this.orderTotalPrice = orderTotalPrice;
		this.name = name;
		this.orderStatus = orderStatus;
		this.phone = phone;
		this.email = email;
		this.existAddrFlag = existAddrFlag;
		this.zipcode = zipcode;
		this.deliZipcode = deliZipcode;
		this.addr = addr;
		this.deAddr = deAddr;
		this.deliAddr = deliAddr;
		this.deliDetailAddr = deliDetailAddr;
		this.receiver = receiver;
		this.deliPhone = deliPhone;
		this.deliReq = deliReq;
		this.orderDate = orderDate;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}

	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getExistAddrFlag() {
		return existAddrFlag;
	}

	public void setExistAddrFlag(String existAddrFlag) {
		this.existAddrFlag = existAddrFlag;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getDeliZipcode() {
		return deliZipcode;
	}

	public void setDeliZipcode(String deliZipcode) {
		this.deliZipcode = deliZipcode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDeAddr() {
		return deAddr;
	}

	public void setDeAddr(String deAddr) {
		this.deAddr = deAddr;
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

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "MngOrderDomain [orderNum=" + orderNum + ", orderTotalPrice=" + orderTotalPrice + ", name=" + name
				+ ", orderStatus=" + orderStatus + ", phone=" + phone + ", email=" + email + ", existAddrFlag="
				+ existAddrFlag + ", zipcode=" + zipcode + ", deliZipcode=" + deliZipcode + ", addr=" + addr
				+ ", deAddr=" + deAddr + ", deliAddr=" + deliAddr + ", deliDetailAddr=" + deliDetailAddr + ", receiver="
				+ receiver + ", deliPhone=" + deliPhone + ", deliReq=" + deliReq + ", orderDate=" + orderDate + "]";
	}

}
