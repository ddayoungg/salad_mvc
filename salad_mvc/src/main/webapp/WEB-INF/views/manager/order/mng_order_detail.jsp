<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" info=" "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Dashboard - SB Admin</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="./resources/mng_css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<!-- jQuery google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		
<!-- 소현 -->
<script type="text/javascript">
	$(function () {
		setPrice();
	})//ready
	
	function setPrice() {
		var totalPrice = 0;
		var totalDiscount = 0;
		var totalPay = 0;
		
		$(".orderTr").each(function (index, element) {
      			var prdPrice = $(element).find(".prdPriceInput").val();//상품 가격
      			var orderCnt = $(element).find(".orderCntInput").val();//상품 수
      			var prdDiscount = $(element).find(".prdDiscountInput").val();//할인률
      			
      			totalPrice += prdPrice * orderCnt;
      			totalDiscount += prdPrice * prdDiscount * 0.01 ;
		});//orderTr
		totalPay = totalPrice-totalDiscount;
     		
		$(".totalPrice").text(totalPrice.toLocaleString());
		$(".totalDiscount").text(totalDiscount.toLocaleString());
		$(".totalPay").text(totalPay.toLocaleString());
      		
	}//setPrice
	
	function order_open_detail_popup(orderNum){
		
		if(!loginChk()){
			return;
		}//end if
		
		var leftVal=(document.body.offsetWidth / 2) - (100 / 2);
		var topVal=(window.screen.height / 2) - (100 / 2);
		
		window.open("http://salad.sist.co.kr/my_order_detail.do?orderNum="+orderNum, "주문내역 상세보기", "width=800, height=750, left="+leftVal+", top="+topVal+"");
	}//gd_open_write_popup
	
      </script>

