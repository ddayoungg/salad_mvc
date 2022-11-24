package kr.co.salad.user.domain;

import java.util.Date;

public class OrderDomain {
	private String id, name, phone, email, zipcode, addr, deAddr, receiver, deliAddr, deliDetailAddr, prdName,
			existAddrFlag;
	private int orderNum, orderTotalPrice;
	private Date orderDate;

	public OrderDomain() {
	}

	public OrderDomain(String id, String name, String phone, String email, String zipcode, String addr, String deAddr,
			String receiver, String deliAddr, String deliDetailAddr, String prdName, String existAddrFlag, int orderNum,
			int orderTotalPrice, Date orderDate) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.zipcode = zipcode;
		this.addr = addr;
		this.deAddr = deAddr;
		this.receiver = receiver;
		this.deliAddr = deliAddr;
		this.deliDetailAddr = deliDetailAddr;
		this.prdName = prdName;
		this.existAddrFlag = existAddrFlag;
		this.orderNum = orderNum;
		this.orderTotalPrice = orderTotalPrice;
		this.orderDate = orderDate;
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

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
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

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
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

	public String getPrdName() {
		return prdName;
	}

	public void setPrdName(String prdName) {
		this.prdName = prdName;
	}

	public String getExistAddrFlag() {
		return existAddrFlag;
	}

	public void setExistAddrFlag(String existAddrFlag) {
		this.existAddrFlag = existAddrFlag;
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

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "OrderDomain [id=" + id + ", name=" + name + ", phone=" + phone + ", email=" + email + ", zipcode="
				+ zipcode + ", addr=" + addr + ", deAddr=" + deAddr + ", receiver=" + receiver + ", deliAddr="
				+ deliAddr + ", deliDetailAddr=" + deliDetailAddr + ", prdName=" + prdName + ", existAddrFlag="
				+ existAddrFlag + ", orderNum=" + orderNum + ", orderTotalPrice=" + orderTotalPrice + ", orderDate="
				+ orderDate + "]";
	}

}