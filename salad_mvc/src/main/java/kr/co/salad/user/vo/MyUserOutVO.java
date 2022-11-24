package kr.co.salad.user.vo;

public class MyUserOutVO {
	
	private String id,pass,outReason,outFlag;

	public MyUserOutVO() {
		super();
	}

	public MyUserOutVO(String id, String pass, String outReason, String outFlag) {
		super();
		this.id = id;
		this.pass = pass;
		this.outReason = outReason;
		this.outFlag = outFlag;
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

	public String getOutReason() {
		return outReason;
	}

	public void setOutReason(String outReason) {
		this.outReason = outReason;
	}

	public String getOutFlag() {
		return outFlag;
	}

	public void setOutFlag(String outFlag) {
		this.outFlag = outFlag;
	}

	@Override
	public String toString() {
		return "MyUserOutVO [id=" + id + ", pass=" + pass + ", outReason=" + outReason + ", outFlag=" + outFlag + "]";
	}
	
	

}
