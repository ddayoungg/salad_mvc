<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<link href="http://localhost/salad_mvc/resources/mng_css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet"> <!-- google font -->
<style type="text/css">
	.button2{
		width: 14%; 
		background-color: white; 
		border: 1px solid grey;
	}
	
	.button2:hover{
		background-color: #f0f0f0;
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
	<!--  삭제,베스트후기성공 팝업-->
	<%
	String msg=request.getParameter("eMsg");
	if(msg!=null){%>
		alert('<%=msg %>');
	<%}%>
	
	setMainCate();
	setRevList(1);//리뷰 관리 리스트
	
	//검색어 기능
	$("#searchBtn").click(function(){
		setRevList($("#currentPage").val());
	});
	
	//카테고리
	
	$("#mainCateNum").change(function() {
		if($("#mainCateNum").val()!="none"){
				setSubCate();
		}
	});
	
	//서브카테고리로 검색
	$("#subCateNum").change(function() {
		setRevList($("#currentPage").val());
	});
	
	function setMainCate(){
		$.ajax({
			url:"cate_main.do",
			dataType:"json",
			error:function(xhr){
				alert("메인카테고리를 조회하는데 문제가 발생하였습니다.");
				console.log(xhr.status);
			},
			success:function(jsonObj){
				if(jsonObj.result){
					var mainSel=document.categoryFrm.mainCateNum;
					$.each(jsonObj.mainData,function(i,json){
						mainSel.options[i+1]=new Option(json.mainName,json.mainNum)
					})
				}
			}
			
		})
	}

	function setSubCate(){
		$.ajax({
			url:"cate_sub.do",
			data:"mainCateNum="+$("#mainCateNum").val(),
			dataType:"json",
			error:function(xhr){
				alert("서브카테고리를 조회하는데 문제가 발생하였습니다.");
				console.log(xhr.status);
			},
			success:function(jsonObj){
				if(jsonObj.resultFlag){
					var subSel=document.categoryFrm.subCateNum;
					subSel.length=1;
					
					$.each(jsonObj.subData,function(i,json){
						subSel.options[i+1]=new Option(json.subName,json.subNum)
					})
				}
			}
			
		})
	}
	
	
})

function setDetail(revNum){
	location.href="mng_rev_detail.do?revNum="+revNum; // 후기상세페이지로 이동
}

function setRevList(currentPage){//리뷰 관리 리스트
	$.ajax({
		url:"mng_rev_list_ajax.do",
		data:"currentPage="+currentPage+"&searchText="+$("#searchText").val()+"&subCateNum="+$("#subCateNum").val(),
		dataType:"json",
		error:function(request,status,error){
			alert("리뷰 관리 리스트를 불러오는 중에 문제가 발생했습니다.");
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		},
		success:function(jsonObj){
			/* 페이징 테이블 */
			$("#RevListOutput").show();
			var tbOutput="<table class='table'>";
			 tbOutput+="<thead class='table-light' style='height: 50px;'>";
			 tbOutput+="<tr><th>후기번호</th><th>주문자</th><th>작성일자</th><th>주문상품명</th><th>상세보기</th></tr>";
			 tbOutput+="</thead>";
			 tbOutput+="<tbody>";
			 if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					tbOutput+="<tr>";
					tbOutput+="<td>"+json.revNum+"</td>";
					tbOutput+="<td>"+json.name+"</td>";
					tbOutput+="<td>"+json.revWriteDate+"</td>";
					tbOutput+="<td>"+json.prdName+"</td>";
					tbOutput+="<td><button type='button' class='btn btn-light btn-sm' onclick=\"setDetail('"+json.revNum+"')\">상세보기</button></td>";
					tbOutput+="</tr>";
				});//each
			} else {
					tbOutput+="<tr><td colspan=5>데이터가 존재하지 않습니다.</td></tr>";
			}//end else
					tbOutput+="</tbody>";
					tbOutput+="</table>";
			$("#RevListOutput").html(tbOutput);
			document.getElementById("total").innerHTML = jsonObj.totalCount;
			/* 페이징 버튼 */
			var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
				pgOutput+="<ul class='pagination'>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + 1 + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				pgOutput+="<li class='page-item'>"
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + i  + ")'>"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setRevList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
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
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
            href="index.html"><img alt="img" src="http://localhost/salad_mvc/resources/mng_images/saladLogo.png" height="50px"></a>
            <div class="ms-auto" style="color:white;">3조 관리자님,어서오세요.&nbsp;&nbsp;</div>
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
					<div style="display:flex; justify-content:space-between; flex-direction:row;padding:20px 0 30px 0;">
						<div>
							<h1 id="clock" class="mt-4" style="font-size:20px; color:rgb(94,94,94); font-weight:bold;">clock</h1>
							<div style="font-size:24px; color:rgb(51,51,51); font-weight:bold;">환영합니다! 3조 관리자님.</div>
						</div>
						<div>
							<img src="http://localhost/salad_mvc/resources/mng_images/socialMedia.png" width="130px">
						</div>
						<div style="width:319px;"></div>
					</div>
				</div>
                <div class="row">
                <div align="center">
       		 		<div style="position:relative; display:flex; justify-content:space-evenly; align-items:center; padding-bottom:40px; max-width: 800px;">
	                  	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px;">
	                  		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
			                    <div style=" color:white; font-weight:bold; font-size:20px;">후기 등록 수</div>
		                    	<div style="color:white; font-weight:bold; font-size:20px;">
		                    		<span style="font-size:30px;" id="total">${totalCount}</span>건
		                    	</div>
	                   		</div>
	                  	</div>
					</div>
					</div>
					<div style="width: 80%">
						<form name="categoryFrm"  action="mng_rev.do" style="display: flex; justify-content: space-between; margin-bottom: 10px;">
							<div>
							<select name="mainCateNum" id="mainCateNum" style="height: 30px;">
								<option value="0">---카테고리 선택---</option>
							</select>
							<select name="subCateNum" id="subCateNum" style="height: 30px;">
								<option value="0">---카테고리 선택---</option>
							</select>
							</div>
							<div style="display: flex;">
							<input type="text" name="searchText" id="searchText" style="width: 80%"placeholder="이름으로 검색해주세요">
							<input type="button" value="검색" class="button2" id="searchBtn" name="searchBtn" style="width: 80px; margin-left: 10px;">
							</div>
						</form>
					</div>
					<div  id="RevListOutput">
	               		
	               	</div>
	               	<div id="pageOutput">
						
					</div>
					</div>
			</main>
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
	                        		<img alt="img" src="img/saladLogo.png">
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </footer>
		</div>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="http://localhost/salad_mvc/resources/mng_js/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="http://localhost/salad_mvc/resources/mng_assets/assets/demo/chart-area-demo.js"></script>
	<script src="http://localhost/salad_mvc/resources/mng_assets/assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="http://localhost/salad_mvc/resources/mng_js/datatables-simple-demo.js"></script>
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