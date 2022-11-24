package kr.co.salad.user.vo;

public class OrderVO {
	private int orderNum, orderTotalPrice;
	private String id, deliReq, existAddrFlag, deliZipcode, deliAddr, deliDetailAddr, receiver, deliPhone;

	public OrderVO() {
	}

	public OrderVO(int orderNum, int orderTotalPrice, String id, String deliReq, String existAddrFlag,
			String deliZipcode, String deliAddr, String deliDetailAddr, String receiver, String deliPhone) {
		super();
		this.orderNum = orderNum;
		this.orderTotalPrice = orderTotalPrice;
		this.id = id;
		this.deliReq = deliReq;
		this.existAddrFlag = existAddrFlag;
		this.deliZipcode = deliZipcode;
		this.deliAddr = deliAddr;
		this.deliDetailAddr = deliDetailAddr;
		this.receiver = receiver;
		this.deliPhone = deliPhone;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDeliReq() {
		return deliReq;
	}

	public void setDeliReq(String deliReq) {
		this.deliReq = deliReq;
	}

	public String getExistAddrFlag() {
		return existAddrFlag;
	}

	public void setExistAddrFlag(String existAddrFlag) {
		this.existAddrFlag = existAddrFlag;
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

	@Override
	public String toString() {
		return "OrderVO [orderNum=" + orderNum + ", orderTotalPrice=" + orderTotalPrice + ", id=" + id + ", deliReq="
				+ deliReq + ", existAddrFlag=" + existAddrFlag + ", deliZipcode=" + deliZipcode + ", deliAddr="
				+ deliAddr + ", deliDetailAddr=" + deliDetailAddr + ", receiver=" + receiver + ", deliPhone="
				+ deliPhone + "]";
	}

}
