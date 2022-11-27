package kr.co.salad.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.salad.user.domain.KategoriePrdDomain;
import kr.co.salad.user.domain.ReviewDomain;
import kr.co.salad.user.service.KategoriePrdService;
import kr.co.salad.user.service.ReviewService;
import kr.co.salad.user.vo.ReviewVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
@Controller
public class ReviewController {
	
	@Autowired(required = false)
	private ReviewService revService;
	
	@Autowired(required = false)
	private KategoriePrdService kpService;
	
	//�����ı� ��ü����Ʈ
	@RequestMapping(value = "goodsreview_list.do",method =GET )
	public String ReviewRequest(ReviewVO revVO, Model model) {
		
		//��ü ī�װ�
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		return "user/board/goodsreview_list";
	}
	
	
	@RequestMapping(value="goodsreview_list.ajax.do", method=GET, produces="application/json; charset=UTF-8")
	@ResponseBody
	public String searchRevListAjax(ReviewVO revVO) {
		//�����ı� ��ü����Ʈ
		String jsonObj=revService.searchRevList(revVO);
		System.out.println(jsonObj);
		return jsonObj;
	}//searchRevListAjax
	
	
	//�ı� �󼼺���
	@RequestMapping(value = "goodsreview_view.do",method =GET )
	public String ReviewDetail(int revNum, Model model) {
		ReviewDomain revDomain=revService.searchRevDetail(revNum);
		
		revService.updateRevCount(revNum);
		
		//���� ���
		double disCountPro=revDomain.getPrdDiscount()*0.01;
		double disCount= revDomain.getPrdPrice()*disCountPro;
		double price=Math.floor((revDomain.getPrdPrice()-disCount)/100)*100;
		
		//���� �̹���
		List<String> revImgList=revService.searchRevImgList(revNum);
		
		model.addAttribute("prdNum", revDomain.getPrdNum());
		model.addAttribute("revNum", revDomain.getRevNum());
		model.addAttribute("revTitle", revDomain.getRevTitle());
		model.addAttribute("revName", revDomain.getName());
		model.addAttribute("revWriteDate", revDomain.getRevWriteDate());
		model.addAttribute("revHits", revDomain.getRevHits());
		model.addAttribute("thum",revDomain.getThum());
		model.addAttribute("prdName", revDomain.getPrdName());
		model.addAttribute("price", price);
		model.addAttribute("revImgList", revImgList);
		model.addAttribute("revCont", revDomain.getRevCont());
		
		//��ü ī�װ�
		List<KategoriePrdDomain> mainCateList=kpService.mainCateList();
		model.addAttribute("mainCateList", mainCateList);//���� �޴�
		return "user/board/goodsreview_view";
	}
}
