package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.NoticeDAO;
import kr.co.salad.user.domain.NoticeDomain;
import kr.co.salad.user.vo.NoticeVO;

@Component
public class NoticeService {
	
	@Autowired(required = false)
	private NoticeDAO noDAO;
	
	//�������� ��ü����Ʈ
	public String searchNotice(NoticeVO noVO){
		List<NoticeDomain> noDomain= new ArrayList<NoticeDomain>();
        int paramCurrentPage=noVO.getCurrentPage();
		
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
		
		//��ü ������ ����
		totalCount=noDAO.selectNotiListCount(noVO);
		
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
		noVO.setStartNum(startNum);
		noVO.setEndNum(endNum);
		
		noDomain=noDAO.selectNotice(noVO);
		
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
		jsonObj.put("isEmpty", noDomain.isEmpty());
		jsonObj.put("listSize", noDomain.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		

		for(NoticeDomain tempDomain : noDomain){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("notiNum", tempDomain.getNotiNum());
			jsonTemp.put("notiTitle", tempDomain.getNotiTitle());
			jsonTemp.put("notiWriteDate", tempDomain.getNotiWriteDate());
			jsonTemp.put("notiHits", tempDomain.getNotiHits());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}
	
	//�������� �󼼺���
	public NoticeDomain searchNoticeDetail(int notiNum) {
		NoticeDomain no=new NoticeDomain();
		no=noDAO.selectNoticeDetail(notiNum);
		
		
		//int hitsCnt=noDAO.updateNotiCount(notiNum);
		
		return no;
	}
	
	//�������� ��ȸ��
	public int updateNotiCount(int notiNum) {
		int hitsCnt=0;
		
		hitsCnt=noDAO.updateNotiCount(notiNum);
		
		return hitsCnt;
	}
}
