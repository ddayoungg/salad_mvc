package kr.co.salad.user.controller;

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

import kr.co.salad.user.domain.PrdDetailDomain;
import kr.co.salad.user.service.PrdDetailService;
import kr.co.salad.user.service.PrdDetailRevService;
import kr.co.salad.user.vo.PrdDetailRevVO;

/**
 * ��ǰ�󼼺���
 * @author user
 *
 */
@SessionAttributes({"userId", "userName"})
@Controller
public class PrdDetailRevController {
	
	@Autowired(required = false)
	private PrdDetailRevService pdrService;
	
	@Autowired(required = false)
	private PrdDetailService pdService;
	
	@ResponseBody
	@RequestMapping(value="/goods/rev_list_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String searchRevListAjax(PrdDetailRevVO pdrVO) {
		
		//�ı� ����Ʈ
		String jsonObj=pdrService.searchRevListJson(pdrVO);//��ǰ ��ȣ, ���� ������, �ֽ�/��ŷ��, ���俩��
		return jsonObj;
		
	}//searchRevListAjax
	
	@ResponseBody
	@RequestMapping(value="/goods/rev_popup_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String revPopupAjax(int revNum) {
		
		//��ȸ�� ����
		int upCnt=pdrService.editRevHits(revNum);
		
		//�ı� �˾�
		String jsonObj=pdrService.searchRevDetailJson(revNum);
		return jsonObj;
	}//searchRevListAjax
		
	/**
	 * �ı� �ۼ� �˾� â
	 * @param prdNum
	 * @param prdModel
	 * @return
	 */
	@RequestMapping(value="/board/add_rev_write.do", method= {GET, POST})
	public String addRevForm(HttpSession session, PrdDetailRevVO pdrVO, Model model) {
		String url="user/board/popup_goods_board_write";
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		if(userId==null) {//�α����� �ȵǾ�������
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "�α����� ���ּ���.");
		} else {//�α����� �Ǿ�������
			model.addAttribute("userId", userId);
		}//end else
		
		pdrVO.setId(userId);
		
		PrdDetailDomain pdDomain=pdService.searchPrdDetail(pdrVO.getPrdNum());//�ı� �ۼ��� ��ǰ ����
		
		int orderNum=0;
		orderNum=pdrService.searchRevWriteOrderNum(pdrVO);
		pdDomain.setWriteFlag('0');//��ǰ ���� ���� ���Ͽ� �ı� �ۼ� ���� ����.
		if(orderNum!=0) {
			pdDomain.setWriteFlag('1');//��ǰ �����Ͽ� �ı� �ۼ� ���� ����.
		}//end if
		
		model.addAttribute("prdData", pdDomain);
		
		return url;
	}//addRevForm
	
	@ResponseBody
	@RequestMapping(value="/board/add_rev_write_process.do", method=POST, produces="application/json; charset=UTF-8")
	public void addRevWriteProcess(HttpSession session, HttpServletRequest request, Model model) {
		
		PrdDetailRevVO pdrVO=new PrdDetailRevVO();
		
		String userId=(String)session.getAttribute("userId");//���� ��������
		
		pdrVO.setId(userId);
		
		//2. FileUpload Component�� ����(cos.jar)
		File saveDir=new File("C:/Users/user/git/salad_mvc/salad_mvc/src/main/webapp/common/images/review");
		int maxSize=1024*1024*20;//byte * kb * mb * gb
		
		List<String> revImgList=new ArrayList<String>();
		try {
			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8", new DefaultFileRenamePolicy());
			
			//���ε��� �̹����� List�� ����
			Enumeration<String> fileNames = mr.getFileNames();
			
			String fileName=null;
			String imgName=null;
			
			while(fileNames.hasMoreElements()) {
				fileName=(String)fileNames.nextElement();
				imgName=mr.getFilesystemName(fileName);
				if(imgName!=null) {
					revImgList.add(imgName);
				}//end if
			}//end while
			
			//3. Parameter�� �ޱ�(VO�� �־�� �Ѵٸ� VO�� �����Ͽ� ���� �ִ´�.)
			pdrVO.setPrdNum(Integer.parseInt(mr.getParameter("prdNum")));
			pdrVO.setRevTitle(mr.getParameter("revTitle"));
			pdrVO.setRevCont(mr.getParameter("revCont"));
			if(!revImgList.isEmpty()) {
				pdrVO.setRevImgList(revImgList);
			}//end if
			
		} catch (IOException e) {
			e.printStackTrace();
		}//catch
		
		//�ֱٿ� �ֹ��� �ֹ���ȣ set
		int orderNum=0;
		orderNum=pdrService.searchRevWriteOrderNum(pdrVO);
		pdrVO.setOrderNum(orderNum);
		
		//�ۼ��� �ı� ���� ����
		pdrService.addRevWrite(pdrVO);
		
	}//addRevWriteProcess
	
}//class