</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="mng_dashboard.do"><img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png" height="50px"></a>
        <div class="ms-auto" style="color:white;">3조&nbsp;관리자님,어서오세요.&nbsp;&nbsp;</div>		
        <!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<!-- <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li> -->
					<li><a class="dropdown-item" href="mng_index.do">Logout</a></li>
				</ul></li>
		</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
                            <div class="sb-sidenav-menu-heading">메인</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_dashboard.do">
                                -대시보드
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div style="padding:28px 16px 28px 16px;"><a class="sb-sidenav-menu-heading heading-link" 
                            style="text-decoration-line:none; font-size:16px; padding:0;" 
                            href="mng_member.do">회원 관리</a></div>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">상품 관리</div>
                            <a class="nav-link" href="mng_prd.do">
                                -상품 등록
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="mng_rev.do">
                                -상품 후기
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">주문 관리</div>
                            <a class="nav-link" href="mng_order_main.do">
                                -주문 관리
                            </a>
                            <a class="nav-link" style="padding-top:0;"href="mng_cancel.do">
                                -취소 관리
                            </a>
                            <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="mng_deli.do">
                                -배송 관리
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">게시판 관리</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_notice.do">
                                -공지사항
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">문의 관리</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_qna.do">
                                -상품문의
                            </a>
                        </div>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<div
						style="display: flex; justify-content: space-between; flex-direction: row; padding: 20px 0 30px 0;">
						<div>
							<h1 id="clock" class="mt-4"
								style="font-size: 20px; color: rgb(94, 94, 94); font-weight: bold;">clock</h1>
							<div
								style="font-size: 24px; color: rgb(51, 51, 51); font-weight: bold;">
								환영합니다! 3조 관리자님.</div>
						</div>
						<div>
							<img src="./resources/mng_images/socialMedia.png" width="130px">
						</div>
						<div style="width: 319px;"></div>
					</div>
				</div>
				<div class="row" style="--bs-gutter-x:0;">
                     			<!-- 내역 -->
                      		<div style="width:100%; display:flex; justify-content:center;
                      		 font-size:16px; font-weight:bold; padding:10px 0 20px 0; ">
                        		<div style="width:150px; margin:0 100px 0 0;">
                        		오늘_내역
                        		</div>
                        		<div style="width:150px;">
                        		이번달_내역
                        		</div>
                      		</div>
                      		<!-- 내역 끝 -->
                      		<!-- 건수 -->
                       		 	<div style="width:100%; position:relative; display:flex; justify-content:center; align-items:center; padding:0 0 60px 0;">
		                        	<div style="margin:0 100px 0 0;">
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px;
		                        	border-radius:35px; ">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px; ">
				                        	주문건수
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("orderDayT") %></span>건
				                        	</div>
			                        	</div>
		                        	</div>
		                        	</div>
		                        	
		                        	<div style="background:rgb(186,212,206); width:150px; height:155px;
		                        	border-radius:35px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	주문건수
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;"><%= request.getAttribute("orderDayM") %></span>건
				                        	</div>
			                        	</div>
		                        	</div>
                       		 </div>
                       		 <!-- 건수 끝 --> 
                    </div>
				<div class="row" style="margin: 0 50px 0 50px;">
					<div
						style="font-size: 20px; font-weight: bold; padding: 0 0 10px 0;">주문서
						상세 정보</div>
					<table>
						<thead>
							<tr align="center" height="30px"
								style="border-top: 1px solid #777777; border-bottom: 1px solid #777777; font-size: 16px; font-weight: bold;">
								<th>날짜/주문번호</th>
								<th>상품명</th>
								<th>수량</th>
								<th>상품 금액</th>
							</tr>
						</thead>
						<tbody align="center">
							<tr>
								<td style="font-size: 16px; height: 150px;" rowspan="${ orderPrdList.size()+1 }"><c:out value="${ memberInfo.orderDate }" /><br>
									<div
										style="text-decoration: underline; padding: 15px 0 0 0; color: rgb(26, 188, 165);">
										<strong><c:out value="${ memberInfo.orderNum }" /></strong>
									</div>
									<br> <span
									style="color: rgb(22, 160, 133); font-weight: bold;">주문
										접수</span></td>
								<td colspan="4"></td>
							</tr>
							<c:forEach items="${ orderPrdList }" var="orderPrd">
								<tr class="orderTr" height="150px" style="border-bottom: 1px solid #777777;">
									<td style="font-size: 16px;">
										<img alt="img" src="http://salad.sist.co.kr/common/images/product/${ orderPrd.thum }" width="120px">
										<span><c:out value="${ orderPrd.prdName }" /></span>
									</td>
									<td style="font-size: 16px;">
										<c:out value="${ orderPrd.orderCnt }" />개</td>
									<td style="font-size: 20px; color: rgb(192, 57, 43); font-weight: bold;">
										<fmt:formatNumber value="${ orderPrd.orderPrice }" pattern="#,###" />원 
										<input type="hidden" value="${ orderPrd.prdPrice }" class="prdPriceInput" />
										<input type="hidden" value="${ orderPrd.orderCnt }" class="orderCntInput" />
										<input type="hidden" value="${ orderPrd.prdDiscount }" class="prdDiscountInput" />
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 금액 관련 -->
					<table>
						<tr align="center" height="80px">
							<td rowspan="2"></td>
							<td width="300px" valign="bottom"
								style="font-size: 16px; font-weight: bold;">총 상품금액</td>
							<td rowspan="2" width="50px"><img alt="img"
								src="./resources/mng_images/arrow-green.png" height="25px"></td>
							<td width="300px" valign="bottom"
								style="font-size: 16px; font-weight: bold;">총 할인금액</td>
							<td rowspan="2" width="50px"><img alt="img"
								src="./resources/mng_images/arrow-gray.png" height="25px"></td>
							<td width="300px" valign="bottom"
								style="font-size: 16px; font-weight: bold;">배송비</td>
							<td rowspan="2" width="50px"><img alt="img"
								src="./resources/mng_images/arrow-gray.png" height="25px"></td>
							<td width="300px" valign="bottom"
								style="font-size: 16px; font-weight: bold;">합계</td>
							<td rowspan="2"></td>
						</tr>
						<tr align="center" valign="top" height="80px"
							style="border-bottom: 1px solid #777777;">
							<td style="font-size: 24px; font-weight: bold;"><span
								class="totalPrice"></span>원</td>
							<td style="font-size: 24px; font-weight: bold;"><span
								class="totalDiscount"></span>원</td>
							<td style="font-size: 24px; font-weight: bold;">0원</td>
							<td style="font-size: 24px; font-weight: bold;"><span
								class="totalPay"></span>원</td>
						</tr>
					</table>
					<!-- 주문자 정보  -->
					<div
						style="font-size: 20px; font-weight: bold; padding: 40px 0 10px 0;">주문자
						정보</div>
					<table>
						<tr></tr>
						<tr align="left" height="50px"
							style="border-top: 1px solid #777777;">
							<td width="220px">주문자</td>
							<td><c:out value="${ memberInfo.name }" /></td>
						</tr>
						<tr align="left" height="50px">
							<td>휴대폰 번호</td>
							<td><c:out value="${ memberInfo.phone }" /></td>
						</tr>
						<tr align="left" height="50px"
							style="border-bottom: 1px solid #777777;">
							<td>이메일</td>
							<td><c:out value="${ memberInfo.email }" /></td>
						</tr>
						<tr></tr>
					</table>
					<!-- 배송 정보  -->
					<div
						style="font-size: 20px; font-weight: bold; padding: 40px 0 10px 0;">배송
						정보</div>
					<table>
						<c:choose>
							<c:when test="${empty deliInfo}">
								<tr align="left" height="50px"
									style="border-top: 1px solid #777777;">
									<td width="220px">배송지</td>
									<td>기본 배송지</td>
								</tr>
								<tr align="left">
									<td rowspan="2" height="70px" style="vertical-align: top;">주소</td>
									<td height="35px" style="vertical-align: top;">(<c:out
											value="${ memberInfo.zipcode }" />)
									</td>
								</tr>
								<tr align="left">
									<td height="35px" style="vertical-align: top;"><c:out
											value="${ memberInfo.addr } ${ memberInfo.deAddr }" /></td>
								</tr>
								<tr align="left">
									<td rowspan="2" height="70px" style="vertical-align: top;">받으실
										분</td>
									<td height="35px" style="vertical-align: top;"><c:out
											value="${ memberInfo.name }" /></td>
								</tr>
								<tr align="left">
									<td height="35px" style="vertical-align: top;"><c:out
											value="${ memberInfo.phone }" /></td>
								</tr>
								<tr align="left" height="50px"
									style="border-bottom: 1px solid #777777;">
									<td>배송 요청사항</td>
									<td><c:out value="${ memberInfo.deliReq }" /></td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr align="left" height="50px"
									style="border-top: 1px solid #777777;">
									<td width="220px">배송지</td>
									<td>새로운 배송지</td>
								</tr>
								<tr align="left">
									<td rowspan="2" height="70px" style="vertical-align: top;">주소</td>
									<td height="35px" style="vertical-align: top;">(<c:out
											value="${ deliInfo.deliZipcode }" />)
									</td>
								</tr>
								<tr align="left">
									<td height="35px" style="vertical-align: top;"><c:out
											value="${ deliInfo.deliAddr } ${ deliInfo.deliDetailAddr }" /></td>
								</tr>
								<tr align="left">
									<td rowspan="2" height="70px" style="vertical-align: top;">받으실
										분</td>
									<td height="35px" style="vertical-align: top;"><c:out
											value="${ deliInfo.receiver }" /></td>
								</tr>
								<tr align="left">
									<td height="35px" style="vertical-align: top;"><c:out
											value="${ deliInfo.deliPhone }" /></td>
								</tr>
								<tr align="left" height="50px"
									style="border-bottom: 1px solid #777777;">
									<td>배송 요청사항</td>
									<td><c:out value="${ memberInfo.deliReq }" /></td>
								</tr>
							</c:otherwise>
						</c:choose>
					</table>
				</div>
				<!-- 하단 버튼 -->
				<div style="padding: 40px 0 100px 0; text-align: center;">
					<button
						style="background-color: rgb(22, 160, 133); color: white; border: none; height: 40px; width: 70px; font-weight: bold;"
						type="button" onclick="location.href='mng_order_main.do'">확인</button>
				</div>
			</main>
			<!-- 푸터 -->
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div class="align-items-center justify-content-between small">
						<div class="text-muted">
							<span style="margin: 0 30px 0 0;">회사소개</span> <span
								style="margin: 0 30px 0 0;">이용약관</span> <span
								style="margin: 0 30px 0 0;">개인정보처리방침</span> <span>이용안내</span>
						</div>
						<hr>
						<div style="display: flex; justify-content: space-between;">
							<div class="text-muted">
								<div>법인명(상호) : 주식회사 샐러드월드 / 대표 : 3조 / TEL : 0000-0000 /
									FAX : 02-0000-0000</div>
								<div>사업자등록번호 : 000-00-00000 / 통신판매업신고번호 : 제 0000 - 쌍용3조 -
									0000호</div>
								<div>주소 : 서울광역시 강남구 테헤란로 132 / 개인정보관리책임자 : 3조 / E-Mail :
									3조@0000.co.kr</div>
							</div>
							<div>
								<img alt="img" src="./resources/mng_images/saladLogo.png">
							</div>
						</div>
					</div>
				</div>
			</footer>
			<!-- 푸터 끝 -->
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="./resources/mng_js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="./resources/mng_assets/demo/chart-area-demo.js"></script>
	<script src="./resources/mng_assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="./resources/mng_js/datatables-simple-demo.js"></script>
	<script>
    var Target = document.getElementById("clock");
    function clock() {
        var time = new Date();

        var year = time.getFullYear();
        var month = time.getMonth();
        var date = time.getDate();
        var day = time.getDay();
        var week = ['일', '월', '화', '수', '목', '금', '토'];

        var hours = time.getHours();
        var minutes = time.getMinutes();
        var seconds = time.getSeconds();
        var AmPm = "AM";
        if(hours > 12){
            var AmPm = "PM";
            hours %= 12;
        }

        Target.innerText =
        	`\${year}-\${month + 1}-\${date} \${week[day]}요일 ` +
            `\${hours < 10 ? `0\${hours}` : hours}:\${minutes < 10 ? `0\${minutes}` : minutes}` + `\${AmPm}`;
            
    }
    clock();
    setInterval(clock, 1000); // 1초마다 실행
</script>
</body>
</html>
