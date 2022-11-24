package kr.co.salad.user.vo;

public class MyPageVO {
	
	private String id,pass;

	public MyPageVO() {
		super();
	}

	public MyPageVO(String id, String pass) {
		super();
		this.id = id;
		this.pass = pass;
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

	@Override
	public String toString() {
		return "MyPageVO [id=" + id + ", pass=" + pass + "]";
	}
	
	

}
