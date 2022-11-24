package kr.co.salad.manager.domain;

public class MngQnaDomain {

	private String id, qnaTitle, qnaCont, qnaAFlag, qnaWriteDate, mainCateName, subCateName;
	private int qnaNum, prdNum, mainCateNum, subCateNum;
	
	public MngQnaDomain() {
		super();
	}



	public MngQnaDomain(String id, String qnaTitle, String qnaCont, String qnaAFlag, String qnaWriteDate,
			String mainCateName, String subCateName, int qnaNum, int prdNum, int mainCateNum, int subCateNum) {
		super();
		this.id = id;
		this.qnaTitle = qnaTitle;
		this.qnaCont = qnaCont;
		this.qnaAFlag = qnaAFlag;
		this.qnaWriteDate = qnaWriteDate;
		this.mainCateName = mainCateName;
		this.subCateName = subCateName;
		this.qnaNum = qnaNum;
		this.prdNum = prdNum;
		this.mainCateNum = mainCateNum;
		this.subCateNum = subCateNum;
	}



	public String getMainCateName() {
		return mainCateName;
	}



	public void setMainCateName(String mainCateName) {
		this.mainCateName = mainCateName;
	}



	public String getSubCateName() {
		return subCateName;
	}



	public void setSubCateName(String subCateName) {
		this.subCateName = subCateName;
	}



	public int getMainCateNum() {
		return mainCateNum;
	}



	public void setMainCateNum(int mainCateNum) {
		this.mainCateNum = mainCateNum;
	}



	public int getSubCateNum() {
		return subCateNum;
	}



	public void setSubCateNum(int subCateNum) {
		this.subCateNum = subCateNum;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaCont() {
		return qnaCont;
	}

	public void setQnaCont(String qnaCont) {
		this.qnaCont = qnaCont;
	}

	public String getQnaAFlag() {
		return qnaAFlag;
	}

	public void setQnaAFlag(String qnaAFlag) {
		this.qnaAFlag = qnaAFlag;
	}

	public String getQnaWriteDate() {
		return qnaWriteDate;
	}

	public void setQnaWriteDate(String qnaWriteDate) {
		this.qnaWriteDate = qnaWriteDate;
	}

	public int getQnaNum() {
		return qnaNum;
	}

	public void setQnaNum(int qnaNum) {
		this.qnaNum = qnaNum;
	}

	public int getPrdNum() {
		return prdNum;
	}

	public void setPrdNum(int prdNum) {
		this.prdNum = prdNum;
	}



	@Override
	public String toString() {
		return "MngQnaDomain [id=" + id + ", qnaTitle=" + qnaTitle + ", qnaCont=" + qnaCont + ", qnaAFlag=" + qnaAFlag
				+ ", qnaWriteDate=" + qnaWriteDate + ", mainCateName=" + mainCateName + ", subCateName=" + subCateName
				+ ", qnaNum=" + qnaNum + ", prdNum=" + prdNum + ", mainCateNum=" + mainCateNum + ", subCateNum="
				+ subCateNum + "]";
	}


	
}
