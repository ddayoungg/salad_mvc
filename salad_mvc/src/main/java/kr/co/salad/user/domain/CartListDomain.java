package kr.co.salad.user.domain;

import java.util.List;

public class CartListDomain {
	private List<CartDomain> orders;

	public CartListDomain() {
	}

	public CartListDomain(List<CartDomain> orders) {
		this.orders = orders;
	}

	public List<CartDomain> getOrders() {
		return orders;
	}

	public void setOrders(List<CartDomain> orders) {
		this.orders = orders;
	}

	@Override
	public String toString() {
		return "OrderDomain [orders=" + orders + "]";
	}

}
