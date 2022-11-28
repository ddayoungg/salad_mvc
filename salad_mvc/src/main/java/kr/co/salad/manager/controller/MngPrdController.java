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
	public String mngPrdMain(HttpSession session, Model model) {//��ǰ ���� ���� ȭ��
		String url="manager/goods/mng_prd";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
		return url;
	}//mngPrdMain
	
	@ResponseBody
	@RequestMapping(value="/mng_prd_total_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchPrdTotalAjax() {
		//��ϵ� ��ü ��ǰ ��
		String jsonObj=mpService.searchPrdTotal();
		return jsonObj;
	}//searchPrdTotalAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_prd_main_cate_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchMainCateAjax() {
		//���� ī�װ�
		String jsonObj=mpService.searchMainCate();
		return jsonObj;
	}//searchMainCateAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_prd_sub_cate_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchSubCateAjax(int mainCateNum) {
		//���� ī�װ�
		String jsonObj=mpService.searchSubCate(mainCateNum);
		return jsonObj;
	}//searchSubCateAjax
	
	@ResponseBody
	@RequestMapping(value="/mng_prd_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchPrdListAjax(MngPrdVO mpVO) {
		
		//��ǰ���� ����Ʈ
		String jsonObj=mpService.searchPrdListJson(mpVO);//���� ������, �ʵ��, �˻���
		return jsonObj;
		
	}//searchPrdListAjax
	
	@RequestMapping(value="/mng_prd_detail.do", method=GET, produces="application/json; charset=UTF-8")
	public String mngPrdDetailForm(HttpSession session, int prdNum, Model model) {//��ǰ �� ȭ��
		String url="manager/goods/mng_prd_detail";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
		MngPrdDomain mpDomain=mpService.searchPrdDetail(prdNum);
		
		model.addAttribute("prdData", mpDomain);
		
		return url;
	}//mngPrdDetailForm
	
	@RequestMapping(value="/mng_prd_add.do", method= {POST, GET})
	public String mngPrdAddForm(HttpSession session, Model model) {
		String url="manager/goods/mng_prd_add";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
		return url;
	}//mngPrdAddForm
	
	@ResponseBody
	@RequestMapping(value="/add_save_prd_process.do", method=POST, produces="application/json; charset=UTF-8")
	public void addSavePrdProcess(HttpSession session, HttpServletRequest request) {
		
		MngPrdVO mpVO=new MngPrdVO();
		
		//2. FileUpload Component�� ����(cos.jar)
		File saveDir=new File("/home/ubuntu/salad_mvc/common/images/product");
		int maxSize=1024*1024*20;//byte * kb * mb * gb
		
		List<String> prdImgList=new ArrayList<String>();
		List<String> prdBodyImgList=new ArrayList<String>();
		try {
			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8", new DefaultFileRenamePolicy());
			
			//�߰� �̹��� set
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
			
			//3. Parameter�� �ޱ�(VO�� �־�� �Ѵٸ� VO�� �����Ͽ� ���� �ִ´�.)
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
		
		//�ۼ��� �ı� ���� ����
		mpService.addPrd(mpVO);
		
	}//addSavePrdProcess
	
	//��ǰ ���� ȭ��
	@RequestMapping(value="/mng_prd_edit.do", method= {POST, GET})
	public String mngPrdEditForm(HttpSession session, int prdNum, Model model) {
		String url="manager/goods/mng_prd_edit";
		
		String mngId=(String)session.getAttribute("mngId");//���� ��������
		if(mngId==null) {//�α����� �ȵǾ�������
			url="redirect:http://salad.sist.co.kr/mng_index.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("mngId", mngId);
		}//end else
		
		MngPrdDomain mpDomain=mpService.searchPrdDetail(prdNum);
		
		model.addAttribute("prdData", mpDomain);
		model.addAttribute("prdImgListSize", mpDomain.getPrdImgList().size());
		model.addAttribute("prdBodyImgListSize", mpDomain.getPrdBodyImgList().size());
		
		return url;
	}//mngPrdEditForm
	
	//��ǰ ���� ó��
	@ResponseBody
	@RequestMapping(value="/edit_change_prd_process.do", method=POST, produces="application/json; charset=UTF-8")
	public void editChangePrdProcess(HttpSession session, HttpServletRequest request) {
			
		MngPrdVO mpVO=new MngPrdVO();
			
		//2. FileUpload Component�� ����(cos.jar)
		File saveDir=new File("/home/ubuntu/salad_mvc/common/images/product");
		int maxSize=1024*1024*20;//byte * kb * mb * gb
			
		List<String> prdImgList=new ArrayList<String>();
		List<String> prdBodyImgList=new ArrayList<String>();
		try {
			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8", new DefaultFileRenamePolicy());
				
			//�߰� �̹��� set
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
				
			//3. Parameter�� �ޱ�(VO�� �־�� �Ѵٸ� VO�� �����Ͽ� ���� �ִ´�.)
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
			
		//�ۼ��� �ı� ���� ����
		mpService.editPrd(mpVO);
			
	}//editChangePrdProcess
	
}//class
