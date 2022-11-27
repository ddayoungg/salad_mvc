package kr.co.salad.manager.service;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.salad.manager.dao.MngCancelDAO;
import kr.co.salad.manager.dao.MngDashboardDAO;
import kr.co.salad.manager.domain.MngCancelDomain;
import kr.co.salad.manager.vo.MngCancelVO;

@Component
public class MngCancelService {
	

	@Autowired(required = false)
	private MngCancelDAO mCancelDAO;
	
	//전체 취소 내역 얻기
	public List<MngCancelDomain> searchAllCancel(){
		List<MngCancelDomain> allCancelList = new ArrayList<MngCancelDomain>();
		
		allCancelList=mCancelDAO.selectAllCancel();
		
		return allCancelList;
	}//
	
	//취소 요청 건수, 취소 확정 건수
	public int searchTotalCancel(String totalCancel) {
		int cancelCnt=0;
		
		cancelCnt=mCancelDAO.selectTotalCancel(totalCancel);
		
		return cancelCnt;
	}//
	
	//메인 카테고리 얻기 ( 검색 안하기로 함 ) 
//	public List<MngCancelDomain> searchMainCate(){
//		List<MngCancelDomain> mainCateList = new ArrayList<MngCancelDomain>();
//		
//		mainCateList=mCancelDAO.selectMainCate();
//		
//		return mainCateList;
//	}//
	
	//서브 카테고리 얻기 ( 검색 안하기로 함 ) 
//	public List<MngCancelDomain> searchSubCate(MngCancelVO cancelVO){
//		List<MngCancelDomain> subCateList = new ArrayList<MngCancelDomain>();
//		
//		subCateList=mCancelDAO.selectSubCate(cancelVO);
//		
//		return subCateList;
//	}//
	
	//취소 요청, 확정 / 메인카테,서브카테로 검색한 내용 ( 검색 안하기로 함 ) 
//	public List<MngCancelDomain> searchCancelMember(MngCancelVO cancelVO){
//		List<MngCancelDomain> cancelList = new ArrayList<MngCancelDomain>();
//		
//		cancelList=mCancelDAO.selectCancelMember(cancelVO);
//		
//		return cancelList;
//	}//
	
	//취소 요청을 취소 확정으로 바꾸기 4 => 5
	public int editCancelStatic(int orderNum) {
		int chOrderStatus=0;
		
		chOrderStatus=mCancelDAO.updateCancelStatic(orderNum);
		
		return chOrderStatus;
	}//
	
	//검색 창에 NAME&날짜&주문번호 검색
	public List<MngCancelDomain> searchCancelList(MngCancelVO cancelVO){
		List<MngCancelDomain> searchList = new ArrayList<MngCancelDomain>();
		
		searchList=mCancelDAO.selectCancelList(cancelVO);
		
		return searchList;
	}//
	
	//취소 상세정보 얻기
	public MngCancelDomain searchOrderDetail(int orderNum) {
		MngCancelDomain cancelOrder = new MngCancelDomain();
		
		cancelOrder=mCancelDAO.selectOrderDetail(orderNum);
		
		return cancelOrder;
	}//
	
	//취소 전체 리스트,취소 전체 리스트 페이지 계산
		public String countCancelList(MngCancelVO cancelVO) {
			List<MngCancelDomain> mcDomain=new ArrayList<MngCancelDomain>();
			
			int paramCurrentPage=cancelVO.getCurrentPage();
			
			//페이징 시작
			int currentPage=1;//현재 페이지
			int totalCount=0;//전체 행 수
			int totalPage=0;//전체 페이지 수
			int pageScale=10;//한 페이지 보여줄 행 수
			int startNum=0;//페이지의 시작 지점
			cancelVO.getSearch();
			cancelVO.getSearchText();
			
			try {
				currentPage=paramCurrentPage;
			}catch(NumberFormatException nfe) {//파라미터가 null이 나올 경우
				currentPage=1;
			}//end catch
			System.out.println("대답 좀");
			
			//전체 데이터 개수
			totalCount=mCancelDAO.selectCancelListCount(cancelVO);
			
			//총 페이지 수
			totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
			if(totalPage==0) {
				totalPage = 1;
			}//end if
								
			if(currentPage > totalPage) {
				currentPage = 1;
			}//end if
								
			startNum = (currentPage - 1) * pageScale;//각 페이지의 시작 지점
			
			//VO set
			cancelVO.setStartNum(startNum);
			cancelVO.setPageScale(pageScale);
			
			//mcDomain=mCancelDAO.selectAllCancel();
			
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
			jsonObj.put("isEmpty", mcDomain.isEmpty());
			jsonObj.put("listSize", mcDomain.size());

			JSONArray jsonArr=new JSONArray();
			JSONObject jsonTemp=null;
			

			for(MngCancelDomain tempDomain : mcDomain){//예외가 발생했거나 조회결과가 없을 경우
				jsonTemp=new JSONObject();
				jsonTemp.put("orderNum", tempDomain.getOrderNum());
				jsonTemp.put("id", tempDomain.getId());
				jsonTemp.put("name", tempDomain.getName());
				jsonTemp.put("orderDate", tempDomain.getOrderDate());
				jsonTemp.put("orderTotalPrice", tempDomain.getOrderTotalPrice());
				jsonTemp.put("orderStatus", tempDomain.getOrderStatus());
				jsonTemp.put("searchText", tempDomain.getSearchText());
				jsonTemp.put("search", tempDomain.getSearch());
				
				jsonArr.add(jsonTemp);
			}//end for
			System.out.println("문제가 뭐냐"+mcDomain);
			
			jsonObj.put("list", jsonArr);
			
			return jsonObj.toJSONString();
		}//
	

	
	
	
}//class
