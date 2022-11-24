package kr.co.salad.manager.service;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngMemberDAO;
import kr.co.salad.manager.domain.MngMemberDomain;
import kr.co.salad.manager.vo.MngMemberVO;
@Component
public class MngMemberService {
	
	@Autowired(required = false)
	private MngMemberDAO mmDAO;
	
	public String searchMemberTotalJson() {//��ü ȸ�� ��, ���� ��, Ż�� ��
		
		MngMemberVO mmVO=new MngMemberVO();
		
		mmVO.setFiledName("total");
		//��ü ȸ�� ��
		int totalMember=mmDAO.selectMemberTotalCount(mmVO);
		//��ü ���� ��
		mmVO.setFiledName("outFlag");
		mmVO.setKeyword("����");
		int totalJoinMember=mmDAO.selectMemberTotalCount(mmVO);
		
		//��ü Ż�� ��
		mmVO.setFiledName("outFlag");
		mmVO.setKeyword("Ż��");
		int totalOutMember=mmDAO.selectMemberTotalCount(mmVO);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("totalMember", totalMember);
		jsonObj.put("totalJoinMember", totalJoinMember);
		jsonObj.put("totalOutMember", totalOutMember);
		
		return  jsonObj.toJSONString();
	}//searchMemberTotalCount
	
	public String searchMemberListJson(MngMemberVO mmVO) {//ȸ�� ���� ����Ʈ
		List<MngMemberDomain> list=null;
		
		int paramCurrentPage=mmVO.getCurrentPage();
		
		//����¡ ����
		int currentPage=1;//���� ������
		int totalCount=0;//��ü �� ��
		int totalPage=0;//��ü ������ ��
		int pageScale=10;//�� ������ ������ �� ��
		int startNum=0;//�������� ���� ����
		//����� 2022-11-23 ����¡ ���� 1 ����
		int endNum=0;//�������� �� ����
		//����� 2022-11-23 ����¡ ���� 1 ��
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//�Ķ���Ͱ� null�� ���� ���
			currentPage=1;
		}//end catch
		
		//��ü ������ ����
		totalCount=mmDAO.selectMemberTotalCount(mmVO);
		
		//�� ������ ��
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//end if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
		
		//����� 2022-11-23 ����¡ ���� 2 ����
		
		startNum = (currentPage) * pageScale-pageScale+1;//�� �������� ���� ����
		
		endNum = startNum+pageScale-1;
		
		//����� 2022-11-23 ����¡ ���� 2 ��
		
		//VO set
		mmVO.setStartNum(startNum);
		mmVO.setEndNum(endNum);
		
		list=mmDAO.selectMemberList(mmVO);
		
		//������ ��
		int pageLength=5;//������ ��� ���� 1~5������
						
		int currentBlock=currentPage % pageLength == 0 ? currentPage / pageLength : (currentPage / pageLength) +1;//���� �������� ��� ���� �����ִ��� �˷���.
		int startPage = (currentBlock - 1) * pageLength + 1;
		int endPage=startPage + pageLength - 1;
						
		//������ ������ �������� �� ������ ���� �Ѿ�� �� ����� ������ ������ ���ڷ� ����
		if(endPage > totalPage) {
			endPage = totalPage;
		}//end if

		JSONObject jsonObj=new JSONObject();
		jsonObj.put("currentPage", currentPage);
		jsonObj.put("startPage", startPage);
		jsonObj.put("endPage", endPage);
		jsonObj.put("totalCount", totalCount);
		jsonObj.put("totalPage", totalPage);
		jsonObj.put("isEmpty", list.isEmpty());
		jsonObj.put("listSize", list.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		
		for(MngMemberDomain tempDomain : list){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("id", tempDomain.getId());
			jsonTemp.put("name", tempDomain.getName());
			jsonTemp.put("joinDate", tempDomain.getJoinDate());
			
			tempDomain.setOutFlag(( "0".equals(tempDomain.getOutFlag()) ?"����":"Ż��"));
			
			jsonTemp.put("outFlag", tempDomain.getOutFlag());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchMemberListJson
	
	public String searchMemberDetailJson(String id) {//ȸ�� ������
		
		MngMemberDomain mmDomain=mmDAO.selectMemberDetail(id);
		
		System.out.println(mmDomain);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("name", mmDomain.getName());
		jsonObj.put("email", mmDomain.getEmail());
		jsonObj.put("id", mmDomain.getId());
		jsonObj.put("joinDate", mmDomain.getJoinDate());
		jsonObj.put("phone", mmDomain.getPhone());
		jsonObj.put("zipcode", mmDomain.getZipcode());
		jsonObj.put("addr", mmDomain.getAddr());
		jsonObj.put("deAddr", mmDomain.getDeAddr());
		jsonObj.put("outFlag", mmDomain.getOutFlag());
		jsonObj.put("outDate", mmDomain.getOutDate());
		jsonObj.put("outReason", mmDomain.getOutReason());
		
		return jsonObj.toJSONString();
	}//searchMemberDetailJson
	
	public int editMemberOut(MngMemberVO mmVO) {//ȸ�� Ż��
		int upCnt=0;
		
		upCnt=mmDAO.updateMemberOut(mmVO);
		
		return upCnt;
	}//editMemberOut
	
}//class
