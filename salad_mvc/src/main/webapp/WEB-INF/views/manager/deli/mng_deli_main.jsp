<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=" "%>
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
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet"> <!-- google font -->
        <style type="text/css"> 
        
        .hide{display: none;}
	
	.popup {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    /*style*/
    background: white;
    border: 1px solid #d1d8dd;
    box-shadow: 0 0 6px 1px rgb(0 0 0 / 30%);
        
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
		
		.popupTable>tr>th{
		width: 30%;
		background-color:#f0f0f0;
		padding: 10px;
		}
	
		.popupTable>tr>th, .popupTable>tr>td{
		border: 1px solid #f0f0f0;
		}
		}
		.btnn{  <!-- 모든 버튼에대한 css설정 -->
      text-decoration: none;
      font-size:15px;
      color:white;
      padding:10px 20px 10px 20px;
      margin:10px;
      display:inline-block;
      border-radius: 10px;
      transition:all 0.1s;
      text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
      font-family: 'Lobster', cursive; <!-- google font -->
    }
    .btnn:active{
      transform: translateY(3px);
    }
    .btnn.blue{
      background-color: #C0C0C0;
    }
    .btnn.blue:active{
      border-bottom:2px solid #165195;
    }
		
		
        </style>
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript">
    
    $(function(){
    	
    	<%
    		String msg=request.getParameter("msg");
    		if(msg!=null){%>
    			alert('<%=msg %>');
    		<%}%>
    	
    		setDeilList(1);//리뷰 관리 리스트
    	
    	//검색어 기능
    	$("#searchBtn").click(function(){
    		setDeilList($("#currentPage").val());
    	}); 	
    })
    
    function setHide(id, display){
	if(display=="hide") {
		$( "#"+id ).addClass( "hide" );
	}else {
		$( "#"+id ).removeClass( "hide" );
	}
}//setDn
    
    function setDeilList(currentPage){//배송 관리 리스트
	$.ajax({
		url:"mng_deil_list_ajax.do",
		data:"currentPage="+currentPage+"&searchText="+$("#searchText").val(),
		dataType:"json",
		error:function(request,status,error){
			alert("배송 관리 리스트를 불러오는 중에 문제가 발생했습니다.");
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		},
		success:function(jsonObj){
			
			/* 페이징 테이블 */
			$("#DeilListOutput").show();
			var tbOutput="<table class='table'>";
			 tbOutput+="<thead class='table-light' style='height: 50px;'>";
			 tbOutput+="<tr><th>주문번호</th><th>주문자</th><th>주문일자</th><th>총주문가격</th><th>배송현황</th></tr>";
			 tbOutput+="</thead>";
			 tbOutput+="<tbody>";
			 if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					
					var status="";
					if(json.orderStatus==0){
						status='주문접수';
					}else if(json.orderStatus==1){
						status='배송준비중';
					}else if(json.orderStatus==2){
						status='배송중';
					}else if(json.orderStatus==3){
						status='배송완료';
					}
					tbOutput+="<tr>";
					tbOutput+="<td>"+json.orderNum+"</td>";
					tbOutput+="<td>"+json.name+"</td>";
					tbOutput+="<td>"+json.orderDate+"</td>";
					tbOutput+="<td>"+json.orderTotalPrice+"</td>";
					tbOutput+="<td><button type='button' class='btn btn-light btn-sm' onclick=\"setDetailPopup('"+status+","+json.name+","+json.orderNum+"')\">" 
					tbOutput+=status;
					tbOutput+="</button></td>";
					tbOutput+="</tr>";
				});//each
			} else {
					tbOutput+="<tr><td colspan=5>데이터가 존재하지 않습니다.</td></tr>";
			}//end else
					tbOutput+="</tbody>";
					tbOutput+="</table>";
			$("#DeilListOutput").html(tbOutput);
			document.getElementById("total").innerHTML = jsonObj.totalCount;
			/* 페이징 버튼 */
			var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
				pgOutput+="<ul class='pagination'>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + 1 + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				pgOutput+="<li class='page-item'>"
				pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + i  + ")'>"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setDeilList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
			}//end if
			pgOutput+="</ul></nav>";
			
			pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
			
			$("#pageOutput").html(pgOutput);
		}//success
	})//ajax
}//setDeilList

