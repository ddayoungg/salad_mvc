<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="./resources/mng_css/styles.css" rel="stylesheet" />
        <!-- jQuery google CDN -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<!-- Bootstrap JS -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
		
        <style type="text/css"> 
        
        .tableMainBtn{
        background-color: #d5d5d5; 
        width:100px;
        }
        
        .tableMainBtn:hover{
		border-color: #14CEA9;
		background-color:#fff;
		color:#14CEA9;
		}
		
		.tableMainNum{
		color:rgb(22,160,133);
		text-decoration: none;
		}
		
		.tableMainNum:hover{
		color:rgb(22,160,133);
		text-decoration: underline;
		}
		
		.button2{
		width: 14%; 
		background-color: white; 
		border: 1px solid grey;
		}
	
		.button2:hover{
			background-color: #f0f0f0;
		}
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>   		   		
   		<script src="https://code.jquery.com/jquery-3.4.1.js"></script> 
   		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        
        <!-- 소현 -->
        <script type="text/javascript">
			$(function(){
				setOrderList(1);//주문 리스트
				
				//검색어 기능
		    	$("#searchBtn").click(function(){
		    		setOrderList($("#currentPage").val());
		    	}); 
				
			});//ready
			
			function setOrderList(currentPage){
				$.ajax({
					url:"my_order_list_ajax111.do",
					data:"currentPage="+currentPage+"&searchText="+$("#searchText").val(),
					dataType:"json",
					error:function( xhr ){
						alert("취소 목록 리스트를 불러오는데 실패했습니다.");
						console.log(xhr.status);
					},
					success:function(jsonObj){
						var tbOutput="<table class='table'>";
						tbOutput+="<thead class='table-light' style='height: 50px;'>";
						tbOutput+="<tr>";
						tbOutput+="<th>주문번호</th>";
						tbOutput+="<th>주문자</th>";
						tbOutput+="<th>주문 일자</th>";
						tbOutput+="<th>총 주문 가격</th>";
						tbOutput+="<th>주문 현황</th>";
						tbOutput+="<th>상세 정보</th>";
						tbOutput+="</tr>";
						tbOutput+="</thead>";
						tbOutput+="<tbody>";
					    if(!jsonObj.isEmpty){
							$.each(jsonObj.list, function(i, json){
							    tbOutput+="<tr>";
							    tbOutput+="<td>"+json.orderNum+"</td>";
							    tbOutput+="<td>"+json.name+"</td>";
							    tbOutput+="<td>"+json.orderDate+"</td>";
							    
								var tempPrice=Math.floor(json.orderTotalPrice); //단위
								const totalPrice=tempPrice.toLocaleString('ko-KR');
								
							    tbOutput+="<td>"+ totalPrice+"원</td>";
							    tbOutput+="<td>"+json.orderStatus+"</td>";
							    tbOutput+="<td><input type='button' class='btn btn-light btn-sm detailBtn' onclick='location.href=\"mng_order_detail.do?orderNum="+json.orderNum+"&existAddrFlag="+json.existAddrFlag+"\"' value='상세보기'></td>";
								tbOutput+="</tr>";
								
							});//each
						} else {
								tbOutput+="<tr><td colspan=6>데이터가 존재하지 않습니다.</td></tr>";
						}//end else
							tbOutput+="</tbody>";
							tbOutput+="</table>";
						
							$("#orderListOutput").html(tbOutput);
							/* 페이징 버튼 */
							var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'><ul class='pagination'>";
							if( jsonObj.startPage != 1 ) {
								pgOutput+="<li class='page-item'>";
								pgOutput+="<a class='page-link' href='#void' onclick='setOrderList("+ 1 +")' tabindex='-1'";
								pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
							}//end if
							if( jsonObj.startPage != 1 ) {
								pgOutput+="<li class='page-item'>";
								pgOutput+="<a class='page-link' href='#void' onclick='setOrderList("+ (jsonObj.startPage-1) +")' tabindex='-1'";
								pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
							}//end if
							for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
								if(currentPage==i) {
									pgOutput+="<li class='on a_none'>";
								} else {
									pgOutput+="<li class='page-item'>";
								}//end else
								pgOutput+="<a class='page-link' href='#void' onclick='setOrderList("+ i +")'>"+ i +"</a></li>";
							}//end for
							if(jsonObj.totalPage != jsonObj.endPage) {
								pgOutput+="<li class='page-item'>";
								pgOutput+="<a class='page-link' href='#void' onclick='setOrderList("+ (jsonObj.endPage + 1) +")'>&gt;<!-- > --></a></li>";
							}//end if
							if(jsonObj.totalPage != jsonObj.endPage) {
								pgOutput+="<li class='page-item'>";
								pgOutput+="<a class='page-link' href='#void' onclick='setOrderList("+ (jsonObj.totalPage) +")'>&gt&gt;<!-- >> --></a></li>";
							}//end if
							pgOutput+="</ul></nav>";
							
							pgOutput+="<input type='hidden' id='currentPage' value='"+currentPage+"'>";
							
							$("#orderPageOutput").html(pgOutput);
					}//success
				})//ajax
			}//setOrderList
			
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
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <!-- <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li> -->
                        <li><a class="dropdown-item" href="mng_logout.do">Logout</a></li>
                    </ul>
                </li>
            </ul> 
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">메인</div>
                            <a class="nav-link" style="padding-bottom:28px;" href="mng_dashboard.do">
                                -대시보드
                            </a>
                            <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">회원관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_member.do">
		                    -회원 관리
		                </a>
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
                    	<div style="display:flex; justify-content:space-between; flex-direction:row;
                    	padding:20px 0 30px 0;">
	                    	<div>
	                        <h1 id="clock" class="mt-4" 
	                        style="font-size:20px; color:rgb(94,94,94); font-weight:bold;">clock</h1>
	                        <div style="font-size:24px; color:rgb(51,51,51); font-weight:bold;">
	                        환영합니다! 3조 관리자님.
	                        </div>
	                        </div>
	                        <div>
	                        <img src="./resources/mng_images/socialMedia.png" width="130px">
	                        </div>
	                        <div style="width:319px;"></div>
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
					<div class="row px-4"  style="--bs-gutter-x:0;">
						<div style="margin: 10px auto; text-align: center;">
							<form id="searchFrm" name="searchFrm"  action="mng_notice.do">
				               	<div style="width: 80%; margin-left: 85px; margin-bottom: 20px;" align="right">
				               		<input type="text"  placeholder="주문자명을 입력하세요." id="searchText" name="searchText">
				               		<input type="text" style="display: none;"/>
				               		<input type="button" value="검색" id="searchBtn" name="searchBtn"
				               		style="width: 14%; background-color: white;border: 1px solid grey;width: 80px; margin-left: 10px;" >
				               	</div>
				            </form>
						</div>	
		            	<div style="width: 80%; margin: 10px auto; text-align: center;">
							<div class="mypage_table_type" id="orderListOutput">
			    				
							</div>
               			</div>
					</div> <!--표 끝  -->    
                </main>
				<div id="orderPageOutput">
				
				</div>
                <!-- 푸터 -->
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="align-items-center justify-content-between small">
                            <div class="text-muted">
                            	<span style="margin: 0 30px 0 0;">회사소개</span>
                            	<span style="margin: 0 30px 0 0;">이용약관</span>
                            	<span style="margin: 0 30px 0 0;">개인정보처리방침</span>
                            	<span>이용안내</span>
                            </div>
                            <hr>
                            <div style="display: flex; justify-content: space-between;" >
	                             <div class="text-muted">
	                            	<div>법인명(상호) : 주식회사 샐러드월드 / 대표 : 3조 / TEL : 0000-0000 / FAX : 02-0000-0000</div>
	                            	<div>사업자등록번호 : 000-00-00000 / 통신판매업신고번호 : 제 0000 - 쌍용3조 - 0000호</div>
	                            	<div>주소 : 서울광역시 강남구 테헤란로 132 / 개인정보관리책임자 : 3조 / E-Mail : 3조@0000.co.kr</div>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="./resources/mng_js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="./resources/mng_assets/demo/chart-area-demo.js"></script>
        <script src="./resources/mng_assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
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
