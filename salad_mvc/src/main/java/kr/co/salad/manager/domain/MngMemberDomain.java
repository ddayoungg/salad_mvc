package kr.co.salad.manager.domain;

public class MngMemberDomain {
	private String id, name, email, phone, zipcode, addr, deAddr, outFlag, outReason;
	private String joinDate, outDate;
	
	public MngMemberDomain() {
		super();
	}

	public MngMemberDomain(String id, String name, String email, String phone, String zipcode, String addr,
			String deAddr, String outFlag, String outReason, String joinDate, String outDate) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.zipcode = zipcode;
		this.addr = addr;
		this.deAddr = deAddr;
		this.outFlag = outFlag;
		this.outReason = outReason;
		this.joinDate = joinDate;
		this.outDate = outDate;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getOutFlag() {
		return outFlag;
	}

	public void setOutFlag(String outFlag) {
		this.outFlag = outFlag;
	}

	public String getOutReason() {
		return outReason;
	}

	public void setOutReason(String outReason) {
		this.outReason = outReason;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getOutDate() {
		return outDate;
	}

	public void setOutDate(String outDate) {
		this.outDate = outDate;
	}

	@Override
	public String toString() {
		return "MngMemberDomain [id=" + id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", zipcode="
				+ zipcode + ", addr=" + addr + ", deAddr=" + deAddr + ", outFlag=" + outFlag + ", outReason="
				+ outReason + ", joinDate=" + joinDate + ", outDate=" + outDate + "]";
	}
	
}//class
