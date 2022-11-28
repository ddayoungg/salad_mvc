<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
       <title>Notice</title>
       <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
       <link href="http://salad.sist.co.kr/resources/mng_css/styles.css" rel="stylesheet" /><!-- ../변경 인화 -->
       <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
       <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet"> <!-- google font -->
       <style type="text/css">
	.button{
		width: 100px;
		height: 40px;
		margin: 10px;
		background-color: transparent;
		border: 1px solid #14CEA9;
		color: #14CEA9;
		line-height: 30px;
		
	}
	.button:hover {
		background-color: #14CEA9;
		color: white;
	} 
	
	.table tr:hover {
        background-color:#F0F0F0
    }
	
	.popupTable>tr>th{
		width: 30%;
		background-color:#f0f0f0;
		padding: 10px;
	}
	
	.popupTable>tr>th, .popupTable>tr>td{
		border: 1px solid #f0f0f0;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
	<!--  삭제팝업-->
	<%
	String msg=request.getParameter("eMsg");
	if(msg!=null){%>
		alert('<%=msg %>');
	<%}%>
	
	setNotiList(1);//공지사항 관리 리스트
	
	$("#writeBtn").click(function(){
		location.href="mng_notice_form.do?"
	});
	
	$("#searchBtn").click(function() {
		setNotiList($("#currentPage").val());
	});
	
	$('#searchFlag').change(function() {
	    var result = $('#searchFlag option:selected').val();
	    if (result == '1') {
	    	$("#searchText").val("");
	    	$("input#searchText").attr("placeholder", "제목을 입력해주세요");
	    }
	    if (result == '2') {
	    	$("#searchText").val("");
	    	$("input#searchText").attr("placeholder", "YYYY-MM-DD");
	    	$("input#searchText").attr("maxlength", "10");
	    	$("#searchText").keyup(function(){
	    	  	//자동 하이픈 추가
	    	  	let date = document.querySelector("#searchText");

				// 문자열, 하이픈을 막기 위해 input event 사용
				date.addEventListener("input", () => {
  
 				 // 사용자 입력값은 모두 숫자만 받는다.(나머지는 ""처리)
 				 let val = date.value.replace(/\D/g, "");
 				 let leng = val.length;
  
  				// 출력할 결과 변수
  				let result = '';
  
 				 // 5개일때 - 20221 : 바로 출력
 				 if(leng < 6) result = val;
 				 // 6~7일 때 - 202210 : 2022-101으로 출력
 				 else if(leng < 8){
  				result += val.substring(0,4);
   				 result += "-";
    			result += val.substring(4);
  				// 8개 일 때 - 2022-1010 : 2022-10-10으로 출력
  				} else{
  					result += val.substring(0,4);
   				 result += "-";
    			result += val.substring(4,6);
    			result += "-";
    			result += val.substring(6);
  			}
  			date.value = result;

				})
	    	});
	    }
	  });
	
})

function setDetail(notiNum){
	location.href="mng_notice_detail.do?notiNum="+notiNum; // 공지사항페이지로 이동
}

function setNotiList(currentPage){//공지사항 관리 리스트
	$.ajax({
		url:"mng_noti_list_ajax.do",
		data:"currentPage="+currentPage+"&searchText="+$("#searchText").val()+"&searchFlag="+$("#searchFlag").val(),
		dataType:"json",
		error:function(request,status,error){
			alert("공지사항 관리 리스트를 불러오는 중에 문제가 발생했습니다.");
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		},
		success:function(jsonObj){
			/* 페이징 테이블 */
			$("#notiListOutput").show();
			var tbOutput="<table class='table' id='notiTab' >";
			 tbOutput+="<thead class='table-light' style='height: 50px;'>";
			 tbOutput+="<tr><th>번호</th><th>제목</th><th>작성일자</th><th>작성자</th><th>조회수</th></tr>";
			 tbOutput+="</thead>";
			 tbOutput+="<tbody>";
			 if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					tbOutput+="<tr onclick=\"setDetail('"+json.notiNum+"')\">";
					tbOutput+="<td>"+json.notiNum+"</td>";
					tbOutput+="<td>"+json.notiTitle+"</td>";
					tbOutput+="<td>"+json.notiWriteDate+"</td>";
					tbOutput+="<td>관리자</td>";
					tbOutput+="<td>"+json.notiHits+"</td>";
					tbOutput+="</tr>";
				});//each
			} else {
					tbOutput+="<tr><td colspan=5>데이터가 존재하지 않습니다.</td></tr>";
			}//end else
					tbOutput+="</tbody>";
					tbOutput+="</table>";
			$("#notiListOutput").html(tbOutput);
			document.getElementById("total").innerHTML = jsonObj.totalCount;
			/* 페이징 버튼 */
			var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
				pgOutput+="<ul class='pagination'>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setNotiList(" + 1 + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setNotiList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				pgOutput+="<li class='page-item'>"
				pgOutput+="<a class='page-link' href='#void' onclick='setNotiList(" + i  + ")'>"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setNotiList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setNotiList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
			}//end if
			pgOutput+="</ul></nav>";
			
			pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
			
			$("#pageOutput").html(pgOutput);
		}//success
	})//ajax
}//setMemberList

