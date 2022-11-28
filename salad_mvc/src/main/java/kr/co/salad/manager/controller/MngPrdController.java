package kr.co.salad.manager.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.salad.manager.domain.MngPrdDomain;
import kr.co.salad.manager.service.MngMemberService;
import kr.co.salad.manager.service.MngPrdService;
import kr.co.salad.manager.vo.MngMemberVO;
import kr.co.salad.manager.vo.MngPrdVO;
import kr.co.salad.user.vo.PrdDetailRevVO;

@SessionAttributes("mngId")
@Controller
public class MngPrdController {
	
	@Autowired(required = false)
	private MngPrdService mpService;
	
	@RequestMapping(value="/mng_prd.do", method=GET)
	public String mngPrdMain(HttpSession session, Model model) {//상품 관리 메인 화면
		String url="manager/goods/mng_prd";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		return url;
	}//mngPrdMain
	
	@ResponseBody
	@RequestMapping(value="/mng_prd_total_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchPrdTotalAjax() {
		//등록된 전체 상품 수
		String jsonObj=mpService.searchPrdTotal();
		return jsonObj;
	}//searchPrdTotalAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_prd_main_cate_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchMainCateAjax() {
		//메인 카테고리
		String jsonObj=mpService.searchMainCate();
		return jsonObj;
	}//searchMainCateAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_prd_sub_cate_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchSubCateAjax(int mainCateNum) {
		//서브 카테고리
		String jsonObj=mpService.searchSubCate(mainCateNum);
		return jsonObj;
	}//searchSubCateAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_prd_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchPrdListAjax(MngPrdVO mpVO) {
		
		//상품관리 리스트
		String jsonObj=mpService.searchPrdListJson(mpVO);//현재 페이지, 필드명, 검색명
		return jsonObj;
		
	}//searchPrdListAjax
	
	@RequestMapping(value="/mng_prd_detail.do", method=GET, produces="application/json; charset=UTF-8")
	public String mngPrdDetailForm(HttpSession session, int prdNum, Model model) {//상품 상세 화면
		String url="manager/goods/mng_prd_detail";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		MngPrdDomain mpDomain=mpService.searchPrdDetail(prdNum);
		
		model.addAttribute("prdData", mpDomain);
		
		return url;
	}//mngPrdDetailForm
	
	@RequestMapping(value="/mng_prd_add.do", method= {POST, GET})
	public String mngPrdAddForm(HttpSession session, Model model) {
		String url="manager/goods/mng_prd_add";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		return url;
	}//mngPrdAddForm
	
	@ResponseBody
	@RequestMapping(value="/add_save_prd_process.do", method=POST, produces="application/json; charset=UTF-8")
	public void addSavePrdProcess(HttpSession session, HttpServletRequest request) {
		
		MngPrdVO mpVO=new MngPrdVO();
		
		//2. FileUpload Component를 생성(cos.jar)
		File saveDir=new File("/home/ubuntu/salad_mvc/common/images/product");
		int maxSize=1024*1024*20;//byte * kb * mb * gb
		
		List<String> prdImgList=new ArrayList<String>();
		List<String> prdBodyImgList=new ArrayList<String>();
		try {
			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8", new DefaultFileRenamePolicy());
			
			//추가 이미지 set
			String[] prdImgArr=mr.getParameterValues("prdImgArr");
			String[] prdBodyImgArr=mr.getParameterValues("prdBodyImgArr");
			
			if (prdImgArr!=null && !("".equals(prdImgArr))) {
				for(String prdImg : prdImgArr) {
					if(prdImg != null && !"".equals(prdImg)) {
						prdImgList.add(prdImg);
					}//end if
				}//end for
			}//end if
			
			if (prdBodyImgArr !=null && !("".equals(prdBodyImgArr))) {
				for(String prdBodyImg : prdBodyImgArr) {
					if(prdBodyImg != null && !"".equals(prdBodyImg)) {
						prdBodyImgList.add(prdBodyImg);
					}//end if
				}//end for
			}//end if
			
			//3. Parameter를 받기(VO에 넣어야 한다면 VO를 생성하여 값을 넣는다.)
			mpVO.setSubCateNum(Integer.parseInt(mr.getParameter("subCateNum")));
			mpVO.setPrdName(mr.getParameter("prdName"));
			mpVO.setThum(mr.getParameter("thum"));
			mpVO.setPrdBodyThum(mr.getParameter("prdBodyThum"));
			mpVO.setPrdDiscount(Integer.parseInt(mr.getParameter("prdDiscount")));
			mpVO.setPrdPrice(Integer.parseInt(mr.getParameter("prdPrice")));
			
			if(!prdImgList.isEmpty()) {
				mpVO.setPrdImgList(prdImgList);
			}//end if
			if(!prdBodyImgList.isEmpty()) {
				mpVO.setPrdBodyImgList(prdBodyImgList);
			}//end if
			
		} catch (IOException e) {
			e.printStackTrace();
		}//catch
		
		//작성한 후기 내용 저장
		mpService.addPrd(mpVO);
		
	}//addSavePrdProcess
	
	//상품 수정 화면
	@RequestMapping(value="/mng_prd_edit.do", method= {POST, GET})
	public String mngPrdEditForm(HttpSession session, int prdNum, Model model) {
		String url="manager/goods/mng_prd_edit";
		
		String mngId=(String)session.getAttribute("mngId");//세션 가져오기
		if(mngId==null) {//로그인이 안되어있으면
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("mngId", mngId);
		}//end else
		
		MngPrdDomain mpDomain=mpService.searchPrdDetail(prdNum);
		
		model.addAttribute("prdData", mpDomain);
		model.addAttribute("prdImgListSize", mpDomain.getPrdImgList().size());
		model.addAttribute("prdBodyImgListSize", mpDomain.getPrdBodyImgList().size());
		
		return url;
	}//mngPrdEditForm
	
	//상품 수정 처리
	@ResponseBody
	@RequestMapping(value="/edit_change_prd_process.do", method=POST, produces="application/json; charset=UTF-8")
	public void editChangePrdProcess(HttpSession session, HttpServletRequest request) {
			
		MngPrdVO mpVO=new MngPrdVO();
			
		//2. FileUpload Component를 생성(cos.jar)
		File saveDir=new File("/home/ubuntu/salad_mvc/common/images/product");
		int maxSize=1024*1024*20;//byte * kb * mb * gb
			
		List<String> prdImgList=new ArrayList<String>();
		List<String> prdBodyImgList=new ArrayList<String>();
		try {
			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8", new DefaultFileRenamePolicy());
				
			//추가 이미지 set
			String[] prdImgArr=mr.getParameterValues("prdImgArr");
			String[] prdBodyImgArr=mr.getParameterValues("prdBodyImgArr");
				
				
			if (prdImgArr!=null && !("".equals(prdImgArr))) {
				for(String prdImg : prdImgArr) {
					if(prdImg != null && !"".equals(prdImg)) {
						prdImgList.add(prdImg);
					}//end if
				}//end for
			}//end if
				
			if (prdBodyImgArr !=null && !("".equals(prdBodyImgArr))) {
				for(String prdBodyImg : prdBodyImgArr) {
					if(prdBodyImg != null && !"".equals(prdBodyImg)) {
						prdBodyImgList.add(prdBodyImg);
					}//end if
				}//end for
			}//end if
				
			//3. Parameter를 받기(VO에 넣어야 한다면 VO를 생성하여 값을 넣는다.)
			mpVO.setSubCateNum(Integer.parseInt(mr.getParameter("subCateNum")));
			mpVO.setPrdNum(Integer.parseInt(mr.getParameter("prdNum")));
			mpVO.setPrdName(mr.getParameter("prdName"));
			mpVO.setThum(mr.getParameter("thum"));
			mpVO.setPrdBodyThum(mr.getParameter("prdBodyThum"));
			mpVO.setPrdDiscount(Integer.parseInt(mr.getParameter("prdDiscount")));
			mpVO.setPrdPrice(Integer.parseInt(mr.getParameter("prdPrice")));
				
			if(!prdImgList.isEmpty()) {
				mpVO.setPrdImgList(prdImgList);
			}//end if
			if(!prdBodyImgList.isEmpty()) {
				mpVO.setPrdBodyImgList(prdBodyImgList);
			}//end if
				
		} catch (IOException e) {
			e.printStackTrace();
		}//catch
			
		//작성한 후기 내용 저장
		mpService.editPrd(mpVO);
			
	}//editChangePrdProcess
	
}//class
