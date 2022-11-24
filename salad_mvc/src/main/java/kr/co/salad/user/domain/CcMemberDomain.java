package kr.co.salad.user.domain;

public class CcMemberDomain {

	private String name, phone, email, zipcode, addr, deAddr;
	private String deliReq;
	
	public CcMemberDomain() {
		super();
	}
	public CcMemberDomain(String name, String phone, String email, String zipcode, String addr, String deAddr,
			String deliReq) {
		super();
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.zipcode = zipcode;
		this.addr = addr;
		this.deAddr = deAddr;
		this.deliReq = deliReq;
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
	public String getDeliReq() {
		return deliReq;
	}
	public void setDeliReq(String deliReq) {
		this.deliReq = deliReq;
	}
	@Override
	public String toString() {
		return "CcMemberDomain [name=" + name + ", phone=" + phone + ", email=" + email + ", zipcode=" + zipcode
				+ ", addr=" + addr + ", deAddr=" + deAddr + ", deliReq=" + deliReq + "]";
	}
	
}//class
