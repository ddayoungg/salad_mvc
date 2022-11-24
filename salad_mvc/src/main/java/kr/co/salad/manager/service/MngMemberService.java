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
	
	public String searchMemberTotalJson() {//전체 회원 수, 가입 수, 탈퇴 수
		
		MngMemberVO mmVO=new MngMemberVO();
		
		mmVO.setFiledName("total");
		//전체 회원 수
		int totalMember=mmDAO.selectMemberTotalCount(mmVO);
		//전체 가입 수
		mmVO.setFiledName("outFlag");
		mmVO.setKeyword("가입");
		int totalJoinMember=mmDAO.selectMemberTotalCount(mmVO);
		
		//전체 탈퇴 수
		mmVO.setFiledName("outFlag");
		mmVO.setKeyword("탈퇴");
		int totalOutMember=mmDAO.selectMemberTotalCount(mmVO);
		
		JSONObject jsonObj=new JSONObject();
		
		jsonObj.put("totalMember", totalMember);
		jsonObj.put("totalJoinMember", totalJoinMember);
		jsonObj.put("totalOutMember", totalOutMember);
		
		return  jsonObj.toJSONString();
	}//searchMemberTotalCount
	
	public String searchMemberListJson(MngMemberVO mmVO) {//회원 관리 리스트
		List<MngMemberDomain> list=null;
		
		int paramCurrentPage=mmVO.getCurrentPage();
		
		//페이징 시작
		int currentPage=1;//현재 페이지
		int totalCount=0;//전체 행 수
		int totalPage=0;//전체 페이지 수
		int pageScale=10;//한 페이지 보여줄 행 수
		int startNum=0;//페이지의 시작 지점
		//남상민 2022-11-23 페이징 수정 1 시작
		int endNum=0;//페이지의 끝 지점
		//남상민 2022-11-23 페이징 수정 1 끝
		
		try {
			currentPage=paramCurrentPage;
		}catch(NumberFormatException nfe) {//파라미터가 null이 나올 경우
			currentPage=1;
		}//end catch
		
		//전체 데이터 개수
		totalCount=mmDAO.selectMemberTotalCount(mmVO);
		
		//총 페이지 수
		totalPage = totalCount % pageScale == 0 ? totalCount/pageScale : (totalCount/pageScale) + 1;
		if(totalPage==0) {
			totalPage = 1;
		}//end if
							
		if(currentPage > totalPage) {
			currentPage = 1;
		}//end if
		
		//남상민 2022-11-23 페이징 수정 2 시작
		
		startNum = (currentPage) * pageScale-pageScale+1;//각 페이지의 시작 지점
		
		endNum = startNum+pageScale-1;
		
		//남상민 2022-11-23 페이징 수정 2 끝
		
		//VO set
		mmVO.setStartNum(startNum);
		mmVO.setEndNum(endNum);
		
		list=mmDAO.selectMemberList(mmVO);
		
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
		
		for(MngMemberDomain tempDomain : list){//예외가 발생했거나 조회결과가 없을 경우
			jsonTemp=new JSONObject();
			jsonTemp.put("id", tempDomain.getId());
			jsonTemp.put("name", tempDomain.getName());
			jsonTemp.put("joinDate", tempDomain.getJoinDate());
			
			tempDomain.setOutFlag(( "0".equals(tempDomain.getOutFlag()) ?"가입":"탈퇴"));
			
			jsonTemp.put("outFlag", tempDomain.getOutFlag());
			
			jsonArr.add(jsonTemp);
		}//end for
		
		jsonObj.put("list", jsonArr);
		
		return jsonObj.toJSONString();
	}//searchMemberListJson
	
	public String searchMemberDetailJson(String id) {//회원 상세정보
		
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
	
	public int editMemberOut(MngMemberVO mmVO) {//회원 탈퇴
		int upCnt=0;
		
		upCnt=mmDAO.updateMemberOut(mmVO);
		
		return upCnt;
	}//editMemberOut
	
}//class
