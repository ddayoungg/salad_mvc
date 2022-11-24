package kr.co.salad.manager.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngNoticeDAO;
import kr.co.salad.manager.dao.MngRevDAO;
import kr.co.salad.manager.domain.MngNoticeDomain;
import kr.co.salad.manager.domain.MngRevDomain;
import kr.co.salad.manager.vo.MngNoticeVO;
import kr.co.salad.manager.vo.MngRevVO;

@Component
public class MngNoticeService {
	
	@Autowired(required = false)
	private MngNoticeDAO mnDAO;
	
	//�˻�,��ü����Ʈ
	public String searchNotice(MngNoticeVO mnVO){
		List<MngNoticeDomain> mnDomain= new ArrayList<MngNoticeDomain>();
        int paramCurrentPage=mnVO.getCurrentPage();
		
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
		totalCount=mnDAO.selectNotiListCount(mnVO);
		
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
		mnVO.setStartNum(startNum);
		mnVO.setEndNum(endNum);
		
		mnDomain=mnDAO.selectNotice(mnVO);
		
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
		jsonObj.put("isEmpty", mnDomain.isEmpty());
		jsonObj.put("listSize", mnDomain.size());

		JSONArray jsonArr=new JSONArray();
		JSONObject jsonTemp=null;
		

		for(MngNoticeDomain tempDomain : mnDomain){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
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
	public MngNoticeDomain searchNoticeDetail(int notiNum) {
		MngNoticeDomain mn=new MngNoticeDomain();
		mn=mnDAO.selectNoticeDetail(notiNum);
		return mn;
	}
	
	//�������� �۾���
	public void addNotice(MngNoticeVO mnVO) {
		mnDAO.insertNotice(mnVO);
	}
	
	//�������� �� �����ϱ�
	public int editNotice(MngNoticeVO mnVO) {
		int editFlag=0;
		editFlag=mnDAO.updateNotice(mnVO);
		return editFlag;//1�� �����Ϸ� 0����������
	}
	
	//�������� �� ����
    public int removeNotice(int notiNum) {
    	int removeFlag=0;
    	removeFlag=mnDAO.deleteNotice(notiNum);
    	return removeFlag;//1�� �������� 0�� ��������
    }
    
  

}
