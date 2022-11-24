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
		//전체 회원 수
		int totalMyWish=wDAO.selectMyTotalCount(wVO);
		//전체 가입 수
		wVO.setTableName("review");
		int totalMyRev=wDAO.selectMyTotalCount(wVO);
		
		//전체 탈퇴 수
		wVO.setTableName("qa");
		int totalMyQna=wDAO.selectMyTotalCount(wVO);
		
		JSONObject jsonObj=new JSONObject();
		
		System.out.println(totalMyWish);
		
		jsonObj.put("totalMyWish", totalMyWish);
		jsonObj.put("totalMyRev", totalMyRev);
		jsonObj.put("totalMyQna", totalMyQna);
		
		return  jsonObj.toJSONString();
	}//searchMemberTotalCount
	
	public String searchWishListJson(WishVO wVO) {//마이페이지 찜 리스트
		List<WishDomain> list=null;
		
		int paramCurrentPage=wVO.getCurrentPage();
		
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
		
		wVO.setTableName("wishlist");//테이블 명 : 찜 리스트
		//전체 데이터 개수
		totalCount=wDAO.selectMyTotalCount(wVO);
		
		//총 페이지 수
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//end if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
							
		startNum = (currentPage - 1) * pageScale;//각 페이지의 시작 지점
		endNum=startNum+pageScale;
		
		System.out.println(startNum+"/"+endNum);
		
		//VO set
		wVO.setStartNum(startNum);
		wVO.setEndNum(endNum);
		
		list=wDAO.selectWishList(wVO);
		
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
		
		for(WishDomain tempDomain : list){//예외가 발생했거나 조회결과가 없을 경우
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
