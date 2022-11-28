<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link href="http://salad.sist.co.kr/resources/mng_css/styles.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />


<script src="http://salad.sist.co.kr/resources/mng_js/scripts.js"></script>
<script src="http://salad.sist.co.kr/resources/mng_assets/demo/chart-area-demo.js"></script>
<script src="http://salad.sist.co.kr/resources/mng_assets/demo/chart-bar-demo.js"></script>
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<script src="http://salad.sist.co.kr/resources/mng_js/datatables-simple-demo.js"></script>

<!-- JQuery google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

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
	}
	
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
	
	.popupTable>tr>th{
		width: 30%;
		background-color:#f0f0f0;
		padding: 10px;
	}
	
	.popupTable>tr>th, .popupTable>tr>td{
		border: 1px solid #f0f0f0;
	}
	
</style>

<script type="text/javascript">
$(function(){
	
	setMemberTotal();//전체 회원 수
	
	setMemberList(1);//회원 관리 리스트
	
	$("#searchBtn").click(function(){
		setMemberList($("#currentPage").val());
	});
	
	$("#keyword").keydown(function(keyNum){
		//현재의 키보드의 입력값을 keyNum으로 받음
		if(keyNum.keyCode == 13){ //keyCode=13 : Enter
			$("#searchBtn").click()	
		}//end if
	});//keydown
	
})//redeay

function loginChk() {
	
	var loginFlag=true;
	
	<c:if test="${ sessionScope.mngId eq null }">
		alert("로그인을 해주세요.");
		location.href="http://salad.sist.co.kr/mng_index.do";
		loginFlag=false;
	</c:if>
	
	return loginFlag;
}//loginChk

function setHide(id, display){
	if(display=="hide") {
		$( "#"+id ).addClass( "hide" );
	}else {
		$( "#"+id ).removeClass( "hide" );
	}
}//setDn

function setMemberTotal() {//전체 회원 수, 전체 가입 수, 전체 탈퇴 수 표시
	$.ajax(
	{
		url : "mng_member_total_ajax.do",
		dataType:"json",
		error:function( xhr ){
			alert("전체 회원 데이터를 불러오는데 실패했습니다.")
			console.log(xhr.status);
		},
		success : function(jsonObj){
			
			$("#totalMember").html(jsonObj.totalMember);
			$("#totalJoinMember").html(jsonObj.totalJoinMember);
			$("#totalOutMember").html(jsonObj.totalOutMember);
			
		}//success
	});//ajax
}//setDetailPopup

function setMemberList(currentPage){//회원 관리 리스트
	$.ajax({
		url:"mng_member_list_ajax.do",
		data:"currentPage="+currentPage+"&filedName="+$("#filedName").val()+"&keyword="+$("#keyword").val(),
		dataType:"json",
		error:function( xhr ){
			alert("회원 관리 리스트를 불러오는 중에 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			/* 페이징 테이블 */
			$("#memberListOutput").show();
			var tbOutput="<table class='table' style='table-layout:fixed;'>";
			 tbOutput+="<thead class='table-light' style='height: 50px;'>";
			 tbOutput+="<tr><th>아이디</th><th>이름</th><th>가입일자</th><th>탈퇴여부</th><th>상세보기</th></tr>";
			 tbOutput+="</thead>";
			 tbOutput+="<tbody>";
			 if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					tbOutput+="<tr>";
					tbOutput+="<td>"+json.id+"</td>";
					tbOutput+="<td>"+json.name+"</td>";
					tbOutput+="<td>"+json.joinDate+"</td>";
					tbOutput+="<td>"+json.outFlag+"</td>";
					tbOutput+="<td><button type='button' class='btn btn-light btn-sm' onclick=\"setDetailPopup('"+json.id+"')\">상세보기</button></td>";
					tbOutput+="</tr>";
				});//each
			} else {
					tbOutput+="<tr><td colspan=5>데이터가 존재하지 않습니다.</td></tr>";
			}//end else
					tbOutput+="</tbody>";
					tbOutput+="</table>";
			$("#memberListOutput").html(tbOutput);
			/* 페이징 버튼 */
			var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
				pgOutput+="<ul class='pagination'>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setMemberList(" + 1 + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setMemberList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				pgOutput+="<li class='page-item'>"
				pgOutput+="<a class='page-link' href='#void' onclick='setMemberList(" + i  + ")'>"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setMemberList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setMemberList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
			}//end if
			pgOutput+="</ul></nav>";
			
			pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
			
			$("#pageOutput").html(pgOutput);
		}//success
	})//ajax
}//setMemberList