function setDetailPopup(status) {// 배송 상세 팝업
	var array = status.split(',');
	setHide("popupDeliForm", "display");
	
	var output="<div class='content'>";
	output+="<div style='width: 800px; border: 1px solid grey;''>";
	output+="<div style='font-weight: bold; font-size: 20px; border-bottom: 2px solid #ddd; padding: 15px;' align='left'>";
	output+="배송 현황";
	output+="<div style='width: 800px; display: flex; flex-direction:column; justify-content: center; align-items: center;'>"; 
	output+="<img alt='img' src=\"http://localhost/salad_mvc/resources/mng_images/shipped.png\" style='width:150px;'>"; 
	output+="<div style='font-size:18px;'>현재 "
	output+=array[1]
	output+="님의 배송 현황은 <span style='color:rgb(22,160,133);'>[ "
	output+=array[0]
	output+="]</span> 입니다.</div>"; 
	output+="<div style='margin:30px 0 30px 0; font-size:18px;'>"; 
	output+="<button class='deliFormBtn' style='margin-right: 20px; background-color:#E3FBF7;'  type='button' onclick='location.href=\"mng_deli_update.do?orderNum="+array[2]+"&orderStatus=1"+"\" '>배송 준비 중</button>"; 
	output+="<button class='deliFormBtn' style='margin-right: 20px; background-color:#E3FBF7;' type='button' onclick='location.href=\"mng_deli_update.do?orderNum="+array[2]+"&orderStatus=2"+"\" '>배송 중</button>"; 
	output+="<button class='deliFormBtn' style='background-color:#E3FBF7;' type='button' onclick='location.href=\"mng_deli_update.do?orderNum="+array[2]+"&orderStatus=3"+"\" '>배송 완료</button>"; 
	output+="</div>"; 
	output+="</div>"; 
	output+="</div>"; 
	output+="<div style='width: 800px; display: flex; align-items: center; justify-content: center; margin-top: 10px;'>"; 
	output+="<input type='button'  style='background-color:#FFF4CE;' value='닫기' class='button' onclick='location.href=\"mng_deli.do\" '>	"; 
	output+="</div>"; 
	output+="</div>"; 
	output+="</div>"; 
	
	$("#popupDeliForm").html(output);
	
}
    </script>
    
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="mng_dashboard.do"><img alt="img" src="./resources/mng_images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3조 관리자님,어서오세요.&nbsp;&nbsp;</div>
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
                            <div style="padding:28px 16px 28px 16px;"><a class="sb-sidenav-menu-heading heading-link" 
                            style="text-decoration-line:none; font-size:16px; padding:0;" 
                            href="mng_member.do">회원 관리</a></div>
                            <hr style="width:90%; text-align:center; margin:auto;">
                            <div class="sb-sidenav-menu-heading">상품 관리</div>
                            <a class="nav-link" href="mng_prd.do">
                                -상품 등록<
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
                        <div class="row">
                       		 	<div style="position:relative; display:flex; justify-content:space-evenly; align-items:center; padding-bottom:40px;">
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px;
		                        	border-radius:35px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	배송현황수
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;" id="total">${totalCount}</span>건
				                        	</div>
			                        	</div>
		                        	</div>
                       		 </div>
                       	</div> 
			<div>
               	<form id="searchFrm" name="searchFrm"  action="mng_notice.do">
               	<div style="width: 90%; margin-left: 85px; margin-bottom: 20px;" align="right">
               		<input type="text"  placeholder="주문자명을 입력하세요." id="searchText" name="searchText">
               		<input type="text" style="display: none;"/>
               		<input type="button" value="검색" id="searchBtn" name="searchBtn">
               	</div>
               	</form>
               		<div id="DeilListOutput"  style="text-align: center;">
               		
               		</div>
				</div>
	               	<div id="pageOutput" style="text-align: center;">
				
					</div> 
                </main>
                
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
        <!-- 내용 끝 -->
        <!-- 팝업창 : mng_deli_form_ing / 배송 현황-->
	<div id="popupDeliForm" class="hide popup" align="center">
		
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
<script type="text/javascript">
		function showPopup(hasFilter, id) {
			const popup = document.querySelector('#' + id);
			if (hasFilter) {
				popup.classList.add('has-filter');
			} else {
				popup.classList.remove('has-filter');
			}
			popup.classList.remove('hide');
		}
		
		
		function closePopup(id) {
			const popup = document.querySelector('#' + id);
			popup.classList.add('hide');
		}	
		
		$(document).ready(function()
				{
			$('td a').hover(function(){
				$(this).css('text-decoration','underline');
			/* 	$(this).css('color','#008b8b'); */
			},function(){
				$(this).css('text-decoration','none');
				/* $(this).css('color','#1A374D'); */
			});
		});

	</script> 
    </body>
</html>
