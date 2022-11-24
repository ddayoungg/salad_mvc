package kr.co.salad.manager.vo;

import java.util.Date;

public class MngOrderVO {
	private String orderNum, orderStatus, existAddrFlag, name;
	private Date orderDate;

	public MngOrderVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MngOrderVO(String orderNum, String orderStatus, String existAddrFlag, String name, Date orderDate) {
		super();
		this.orderNum = orderNum;
		this.orderStatus = orderStatus;
		this.existAddrFlag = existAddrFlag;
		this.name = name;
		this.orderDate = orderDate;
	}

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public String getExistAddrFlag() {
		return existAddrFlag;
	}

	public void setExistAddrFlag(String existAddrFlag) {
		this.existAddrFlag = existAddrFlag;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "MngOrderVO [orderNum=" + orderNum + ", orderStatus=" + orderStatus + ", existAddrFlag=" + existAddrFlag
				+ ", name=" + name + ", orderDate=" + orderDate + "]";
	}

}
