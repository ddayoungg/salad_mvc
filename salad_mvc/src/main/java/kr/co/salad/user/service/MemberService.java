package kr.co.salad.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MemberDAO;
import kr.co.salad.user.vo.MemberVO;

@Component
public class MemberService {
	
	@Autowired(required = false)
	private MemberDAO mDAO;

	//�α��� ����
		public String searchLogin(MemberVO mVO) {
			String loginName="";
			loginName=mDAO.selectLogin(mVO);
			return loginName;
		}
		
		//ȸ������ �߰�
		public boolean addJoin(MemberVO mVO) {
			boolean joinFalg=false;
			
			joinFalg=mDAO.insertJoin(mVO);
			return true;
		}
		
		//���̵�ã�� 
		public String searchFindIdChk(MemberVO mVO) {
			String findName="";
			findName=mDAO.selectFindIdChk(mVO);
			
			return findName;
		}
		
		//�ߺ����̵�üũ
		public int searchIdChk(String id) {
			
			return mDAO.selectIdChk(id); //�ߺ����̵�����
		}
		
		//��й�ȣ ã�� üũ
		public boolean searchFindPassChk(MemberVO mVO) {
			boolean pwCh=false;
			pwCh=mDAO.selectFindPassChk(mVO);
					
			return pwCh;
		}
		
		//��й�ȣ ����
		public int editPassReser(MemberVO mVO) {
			int editPw=0;
			editPw=mDAO.updatePassReser(mVO);
						
			return editPw; //����Ϸ�
		}
}
