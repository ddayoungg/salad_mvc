package kr.co.salad.user.domain;

public class MyChangeDomain {
	
	private String id, pass, name, email, phone;

	@Override
	public String toString() {
		return "MyChangeDomain [id=" + id + ", pass=" + pass + ", name=" + name + ", email=" + email + ", phone="
				+ phone + "]";
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
	
	
}//class
