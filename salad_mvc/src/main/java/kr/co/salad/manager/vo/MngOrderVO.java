package kr.co.salad.manager.vo;

public class MngOrderVO {
	private String id, orderStatus, existAddrFlag, name;
	private int currentPage;
	private String orderDate, searchText;

	public MngOrderVO() {
	}

	public MngOrderVO(String id, String orderStatus, String existAddrFlag, String name, int currentPage,
			String orderDate, String searchText) {
		this.id = id;
		this.orderStatus = orderStatus;
		this.existAddrFlag = existAddrFlag;
		this.name = name;
		this.currentPage = currentPage;
		this.orderDate = orderDate;
		this.searchText = searchText;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	@Override
	public String toString() {
		return "MngOrderVO [id=" + id + ", orderStatus=" + orderStatus + ", existAddrFlag=" + existAddrFlag + ", name="
				+ name + ", currentPage=" + currentPage + ", orderDate=" + orderDate + ", searchText=" + searchText
				+ "]";
	}

}
