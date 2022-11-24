package kr.co.salad.user.service;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.PrdDetailDAO;
import kr.co.salad.user.dao.WishDAO;
import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.domain.WishDomain;
import kr.co.salad.user.vo.WishVO;
@Component
public class WishService {
	
	@Autowired(required = false)
	private WishDAO wDAO;
	
	@Autowired(required = false)
	private PrdDetailDAO pdDAO;
	
public String searchMyTotalJson(WishVO wVO) {
		
		wVO.setTableName("wishlist");
		//��ü ȸ�� ��
		int totalMyWish=wDAO.selectMyTotalCount(wVO);
		//��ü ���� ��
		wVO.setTableName("review");
		int totalMyRev=wDAO.selectMyTotalCount(wVO);
		
		//��ü Ż�� ��
		wVO.setTableName("qa");
		int totalMyQna=wDAO.selectMyTotalCount(wVO);
		
		JSONObject jsonObj=new JSONObject();
		
		System.out.println(totalMyWish);
		
		jsonObj.put("totalMyWish", totalMyWish);
		jsonObj.put("totalMyRev", totalMyRev);
		jsonObj.put("totalMyQna", totalMyQna);
		
		return  jsonObj.toJSONString();
	}//searchMemberTotalCount
	
	public String searchWishListJson(WishVO wVO) {//���������� �� ����Ʈ
		List<WishDomain> list=null;
		
		int paramCurrentPage=wVO.getCurrentPage();
		
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
		
		wVO.setTableName("wishlist");//���̺� �� : �� ����Ʈ
		//��ü ������ ����
		totalCount=wDAO.selectMyTotalCount(wVO);
		
		//�� ������ ��
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//end if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
							
		startNum = (currentPage - 1) * pageScale;//�� �������� ���� ����
		endNum=startNum+pageScale;
		
		System.out.println(startNum+"/"+endNum);
		
		//VO set
		wVO.setStartNum(startNum);
		wVO.setEndNum(endNum);
		
		list=wDAO.selectWishList(wVO);
		
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
		
		
		List<String> revImgList=null;
		PrdDetailDomain pDomain=new PrdDetailDomain();
		
		for(WishDomain tempDomain : list){//���ܰ� �߻��߰ų� ��ȸ����� ���� ���
			jsonTemp=new JSONObject();
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			
			pDomain=pdDAO.selectPrdDetail(tempDomain.getPrdNum());
			
			jsonTemp.put("thum", pDomain.getThum());
			jsonTemp.put("prdName", pDomain.getPrdName());
			jsonTemp.put("prdPrice", pDomain.getPrdPrice());
			jsonTemp.put("prdDiscount", pDomain.getPrdDiscount());
			
			jsonTemp.put("wishRegistDate", tempDomain.getWishRegistDate());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchMemberListJson
	
	public String wishJson(WishVO wVO) {
		JSONObject jsonObj=new JSONObject();
		
		boolean wishFlag=wDAO.selectWishFlag(wVO);
		
		jsonObj.put("wishFlag", wishFlag);
		
		return jsonObj.toJSONString();
	}//wishJson
	
	public void addWish(WishVO wVO) {
		
		wDAO.insertWish(wVO);
		
	}//insertWish
	
	public String removeWish(WishVO wVO) {
		
		JSONObject jsonObj=new JSONObject();
		
		int delCnt=wDAO.deleteWish(wVO);
		
		jsonObj.put("delCnt", delCnt);
		
		return jsonObj.toJSONString();
	}//removeWish
	
}//class