function setDetailPopup(id) {//회원 상세 팝업
	
	if(!loginChk()){
		return;
	}//end if
	
	$.ajax({
		url:"mng_member_detail_popup_ajax.do",
		data:"id="+id,
		dataType:"json",
		error:function( xhr ){
			alert("회원 상세보기를 불러오는 중에 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			setHide("popup", "display");
			
			var output="<div style='width: 800px; border: 1px solid grey;'>";
			output+="<div style='font-weight: bold; font-size: 20px; border-bottom: 2px solid #ddd; padding: 15px;' align='left'>";
			output+="회원 상세";
			output+="</div>";
			output+="<div style='margin: 50px 0px;'>";
			output+="<table id='detailPopup' class='member' style='width: 100%;' >";
			output+="<tbody class='popupTable' align='center'>";
			output+="<tr>";
			output+="<th>이름</th><td>"+jsonObj.name+"</td>";
			output+="</tr>";
			output+="<tr>";
			output+="<th>이메일</th><td>"+jsonObj.email+"</td>";
			output+="</tr>";
			output+="<tr>";
			output+="<th>아이디</th><td>"+jsonObj.id+"</td>";
			output+="</tr>";
			output+="<tr>";
			output+="<th>가입일자</th><td>"+jsonObj.joinDate+"</td>";
			output+="</tr>";
			output+="<tr>";
			output+="<th>전화번호</th><td>"+jsonObj.phone+"</td>";
			output+="</tr>";
			output+="<tr>";
			output+="<th>우편번호</th><td>"+jsonObj.zipcode+"</td>";
			output+="</tr>";
			output+="<tr>";
			output+="<th>주소</th><td>"+jsonObj.addr+" "+jsonObj.deAddr+"</td>";
			output+="</tr>";
			if(jsonObj.outFlag=="1"){
				output+="<tr>";
				output+="<th>탈퇴일자</th><td>"+jsonObj.outDate+"</td>";
				output+="</tr>";
				output+="<tr>";
				output+="<th>탈퇴 사유</th><td>"+jsonObj.outReason+"</td>";
				output+="</tr>";
			}//end if
			output+="</tbody>";
			output+="</table>";
			output+="</div>";
							
			output+="<div style='display: flex; align-items: center; justify-content: center; margin-bottom: 30px;'>";
			if(jsonObj.outFlag=="0"){
				output+="	<input type='button' value='탈퇴' class='button' onclick=\"setHide('popup2', 'displey')\">";
			}//end if
			output+="<input type='button' value='확인' class='button' onclick=\"setHide('popup', 'hide')\">";
			output+="</div>";
			output+="</div>";
			
			$("#id").val(id);//강제 탈퇴 시킬 id를 hidden에 임시 저장
			
			$("#popup").html(output);
		}//success
	})//ajax
	
}//setDetailPopup

function setOutMsg() {//회원 탈퇴 메시지
	
	if(!loginChk()){//로그인 상태 확인
		return;
	}//end if
	
	if(!nullChk()){//강제 탈퇴 입력 사항 확인
		return;
	}//end if
	
	 var params = $("#popupFrm").serialize();
	$.ajax(
	{
		url : "mng_member_out_process.do",
		data : params,
		error:function( xhr ){
			console.log(xhr.status);
			setHide("popup4", "display");//강제 회원 탈퇴 실패 메시지 표시
		},
		success : function(xh){
			setHide("popup3", "display");//강제 회원 탈퇴 성공 메시지 표시
		}
	});
}//setDetailPopup

function setFinal() {//강제 회원 성공하여 탈퇴 확인 메시지 확인 누를 경우
	//띄워 놓은 팝업창 전부 숨기기
	setHide("popup3", "hide");
	setHide("popup2", "hide");
	setHide("popup1", "hide");
	setDetailPopup($("#id").val());//회원 상세 팝업 정보 새로고침
	setMemberTotal();//전체 회원 수 정보 새로고침
	setMemberList($("#currentPage").val());//회원 관리 리스트 정보 새로고침
}//setFinal

function setFail() {//강제 회원 실패하여 확인 메시지 확인 누를 경우
	setHide("popup4", "hide");
}//setFinal


function nullChk(){
	
	var nullFlag=true;
	
	if($("#outReason").val().trim()=="") {
		alert("강제 탈퇴 사유를 입력해주세요.");
		$("#outReason").val("");//화이트 스페이스 초기화
		$("#outReason").focus();//커서 이동
		nullFlag=false;
	}//end if
	
	return nullFlag;
	
}//nullChk

</script>

</head>
<body class="sb-nav-fixed">

	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	    <!-- Navbar Brand-->
	    <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
	    href="http://salad.sist.co.kr/mng_dashboard.do"><img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png" height="50px"></a>
	    <div class="ms-auto" style="color:white;">3조&nbsp;관리자님,어서오세요.&nbsp;&nbsp;</div>
	    <!-- Navbar-->
	     <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
	        <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
	            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
	                <li><a class="dropdown-item" href="http://salad.sist.co.kr/mng_logout.do">Logout</a></li>
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
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_dashboard.do">
		                    -대시보드
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">회원관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_member.do">
		                    -회원 관리
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">상품 관리</div>
		                <a class="nav-link" href="http://salad.sist.co.kr/mng_prd.do">
		                    -상품 등록
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="http://salad.sist.co.kr/mng_rev.do">
		                    -상품 후기
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">주문 관리</div>
		                <a class="nav-link" href="http://salad.sist.co.kr/mng_order_main.do">
		                    -주문 관리
		                </a>
		                <a class="nav-link" style="padding-top:0;"href="http://salad.sist.co.kr/mng_cancel.do">
		                    -취소 관리
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="http://salad.sist.co.kr/mng_deli.do">
		                    -배송 관리
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">게시판 관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_notice.do">
		                    -공지사항
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">문의 관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://salad.sist.co.kr/mng_qna.do">
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
							<img src="http://salad.sist.co.kr/resources/mng_images/socialMedia.png" width="130px">
						</div>
						<div style="width:319px;"></div>
					</div>
				</div>
                <div class="row">
       		 		<div style="position:relative; display:flex; justify-content:space-evenly; align-items:center; padding-bottom:40px; max-width: 800px;">
	                  	<div style="background:rgb(141,216,198); width:150px; height:155px; border-radius:35px;">
	                  		<div style="display:flex; flex-direction:column; align-items:center; height:150px; justify-content:center;">
			                    <div style=" color:white; font-weight:bold; font-size:20px;">총 회원 수</div>
		                    	<div style="color:white; font-weight:bold; font-size:20px;">
		                    		<span id="totalMember" style="font-size:30px;"></span>명
		                    	</div>
	                   		</div>
	                  	</div>
	                  	<div style="background:#f0f0f0; width:150px; height:155px;border-radius:35px;">
	                  		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
		                    	<div style=" color:grey; font-weight:bold; font-size:20px;">가입 회원 수</div>
		                    	<div style="color:grey; font-weight:bold; font-size:20px;">
		                    		<span id="totalJoinMember" style="font-size:30px;"></span>명
		                    	</div>
	                   		</div>
	                  	</div>
	                  	<div style="background:#f0f0f0; width:150px; height:155px;border-radius:35px;">
	                  		<div style="display:flex; flex-direction:column; align-items:center;  height:150px; justify-content:center;">
		                    	<div style=" color:grey; font-weight:bold; font-size:20px;">탈퇴 회원 수</div>
		                    	<div style="color:grey; font-weight:bold; font-size:20px;">
		                    		<span id="totalOutMember" style="font-size:30px;"></span>명
		                    	</div>
	                   		</div>
	                  	</div>
					</div>
               	</div>
               	
				<div style="width: 80%; margin: 10px auto; text-align: center;">
		               	<div style="margin: 10px auto; text-align: right;">
	               		<select id="filedName" name="filedName"  style="width: 100px; margin:0 10px 0 0; height:30px;">
	               			<option value="id">아이디</option>
	               			<option value="name">이름</option>
	               			<option value="joinDate">가입일자</option>
	               			<option value="outFlag">탈퇴여부</option>
	               		</select>
	               		<input type="text" id="keyword" name="keyword" placeholder="내용을 입력해주세요" value=""/>
	               		<input type="button" id="searchBtn" value="검색"
	               		style="width: 14%; background-color: white; 
						border: 1px solid grey;
						width: 80px; 
						margin-left: 10px;" />
	               		</div>
	               		
	               		<div  id="memberListOutput">
	               		
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
	                        		<img alt="img" src="http://salad.sist.co.kr/resources/mng_images/saladLogo.png">
	                        	</div>
                        	</div>
                        </div>
                    </div>
                </footer>
		</div>
	</div>
		
	<!-- 상세보기 팝업 -->
	<div id="popup" class="hide popup" align="center" style="margin-top: 100px;">
		
	</div>
	
	<!-- 팝업창 : 삭제이유 -->
	<div id="popup2" class="hide popup" align="center">
		<form action="mng_member_out_process.do" id="popupFrm" >
	    <div style="width: 450px; border: 1px solid grey;">
	    	<div style="font-weight: bold; font-size: 15px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
				회원 강제탈퇴 확인
			</div>
			
			<div style="display: flex;flex-direction: column;align-items: center; padding: 30px;">
				<div style="font-size: 16px; padding-bottom: 25px;">회원 강제탈퇴 사유를 작성하세요.</div>
				<input type="hidden" id="id" name="id" value="">
				<textarea id="outReason" name="outReason" rows="10" cols="50"></textarea>
				<div style="display: flex; align-items: center; justify-content: center; padding-top: 20px;">
					<input type="button" value="확인" class="button" onclick="setOutMsg()">
					<input type="button" value="취소" class="button" onclick="setHide('popup2', 'hide')">
				</div>
			</div>
		</div>
		</form>
	</div>
	
	<!-- 팝업창 : 탈퇴 처리 완료 -->
	<div id="popup3" class="hide popup" align="center" style="margin-top: 100px;">
		 <div style="width: 450px; border: 1px solid grey;">
	    	<div style="font-weight: bold; font-size: 15px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
				회원 강제탈퇴 확인
			</div>
			
			<div>
				<div style="font-size: 16px; display: flex; justify-content: center; 
				align-items: center; height: 70px ;">해당 회원이 강제탈퇴 되었습니다.</div>
				
				<div style="display: flex; align-items: center; justify-content: center; padding-bottom: 10px;">
					<input type="button" value="확인" class="button" onclick="setFinal()">
				</div>
			</div>
		</div>
	</div>
	
	<!-- 팝업창 : 탈퇴 처리 실패 -->
	<div id="popup4" class="hide popup" align="center" style="margin-top: 100px;">
		 <div style="width: 450px; border: 1px solid grey;">
	    	<div style="font-weight: bold; font-size: 15px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
				회원 강제탈퇴 확인
			</div>
			
			<div>
				<div style="font-size: 16px; display: flex; justify-content: center; 
				align-items: center; height: 70px ;">해당 회원이 강제탈퇴 되지 않았습니다.</div>
				
				<div style="display: flex; align-items: center; justify-content: center; padding-bottom: 10px;">
					<input type="button" value="확인" class="button" onclick="setFail()">
				</div>
			</div>
		</div>
	</div>
	
	<!-- 팝업창 : 탈퇴 사유 상세 -->
	<div id="popup4" class="hide popup" align="center" style="margin-top: 100px;">
	   <div style="width: 450px; border: 1px solid grey;">
	    	<div style="font-weight: bold; font-size: 15px; border-bottom: 2px solid #ddd; padding: 15px;" align="left">
				회원 강제탈퇴 확인
			</div>
			
			<div>
				<div style="font-size: 16px; display: flex; justify-content: center; 
				align-items: center; height: 70px;">불법적인 글을 작성함.</div>
				
				<div style="display: flex; align-items: center; justify-content: center; padding-bottom: 10px;">
					<input type="button" value="확인" class="button" onclick="closePopup('popup4')">
				</div>
			</div>
		</div>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<!-- <script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script> -->
	<script src="assets/demo/chart-area-demo.js"></script>
	<script src="assets/demo/chart-bar-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
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
