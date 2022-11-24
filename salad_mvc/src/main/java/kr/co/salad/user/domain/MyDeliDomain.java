package kr.co.salad.user.domain;

public class MyDeliDomain {
	
	private String id,name,addr,deAddr,phone,zipcode;

	public MyDeliDomain() {
		super();
	}

	public MyDeliDomain(String id, String name, String addr, String deAddr, String phone, String zipcode) {
		super();
		this.id = id;
		this.name = name;
		this.addr = addr;
		this.deAddr = deAddr;
		this.phone = phone;
		this.zipcode = zipcode;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	@Override
	public String toString() {
		return "MyDeliDomain [id=" + id + ", name=" + name + ", addr=" + addr + ", deAddr=" + deAddr + ", phone="
				+ phone + ", zipcode=" + zipcode + "]";
	}
	

}
