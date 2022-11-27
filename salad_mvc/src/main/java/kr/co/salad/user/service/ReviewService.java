package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.PrdDetailRevDAO;
import kr.co.salad.user.dao.ReviewDAO;
import kr.co.salad.user.domain.ReviewDomain;
import kr.co.salad.user.vo.ReviewVO;

@Component
public class ReviewService {
	
	@Autowired(required = false)
	private ReviewDAO revDAO;
	
	@Autowired(required = false)
	private PrdDetailRevDAO pdrDAO;
	
	//�ı⸮��Ʈ
	public String searchRevList(ReviewVO revVO) {
		List<ReviewDomain> revDomain=new ArrayList<ReviewDomain>();
		int paramCurrentPage=revVO.getCurrentPage();
		
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
		}//catch
		
		//��ü ������ ����
		totalCount=revDAO.selectRevListCount(revVO);
		
		//�� ������ ��
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//if
							
		startNum = (currentPage) * pageScale-pageScale+1;//�� �������� ���� ����
		
		endNum = startNum+pageScale-1;
		
		//VO set
		revVO.setStartNum(startNum);
		revVO.setEndNum(endNum);
		
		revDomain=revDAO.selectRevList(revVO);
		
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
		jsonObj.put("isEmpty", revDomain.isEmpty());
		jsonObj.put("listSize", revDomain.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		

		for(ReviewDomain tempDomain : revDomain){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("revNum", tempDomain.getRevNum());
			jsonTemp.put("name", tempDomain.getName());
			jsonTemp.put("revWriteDate", tempDomain.getRevWriteDate());
			jsonTemp.put("thum", tempDomain.getThum());
			jsonTemp.put("revTitle", tempDomain.getRevTitle());
			jsonTemp.put("revHits", tempDomain.getRevHits());
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	//�ı� �󼼺���
	public ReviewDomain searchRevDetail(int revNum) {
		ReviewDomain revDomain=new ReviewDomain();
		revDomain=revDAO.selectRevDetail(revNum);
		return revDomain;
	}
	
	//�ı� �̹��� ����Ʈ
	public List<String> searchRevImgList(int revNum) {
		List<String> list = new ArrayList<String>();
		
		list=pdrDAO.selectRevImgList(revNum);
		
		return list;
	}
	
	//�ı� ��ȸ��
	public int updateRevCount(int revNum) {
		int hitsCnt=0;
		
		hitsCnt=revDAO.updateRevCount(revNum);
		
		return hitsCnt;
	}

}
