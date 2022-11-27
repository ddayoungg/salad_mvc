package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MyRevDAO;
import kr.co.salad.user.dao.PrdDetailRevDAO;
import kr.co.salad.user.domain.MyRevDomain;
import kr.co.salad.user.vo.MyRevVO;

@Component
public class MyRevService {
	
	@Autowired(required = false)
	private MyRevDAO mrDAO;
	
	@Autowired(required = false)
	private PrdDetailRevDAO pdrDAO;
	
	
	//���� �ı⸮��Ʈ, �˻�����Ʈ
	public String searchMyRevList(MyRevVO mrVO) { //
		List<MyRevDomain> list=new ArrayList<MyRevDomain>();
		
		int paramCurrentPage=mrVO.getCurrentPage();
		
		System.out.println("���� ������ : "+paramCurrentPage);
		//����¡ ����
		int currentPage=1;//���� ������
		int totalCount=0;//��ü �� ��
		int totalPage=0;//��ü ������ ��
		int pageScale=10;//�� ������ ������ �� ��
		int startNum=0;//�������� ���� ����
		int endNum=0;//�������� �� ���� 
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//�Ķ���Ͱ� null�� ���� ���
			currentPage=1;
		}//end catch
		
		System.out.println("���� ������ : "+currentPage);
		
		//��ü ������ ����
		totalCount=mrDAO.selectMyRevCount(mrVO.getId());
		System.out.println("��ü �����Ͱ���"+totalCount);
		
		//�� ������ ��
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
		totalPage = 1;
		}//end if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
		
		System.out.println("���� ��������?"+currentPage);
		
		startNum = (currentPage) * pageScale-pageScale+1;//�� �������� ���� ����
		
		endNum = startNum+pageScale-1;
		
		//VO set
		mrVO.setStartNum(startNum);
		mrVO.setEndNum(endNum);
		
		list=mrDAO.selectMyRevList(mrVO);
		
		//������ ��
		int pageLength=5;//������ ��� ���� 1~5������
								
		int currentBlock=currentPage % pageLength == 0 ? (currentPage / pageLength) : (currentPage / pageLength) +1;//���� �������� ��� ���� �����ִ��� �˷���.
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
		
		for(MyRevDomain tempDomain : list){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("revNum", tempDomain.getRevNum());
			jsonTemp.put("thum", tempDomain.getThum());
			jsonTemp.put("revTitle", tempDomain.getRevTitle());
			jsonTemp.put("revWriteDate", tempDomain.getRevWriteDate());
			jsonTemp.put("revHits", tempDomain.getRevHits());
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	//�ı� ������
	public MyRevDomain searchMyRevDetail(int revNum) {
		MyRevDomain mrDomain=new MyRevDomain();
		mrDomain=mrDAO.selectMyRevDetil(revNum);
		
		return mrDomain;
	}
	
	
	//�ı� �̹��� ����Ʈ
	public List<String> searchMyRevImgList(int revNum) {
		List<String> list = new ArrayList<String>();
		
		list=pdrDAO.selectRevImgList(revNum);
		
		return list;
	}
	
//	//�ı� �����ϱ�
//	public int editMyRev(MyRevVO mrVO) {
//		int edflag=0;	 //1-���� 0-����
//		edflag=mrDAO.updateMyRev(mrVO);
//		return edflag;
//	}
	
//	//�ı� �����ϱ�
//	public int removeMyRev(int revNum) {
//		int removeFlag=0;	//1-���� 0-����
//		removeFlag=mrDAO.deleteMyRev(revNum);
//		return removeFlag;
//	}

	//�������� ��ȸ��
	public int updateMyRevCount(int revNum) {
		int hitsCnt=0;
		
		hitsCnt= mrDAO.updateMyRevCount(revNum);
		
		return hitsCnt;
	}
	
}