</script>
    </head>
    
    
    <body class="sb-nav-fixed">
 <!-- 상단 우측 네비 -->       
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="mng_dashboard.do"><img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png" height="50px"></a><!-- ../변경 인화 -->
            <div class="ms-auto" style="color:white;">3조 관리자님, 어서오세요.&nbsp;&nbsp;</div>
            <!-- Navbar-->
             <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="mng_logout.do">Logout</a></li>
                    </ul>
                </li>
            </ul> 
        </nav>
        
        <div id="layoutSidenav">
<!-- 좌측 메인 네비 -->        
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
  <!-- 본문 상단 -->          
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
	                        <img src="http://salad.sist.co.kr/resources/mng_images/socialMedia.png" width="130px"><!-- ../변경 인화 -->
	                        </div>
	                        <div style="width:319px;"></div>
                        </div>
                        </div>
                        
<!--본문 상단 요약  -->
                        <div class="row">
                       		 	<div style="position:relative; display:flex; justify-content:space-evenly; align-items:center; padding-bottom:40px;">
		                        	<div style="background:rgb(141,216,198); width:150px; height:155px;
		                        	border-radius:35px;">
		                        		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
				                        	<div style=" color:white; font-weight:bold; font-size:20px;">
				                        	공지사항 수
				                        	</div>
				                        	<div style="color:white; font-weight:bold; font-size:20px;">
				                        	<span style="font-size:30px;" id="total">${totalCount}</span>개
				                        	</div>
			                        	</div>
		                        	</div>
                       		 </div>
                       	</div> 
                       	
<!-- 본문 리스트 시작 --> 
               	
               	<form id="searchFrm" name="searchFrm"  action="mng_notice.do">
               	<div style="width: 85%; margin-left: 85px; margin-bottom: 20px;" align="right">
               		<select style="height: 30px;"id="searchFlag" name="searchFlag">
               			<option value="1">제목</option>
               			<option value="2">작성일자</option>
               		</select>
               		<input type="text"  style="margin-left: 10px;"
               		placeholder="내용을 입력하세요." id="searchText" name="searchText">
               		<input type="text" style="display: none;"/>
               		<input type="button" value="검색" id="searchBtn" name="searchBtn"
               		 style="width: 14%; 
						background-color: white; 
						border: 1px solid grey;
						width: 80px; 
						margin-left: 10px;">
               	</div>
               	</form>
               		<div style="width: 80%; margin: 10px auto; text-align: center;">
               		<div id="notiListOutput" style="text-align: center;">               		
               		</div>
				</div>
				
                <div style="width: 80%; justify-content: end; display: flex;align-items: center; width: 90%; margin-left: 85px; margin-bottom: 20px; margin-top:20px;">
					<input type="button" value="글쓰기"  class="button" id="writeBtn"
					style="margin : 0 80px 0 0;" >
				</div>
				<div id="pageOutput" style="text-align: center;">
				
				</div>		
              </main>
               
 <!-- 본문 끝 -->               
                
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
	                        		<img alt="img" src="./resources/mng_images/saladLogo.png"><!-- ../변경 인화 -->
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
	<script src="http://salad.sist.co.kr/resources/mng_js/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="http://salad.sist.co.kr/resources/mng_assets/assets/demo/chart-area-demo.js"></script>
	<script src="http://salad.sist.co.kr/resources/mng_assets/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="http://salad.sist.co.kr/resources/mng_js/datatables-simple-demo.js"></script>
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
        `\${hours < 10 ? `\${hours}` : hours}:\${minutes < 10 ? `\${minutes}` : minutes}` + `\${AmPm}`;
            
    }
    clock();
    setInterval(clock, 1000); // 1초마다 실행
</script>
    </body>
</html>
