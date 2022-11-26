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
 * 상품상세보기
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
		
		//후기 리스트
		String jsonObj=pdrService.searchRevListJson(pdrVO);//제품 번호, 현재 페이지, 최신/랭킹순, 포토여부
		return jsonObj;
		
	}//searchRevListAjax
	
	@ResponseBody
	@RequestMapping(value="/goods/rev_popup_ajax.do", method=GET, produces="application/json; charset=UTF-8")
	public String revPopupAjax(int revNum) {
		
		//조회수 증가
		int upCnt=pdrService.editRevHits(revNum);
		
		//후기 팝업
		String jsonObj=pdrService.searchRevDetailJson(revNum);
		return jsonObj;
	}//searchRevListAjax
		
	/**
	 * 후기 작성 팝업 창
	 * @param prdNum
	 * @param prdModel
	 * @return
	 */
	@RequestMapping(value="/board/add_rev_write.do", method= {GET, POST})
	public String addRevForm(HttpSession session, PrdDetailRevVO pdrVO, Model model) {
		String url="user/board/popup_goods_board_write";
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		if(userId==null) {//로그인이 안되어있으면
			url="redirect:http://localhost/salad_mvc/login.do";
			model.addAttribute("eMsg", "로그인을 해주세요.");
		} else {//로그인이 되어있으면
			model.addAttribute("userId", userId);
		}//end else
		
		pdrVO.setId(userId);
		
		PrdDetailDomain pdDomain=pdService.searchPrdDetail(pdrVO.getPrdNum());//후기 작성할 제품 정보
		
		int orderNum=0;
		orderNum=pdrService.searchRevWriteOrderNum(pdrVO);
		pdDomain.setWriteFlag('0');//제품 구입 하지 안하여 후기 작성 권한 없음.
		if(orderNum!=0) {
			pdDomain.setWriteFlag('1');//제품 구입하여 후기 작성 권한 있음.
		}//end if
		
		model.addAttribute("prdData", pdDomain);
		
		return url;
	}//addRevForm
	
	@ResponseBody
	@RequestMapping(value="/board/add_rev_write_process.do", method=POST, produces="application/json; charset=UTF-8")
	public void addRevWriteProcess(HttpSession session, HttpServletRequest request, Model model) {
		
		PrdDetailRevVO pdrVO=new PrdDetailRevVO();
		
		String userId=(String)session.getAttribute("userId");//세션 가져오기
		
		pdrVO.setId(userId);
		
		//2. FileUpload Component를 생성(cos.jar)
		File saveDir=new File("C:/Users/user/git/salad_mvc/salad_mvc/src/main/webapp/common/images/review");
		int maxSize=1024*1024*20;//byte * kb * mb * gb
		
		List<String> revImgList=new ArrayList<String>();
		try {
			MultipartRequest mr=new MultipartRequest(request, saveDir.getAbsolutePath(), maxSize, "UTF-8", new DefaultFileRenamePolicy());
			
			//업로드한 이미지를 List에 저장
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
			
			//3. Parameter를 받기(VO에 넣어야 한다면 VO를 생성하여 값을 넣는다.)
			pdrVO.setPrdNum(Integer.parseInt(mr.getParameter("prdNum")));
			pdrVO.setRevTitle(mr.getParameter("revTitle"));
			pdrVO.setRevCont(mr.getParameter("revCont"));
			if(!revImgList.isEmpty()) {
				pdrVO.setRevImgList(revImgList);
			}//end if
			
		} catch (IOException e) {
			e.printStackTrace();
		}//catch
		
		//최근에 주문한 주문번호 set
		int orderNum=0;
		orderNum=pdrService.searchRevWriteOrderNum(pdrVO);
		pdrVO.setOrderNum(orderNum);
		
		//작성한 후기 내용 저장
		pdrService.addRevWrite(pdrVO);
		
	}//addRevWriteProcess
	
}//class
