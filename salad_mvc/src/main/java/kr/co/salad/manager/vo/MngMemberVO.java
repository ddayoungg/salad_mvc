package kr.co.salad.manager.vo;

public class MngMemberVO {

	private String id, name, outFlag, outReason, filedName, keyword;
	private int startNum, endNum, currentPage;
	
	public MngMemberVO() {
		super();
	}
	public MngMemberVO(String id, String name, String outFlag, String outReason, String filedName, String keyword,
			int startNum, int endNum, int currentPage) {
		super();
		this.id = id;
		this.name = name;
		this.outFlag = outFlag;
		this.outReason = outReason;
		this.filedName = filedName;
		this.keyword = keyword;
		this.startNum = startNum;
		this.endNum = endNum;
		this.currentPage = currentPage;
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
	public String getFiledName() {
		return filedName;
	}
	public void setFiledName(String filedName) {
		this.filedName = filedName;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	@Override
	public String toString() {
		return "MngMemberVO [id=" + id + ", name=" + name + ", outFlag=" + outFlag + ", outReason=" + outReason
				+ ", filedName=" + filedName + ", keyword=" + keyword + ", startNum=" + startNum + ", endNum=" + endNum
				+ ", currentPage=" + currentPage + "]";
	}
	
}//class
