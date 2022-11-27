package kr.co.salad.user.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.user.dao.MyCancelDAO;
import kr.co.salad.user.domain.CcDeliveryDomain;
import kr.co.salad.user.domain.CcMemberDomain;
import kr.co.salad.user.domain.MyCancelDomain;
import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.vo.MyCancelVO;
@Component
public class MyCancelService {
	
	@Autowired(required = false)
	private MyCancelDAO mcDAO;
	
	public String searchMyOrderListJson(MyCancelVO mcVO) {//나의 취소 리스트
		List<MyCancelDomain> list=null;
		
		String[] orderStatusArr={"4", "5"};//취소 내역 리스트 조건
		
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("id", mcVO.getId());
		map.put("orderStatusArr", orderStatusArr);
		
		int paramCurrentPage=mcVO.getCurrentPage();
		
		//페이징 시작
		int currentPage=1;//현재 페이지
		int totalCount=0;//전체 행 수
		int totalPage=0;//전체 페이지 수
		int pageScale=10;//한 페이지 보여줄 행 수
		int startNum=0;//페이지의 시작 지점
		int endNum=0;//페이지의 끝 지점
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//파라미터가 null이 나올 경우
			currentPage=1;
		}//end catch
		
		//전체 데이터 개수
		totalCount=mcDAO.selectMyTotalCnt(map);
		
		//총 페이지 수
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//end if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
							
		startNum = (currentPage) * pageScale-pageScale+1;//각 페이지의 시작 지점
		
		endNum = startNum+pageScale-1;
		
		//map set
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		list=mcDAO.selectMyOrderList(map);
		
		//페이지 블럭
		int pageLength=5;//페이지 블록 길이 1~5페이지
						
		int currentBlock=currentPage % pageLength == 0 ? currentPage / pageLength : (currentPage / pageLength) +1;//현재 페이지가 어디 블럭에 속해있는지 알려줌.
		int startPage = (currentBlock - 1) * pageLength + 1;
		int endPage=startPage + pageLength - 1;
						
		//마지막 페이지 묶음에서 총 페이지 수를 넘어가면 끝 페이즈를 마지막 페이지 숫자로 지정
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
		
		for(MyCancelDomain tempDomain : list){
			jsonTemp=new JSONObject();
			jsonTemp.put("prdNum", tempDomain.getPrdNum());
			jsonTemp.put("orderDate", tempDomain.getOrderDate());
			jsonTemp.put("orderNum", tempDomain.getOrderNum());
			jsonTemp.put("thum", tempDomain.getThum());
			jsonTemp.put("prdName", tempDomain.getPrdName());
			jsonTemp.put("prdPrice", tempDomain.getPrdPrice());
			jsonTemp.put("prdDiscount", tempDomain.getPrdDiscount());
			jsonTemp.put("orderCnt", tempDomain.getOrderCnt());
			
			String orderStatus=("4".equals(tempDomain.getOrderStatus())?"취소요청":"취소확정");
			String revFlag=("0".equals(tempDomain.getRevFlag())?"리뷰미작성":"리뷰작성");
					
			jsonTemp.put("orderStatus", orderStatus);
			jsonTemp.put("revFlag", revFlag);
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchMyCancelListJson
	
	public List<MyCancelDomain> searchMyOrderDetailList(MyCancelVO mcVO) { //나의 주문 목록 리스트
		List<MyCancelDomain> list=null;
		
		list=mcDAO.selectMyOrderDetailList(mcVO);
		
		List<MyCancelDomain> tempList=new ArrayList<MyCancelDomain>();
		
		String orderStatus = "";
		for(MyCancelDomain tempDomain:list) {
	        if("0".equals(tempDomain.getOrderStatus())){
	           orderStatus = "주문 접수";
	        }else if("1".equals(tempDomain.getOrderStatus())){
	           orderStatus = "배송 준비 중";
	        }else if("2".equals(tempDomain.getOrderStatus())){
	           orderStatus = "배송 중";
	        }else if("3".equals(tempDomain.getOrderStatus())){
	           orderStatus = "배송 완료";
	        }else if("4".equals(tempDomain.getOrderStatus())){
	        	orderStatus = "취소 요청";
	        }else if("5".equals(tempDomain.getOrderStatus())){
	        	orderStatus = "취소 완료";
	        }else {
	        	orderStatus = "주문 접수";
	        }
	        tempDomain.setStatusName(orderStatus);
	        
	        tempList.add(tempDomain);
		}//end if
		
		return tempList;
	}//searchMyCcOrderList
	
	public MyCancelDomain searchMyCcOrderTotalPrice(List<MyCancelDomain> list) { //나의 주문 관련 총 합계
		MyCancelDomain mcDomain=new MyCancelDomain();
		
		
		int totalPrdPrice=0;//총 상품금액
		int totalPrdDiscount=0;//총 할인금액
		int orderTotalPrice=0;//합계
		
		double prdPrice=0;
		double prdDiscount=0;
		double orderCnt=0;
		
		
		for(MyCancelDomain tempDomain : list) {
			prdPrice=tempDomain.getPrdPrice();
			prdDiscount=tempDomain.getPrdDiscount();
			orderCnt=tempDomain.getOrderCnt();
			
			totalPrdPrice+=prdPrice*orderCnt;
			totalPrdDiscount+=(prdPrice*(prdDiscount/100))*orderCnt;
			orderTotalPrice+=(prdPrice-(prdPrice*(prdDiscount/100)))*orderCnt;
		}//end for
		
		
		
		orderTotalPrice=orderTotalPrice+3000;//배송비
		
		mcDomain.setTotalPrdPrice(totalPrdPrice);
		mcDomain.setTotalPrdDiscount(totalPrdDiscount);
		mcDomain.setOrderTotalPrice(orderTotalPrice);
		
		//취소요청'4'/확정 여부'5'
		System.out.println(list.get(0).getOrderStatus());
		mcDomain.setOrderStatus(list.get(0).getOrderStatus());
		
		return mcDomain;
	}//searchMyCcOrderTotalPrice
	
	public String searchCcExistAddrFlag(MyCancelVO mcVO) { //나의 배송지 상세 내역
		String existAddrFlag="0";
		
		existAddrFlag=mcDAO.selectCcExistAddrFlag(mcVO);
		
		return existAddrFlag;
	}//searchCcExistAddrFlag
	
	public CcMemberDomain searchMyInfoDetail(MyCancelVO mcVO) { //나의 회원 정보
		CcMemberDomain cmDomain=new CcMemberDomain();
		
		cmDomain=mcDAO.selectMyInfoDetail(mcVO);
		
		return cmDomain;
	}//searchMyInfoDetail
	
	public CcDeliveryDomain searchMyCcDeliDetail(MyCancelVO mcVO) { //나의 배송지 상세 내역
		CcDeliveryDomain cdDomain=new CcDeliveryDomain();
		
		cdDomain=mcDAO.selectMyCcDeliDetail(mcVO);
		
		return cdDomain;
	}//selectMyCcDeliDetail
	
}//class
