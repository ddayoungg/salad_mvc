package kr.co.salad.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.salad.dao.handler.MyBatisHandler;
import kr.co.salad.user.vo.PrdDetailCartVO;
import kr.co.salad.user.vo.PrdDetailVO;
@Component
public class PrdDetailCartDAO {

	public int selectLastCartNum() {
		int cartNum=1;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		try {
		cartNum=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.selectLastCartNum");
		}catch (NullPointerException npe) {
			cartNum=0;
		}//end catch
		
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return cartNum;
	}//selectLastCartNum
	
	public boolean selectCartChk(PrdDetailCartVO pdcVO) {//장바구니 존재 확인
		boolean flag=false;
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//쿼리실행
		int cnt=ss.selectOne("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.selectCartChk", pdcVO);
		
		if(cnt==1) {//찜 목록에 등록되어 있을 경우
			flag=true;
		}//end if
		
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		return flag;
	}//selectCartChk
	
	public int insertCart(PrdDetailCartVO pdcVO){//상품상세보기에서 장바구니 추가
		int cnt=0;
		
		PrdDetailCartDAO pdcDAO=new PrdDetailCartDAO();
		
		pdcVO.setCartNum(pdcDAO.selectLastCartNum());//장바구니 마지막 번호 구하기
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
						
		//쿼리실행 insert("Mapper아이디", 값)
		cnt=ss.insert("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.insertCart", pdcVO);
						
		if(cnt == 1) {
			System.out.println(cnt+"건 추가");
			ss.commit();
		}else {
			System.out.println("데이터 추가 실패");
			ss.rollback();
		}//end else
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		
		return cnt;
	}//insertCart
	
	public int updateCartPrdCnt(PrdDetailCartVO pdcVO) {//장바구니 물품 수량 변경
		int cnt=0;
		//1. MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession session=mbh.getHandler();
		//2. 쿼리문 실행
		cnt=session.update("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.updateCartPrdCnt", pdcVO);
		if(cnt != 0) {
			session.commit();
			System.out.println("장바구니에서 해당 "+pdcVO.getPrdNum()+"번 물품의 수량이 변경되었습니다.");
		}else {
			System.out.println("장바구니에 해당 물품이 존재하지 않습니다.");
		}//end else
		
		//3. MyBatis Handler 끊기
		mbh.closeHandler(session);
		
		return cnt;
	}//updateCartPrdCnt
	
	public int insertCartWish(PrdDetailCartVO pdcVO){//찜 목록에서 장바구니 추가
		int totalCnt = 0;//총 삭제한 행 수
		int cnt=0;//한 쿼리에서 삭제된 건 수
		
		boolean transFlag=true;//트랜잭션 여부
		
		PrdDetailCartDAO pdcDAO=new PrdDetailCartDAO();
		
		int insertCartNum=pdcDAO.selectLastCartNum()+1;
		
		
		//MyBatis Handler 얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		if(pdcVO.getPrdNumArr()!=null) {
			for(int prdNum : pdcVO.getPrdNumArr()) {
				pdcVO.setPrdNum(prdNum);
					//쿼리실행 insert("Mapper아이디", 값)
					if(pdcDAO.selectCartChk(pdcVO)) {//장바구니 등록 여부
						//이미 장바구니에 등록되어 있을 경우
						cnt=ss.update("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.updateCartPrdCnt", pdcVO);
					}else {
						pdcVO.setCartNum(insertCartNum);//장바구니 생성 번호
						//장바구니에 등록되어 있지 않을 경우
						cnt=ss.insert("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.insertCart", pdcVO);
						insertCartNum++;
					}//end if
					
					cnt+=ss.delete("kr.co.salad.user.dao.mapper.PrdDetailCartMapper.deleteCartWish", pdcVO);
					if(cnt == 2) {
						totalCnt++;
						System.out.println("제품 "+pdcVO.getPrdNum()+"번 장바구니에 추가되었습니다.");
					}else {
						transFlag=false;
						totalCnt=0;
						System.out.println("제품 "+pdcVO.getPrdNum()+"번 장바구니에 추가되지 못했습니다.");
					}//end else
				}//end for
			}//end if
		if(transFlag) {
			System.out.println(totalCnt+"건의 데이터 추가 성공");
			ss.commit();
		}else {
			System.out.println("데이터 추가 실패");
			ss.rollback();
		}//end else
		//3. MyBatis Handler 종료
		mbh.closeHandler(ss);
		
		
		return totalCnt;
	}//insertCartWish
	
	
}//class
