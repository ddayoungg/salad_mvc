package kr.co.salad.user.vo;

public class MemberVO {
	
	private String id,pass,newPass,name,email,phone,zipcode,addr,deAddr;

	public MemberVO() {
		super();
	}

	public MemberVO(String id, String pass, String newPass, String name, String email, String phone, String zipcode,
			String addr, String deAddr) {
		super();
		this.id = id;
		this.pass = pass;
		this.newPass = newPass;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.zipcode = zipcode;
		this.addr = addr;
		this.deAddr = deAddr;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getNewPass() {
		return newPass;
	}

	public void setNewPass(String newPass) {
		this.newPass = newPass;
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

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pass=" + pass + ", newPass=" + newPass + ", name=" + name + ", email=" + email
				+ ", phone=" + phone + ", zipcode=" + zipcode + ", addr=" + addr + ", deAddr=" + deAddr + "]";
	}

	
	

}
