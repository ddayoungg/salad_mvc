package kr.co.salad.manager.vo;

public class MngLoginVO {
	
		private String mngId,mngPass;

		public MngLoginVO() {

		}

		public MngLoginVO(String mngId, String mngPass) {
			this.mngId = mngId;
			this.mngPass = mngPass;
		}

		public String getMngId() {
			return mngId;
		}

		public void setMngId(String mngId) {
			this.mngId = mngId;
		}

		public String getMngPass() {
			return mngPass;
		}

		public void setMngPass(String mngPass) {
			this.mngPass = mngPass;
		}

		@Override
		public String toString() {
			return "MngLoginVO [mngId=" + mngId + ", mngPass=" + mngPass + "]";
		}
		
		
		
}
