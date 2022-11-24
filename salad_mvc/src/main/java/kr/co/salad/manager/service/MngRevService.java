package kr.co.salad.manager.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngRevDAO;
import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.vo.MngRevVO;

@Component
public class MngRevService {
	
	@Autowired(required = false)
	private MngRevDAO mrDAO;
	
	//�ı���ü,�˻�����Ʈ
	public String searchRevList(MngRevVO mrVO) {
		List<MngRevDomain> mrDomain=new ArrayList<MngRevDomain>();
		
		int paramCurrentPage=mrVO.getCurrentPage();
		
		//����¡ ����
		int currentPage=1;//���� ������
		int totalCount=0;//��ü �� ��
		int totalPage=0;//��ü ������ ��
		int pageScale=10;//�� ������ ������ �� ��
		int startNum=0;//�������� ���� ����
		int endNum=0;
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//�Ķ���Ͱ� null�� ���� ���
			currentPage=1;
		}//end catch
		
		//��ü ������ ����
		totalCount=mrDAO.selectRevListCount(mrVO);
		
		//�� ������ ��
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//end if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
							
		startNum = (currentPage) * pageScale-pageScale+1;//�� �������� ���� ����
		
		endNum = startNum+pageScale-1;
		
		//VO set
		mrVO.setStartNum(startNum);
		mrVO.setEndNum(endNum);
		
		mrDomain=mrDAO.selectRevList(mrVO);
		
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
		jsonObj.put("isEmpty", mrDomain.isEmpty());
		jsonObj.put("listSize", mrDomain.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		

		for(MngRevDomain tempDomain : mrDomain){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("revNum", tempDomain.getRevNum());
			jsonTemp.put("name", tempDomain.getName());
			jsonTemp.put("revWriteDate", tempDomain.getRevWriteDate());
			jsonTemp.put("prdName", tempDomain.getPrdName());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	//�ı� �󼼺���
	public MngRevDomain searchRevDetail(int revNum) {
		MngRevDomain mrDomain=new MngRevDomain();
		mrDomain=mrDAO.selectRevDetail(revNum);
		return mrDomain;
	}
	
	//�ı� ����
	public int removeRev(int revNum) {
		int removeFlag=0;
		removeFlag=mrDAO.deleteRev(revNum);
		return removeFlag; //1�� �����Ϸ�, 0�� ��������
	}
	
	//����Ʈ �ı� ���
	public int editBestRev(int revNum) {
		int bestFlag=0;
		bestFlag=mrDAO.updateBestRev(revNum);
		return bestFlag;//1�� ���,0�� �̵��
	}
	
	//����ī�װ�
	public String searchMainCate() {
		JSONObject jsonObj=new JSONObject();
		
		boolean resultFlag=true;
		
		List<MngRevDomain> list=mrDAO.selectMainCate();
		
		JSONObject jsonTemp=null;
		JSONArray jsonArr=new JSONArray();
		for(MngRevDomain md:list) {
			jsonTemp=new JSONObject();
			jsonTemp.put("mainNum", md.getMainCateNum());
			jsonTemp.put("mainName", md.getMainCateName());
			
			jsonArr.add(jsonTemp);
		}
		
		if(jsonArr==null) {
			resultFlag=false;
		}
		
		jsonObj.put("mainData", jsonArr);
		jsonObj.put("result", resultFlag);
		
		return jsonObj.toJSONString();
	}
	
	//����ī�װ�
	public String searchSubCate(int mainCate) {
		
		JSONObject jsonObj=new JSONObject();
		
		boolean resultFlag=true;
		
		List<MngRevDomain> list=mrDAO.selectSubCate(mainCate);
		
		JSONObject jsonTemp=null;
		JSONArray jsonArr=new JSONArray();
		for(MngRevDomain md:list) {
			jsonTemp=new JSONObject();
			jsonTemp.put("subNum", md.getSubCateNum());
			jsonTemp.put("subName", md.getSubCateName());
			
			jsonArr.add(jsonTemp);
		}
		
		if(jsonArr==null) {
			resultFlag=false;
		}
		
		jsonObj.put("subData", jsonArr);
		jsonObj.put("resultFlag", resultFlag);
		
		return jsonObj.toJSONString();
	}
	
	//����¡//
	
	

}
