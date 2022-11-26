package kr.co.salad.user.vo;

public class MyChangeVO {
	
	private String id,pass,name,email,phone,newPass;

	public MyChangeVO(String id, String pass, String name, String email, String phone, String newPass) {
		super();
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.newPass = newPass;
	}

	public MyChangeVO() {
		
	}

	@Override
	public String toString() {
		return "MyChangeVO [id=" + id + ", pass=" + pass + ", name=" + name + ", email=" + email + ", phone=" + phone
				+ ", newPass=" + newPass + "]";
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

	public String getNewPass() {
		return newPass;
	}

	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}

	
}//class
