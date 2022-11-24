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

<link href="http://localhost/salad_mvc/resources/mng_css/styles.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />


<script src="http://localhost/salad_mvc/resources/mng_js/scripts.js"></script>
<script src="http://localhost/salad_mvc/resources/mng_assets/demo/chart-area-demo.js"></script>
<script src="http://localhost/salad_mvc/resources/mng_assets/demo/chart-bar-demo.js"></script>
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<script src="http://localhost/salad_mvc/resources/mng_js/datatables-simple-demo.js"></script>

<!-- JQuery google CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<style type="text/css">
	.button2{
		width: 14%; 
		background-color: white; 
		border: 1px solid grey;
	}
	
	.button2:hover{
		background-color: #f0f0f0;
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
	
	.dataTable-wrapper{
		padding: 10px 70px;
	}
	
	.dataTable-table > :not(caption) > * > *{
		box-shadow: none;
	}
	
	.dataTable-table > tbody > tr > td{
		text-align: left;
		border-left: none;
	}
	
	.dataTable-table > tbody > tr > th{
		background-color: #f0f0f0;
	}
	
	th{
		border-right: 1px solid black;
	}
	
	.imgBig{
		width: 200px; 
		height: 200px; 
		margin: 20px;
	}
	
	.imgSmall{
		width: 100px; 
		height: 100px; 
		margin: 20px;
	}
	
</style>

<script type="text/javascript">
idx=1;//파일 찾아보기 인덱스
bodyIdx=1;//파일 찾아보기 인덱스

firstView=true;//초기 화면 카테고리 세팅

$(function(){
	
	idx=${ prdImgListSize==0?1:prdImgListSize};
	bodyIdx=${ prdBodyImgListSize==0?1:prdBodyImgListSize};
	
	setMainCate();//메인 카테고리
	
	setSubCate();//서브 카테고리
	
	$("#mainCate").change(function(){//메인 카테고리 선택 시 해당 서브 카테고리 불러오기
		if($("#mainCate").val() != "0"){
			setSubCate();
		}//end if
	});//change
	
	$("#addUploadBtn").click(function() {//이미지 추가 버튼 누를 시
		gd_add_upload("");
	});
	
	$("#addUploadBodyBtn").click(function() {//이미지 추가 버튼 누를 시
		gd_add_upload("Body");
	});
	
	//할인, 정가 입력될 경우 계산하여 할인된 가격 출력 경우
	$("#prdPrice").keyup(function() {
		setPrice();
	});
	
	$("#prdDiscount").keyup(function() {
		setPrice();
	});
	
	$("#backBtn").click(function() {//이전 버튼 누를 시
		location.href="http://localhost/salad_mvc/mng_prd.do";
		/* history.back(); */
	});
	
	$("#editBtn").click(function() {//수정 버튼 누를 시
		nullChk();
	});
	
})//ready

function loginChk() {
	
	<c:if test="${ sessionScope.mngId eq null }">
		alert("로그인을 해주세요.");
		location.href="http://localhost/salad_mvc/mng_index.do";
		return false;
	</c:if>
	
}//loginChk

function setMainCate(){
	$.ajax({
		url:"http://localhost/salad_mvc/mng_prd_main_cate_ajax.do",
		dataType: "json",
		async:false,
		error: function( xhr ){
			alert("메인 카테고리를 조회하는 문제 발생했습니다.");
			console.log(xhr.status);
		},
		success: function( jsonObj ) {
			if(jsonObj.result){
				var mainCateSel=document.categoryFrm.mainCate;
				
				$.each(jsonObj.mainCateData, function(i, json){
					mainCateSel.options[i+1]=new Option( json.mainCateName, json.mainCateNum);
				})//each
				
				if(firstView) {//초기 화면일 경우
					$("#mainCate").val("${prdData.mainCateNum}").prop("selected", true);//메인 카테고리 세팅
				}//end if
				
			}//end if
		}//success
	})//ajax
}//setMainCate

function setSubCate(){
	$.ajax({
		url:"http://localhost/salad_mvc/mng_prd_sub_cate_ajax.do",
		data:"mainCateNum="+$("#mainCate").val(),
		dataType:"json",
		error:function( xhr ){
			alert("서브 카테고리를 조회하는 문제 발생했습니다.");
			console.log(xhr.status);
		},
		success: function( jsonObj ) {
			if(jsonObj.resultFlag){
				var subCateSel=document.categoryFrm.subCate;
				//<select>의 <option>을 하나만 남겨두고 초기화
				subCateSel.length=1;
				
				$.each(jsonObj.subCateData, function(i, json){
					subCateSel.options[i+1]=new Option( json.subCateName, json.subCateNum);
				});//each
				
				if(firstView) {//초기 화면일 경우
					$("#subCate").val("${prdData.subCateNum}").prop("selected", true);//서브 카테고리 세팅
					firstView=false;//초기 화면 카테고리 세팅 끝
				}//end if
				
			}//end if
		}//success
	})//ajax
}//setSubCate


////////////////////파일 업로드 시작///////////////////

function gd_add_upload(imgType){
	
	var output="";
	
	if($("#upload"+imgType+"Box div").length>4){//img 파일 갯수 제한
		return;
	}//end if
	
	if(imgType == "") {
		idx++;
		
		output ="<div class='fileUploadSec' style='margin-top: 15px;'>";
		output +="<img id='imgOutput"+idx+"' class='imgSmall' src=''>";
		output +="<input type='file' id='upFile"+idx+"' name='upFile"+idx+"' onchange=\"setFile('"+idx+"', '')\" class='file' title='찾아보기' />";
		output +="<input type='hidden' class='file_text' title='파일 첨부하기' readonly='readonly' id='prdImg"+idx+"' name='prdImgArr'/>";
		output +="<input type='button' onclick=\"gd_remove_upload(this)\" class='button2' value='- 삭제'>";
		output +="</div>";
		
	}else if(imgType == "Body") {
		bodyIdx++;
		
		output ="<div class='fileBodyUploadSec' style='margin-top: 15px;'>";
		output +="<img id='imgBodyOutput"+bodyIdx+"' class='imgSmall' src=''>";
		output +="<input type='file' id='upBodyFile"+bodyIdx+"' name='upBodyFile"+bodyIdx+"' onchange=\"setFile('"+bodyIdx+"', 'Body')\" class='file' title='찾아보기' />";
		output +="<input type='hidden' class='file_text' title='파일 첨부하기' readonly='readonly' id='prdBodyImg"+bodyIdx+"' name='prdBodyImgArr'/>";
		output +="<input type='button' onclick=\"gd_remove_upload(this)\" class='button2' value='- 삭제'>";
		output +="</div>";
		
	}//end else
	
	$("#upload"+imgType+"Box").last().append(output);
}//gd_add_upload

function gd_remove_upload( obj ){
	
	$( obj ).parent().remove();
	
}//gd_remove_upload

function setFile(idx, imgType) {//이미지의 파일명과 이미지 미리보기
	
	//미리보기 이미지
	var fReader = new FileReader();
	fReader.readAsDataURL($("#up"+imgType+"File"+idx)[0].files[0]);
	fReader.onloadend = function(event) {
		$("#img"+imgType+"Output"+idx).attr("src", event.target.result);
	}//end function
	
	//파일 경로 삭제
	var fileValue = $("#up"+imgType+"File"+idx).val().split("\\");
	var fileName = fileValue[fileValue.length-1]; // 파일명
	
	$("#prd"+imgType+"Img"+idx).val(fileName);
	
}//setFileName

////////////////////파일 업로드 끝///////////////////

function setPrice(){
	var resultPrice=0;//할인이 적용된 판매가
	
	var prdPrice=$("#prdPrice").val();
	var prdDiscount=$("#prdDiscount").val();
	
	resultPrice=prdPrice-(prdPrice*(prdDiscount/100));
	
	var tempPrice=Math.floor(resultPrice); //단위
	const resultPrice2=tempPrice.toLocaleString('ko-KR');
	
	$("#resultPrice").html(resultPrice2);//계산된 결과 화면에 출력
}//setPrice

function nullChk(){
	
	if(!loginChk()){
		return;
	}//end if
	
	if($("#subCate").val()=="0") {
		alert("태그를 선택해주세요.");
		$("#subCate").focus();//커서 이동
		return;
	}//end if
	
	if($("#prdName").val().trim()=="") {
		alert("상품명을 입력해주세요.");
		$("#prdName").val("");//화이트 스페이스 초기화
		$("#prdName").focus();//커서 이동
		return;
	}//end if
	
	if($("#prdImg0").val().trim()=="") {
		alert("메인 사진의 대표이미지를 등록해주세요.");
		return;
	}//end if
	
	if($("#prdBodyImg0").val().trim()=="") {
		alert("본문설명 사진의 대표이미지를 등록해주세요.");
		return;
	}//end if
	
	if($("#prdDiscount").val().trim()=="") {
		alert("할인 입력해주세요.");
		$("#prdDiscount").val("");//화이트 스페이스 초기화
		$("#prdDiscount").focus();//커서 이동
		return;
	}//end if
	
	if($("#prdPrice").val().trim()=="") {
		alert("원가를 입력해주세요.");
		$("#prdPrice").val("");//화이트 스페이스 초기화
		$("#prdPrice").focus();//커서 이동
		return;
	}//end if
	
	if(!imgChk("prdImg0")){// 선택한 파일이 이미지 형식인지 검사
		alert("이미지 파일을 선택해주세요.");
		return;
	}//end if
	
	if(!imgChk("prdBodyImg0")){// 선택한 파일이 이미지 형식인지 검사
		alert("이미지 파일을 선택해주세요.");
		return;
	}//end if
	
	//hidden에 값 set
	$("#hiddSubCateNum").val($("#subCate").val());
	
	
	if(!confirmMsg()) {//확인 메시지
		return;
	}//end if
	
}//nullChk

function imgChk(id){
	//확장자가 jpg, gif, jpeg, png, bmp만 업로드 가능하도록 JS 코드 작성
	
	var fileName=$("#"+id).val();
	
	console.log(fileName);
	
	if(fileName==""){//이미지 파일 선택을 안할 경우 임의의 이미지 파일을 추가
		fileName="no.png";
	}//end if
	
	var blockExt="jpg,gif,jpeg,png,bmp,JPG,GIF,JPEG,PNG,BMP".split(",");
	var flag=false;
	
	var fileExt=fileName.substring(fileName.lastIndexOf(".")+1);
	for(var i=0; i < blockExt.length; i++){
		if(blockExt[i] == fileExt){
			flag=true;
		}//end if
	}//end for
	
	return flag;
	
}//chkImg

function confirmMsg(){
	if (confirm("상품을 수정하시겠습니까?")) {//예
		
		edit();//수정
		
  	} else {//취소
     	 return false;
  	}//end else
}//confirmMsg

function edit() {//수정
	
	var form = $("#editFrm")[0];
    var formData = new FormData(form);

	$.ajax({
		url : "edit_change_prd_process.do",
		data : formData,
		type: "POST",
		contentType: false,               
	    processData: false,               
	    enctype : "multipart/form-data",
		error:function( xhr ){
			alert("상품 수정 처리 중 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success : function(xh){
			alert("해당 상품이 수정 되었습니다.");
			location.href="http://localhost/salad_mvc/mng_prd_detail.do?prdNum=${param.prdNum}";
		}
	});
	
}//edit

</script>

</head>

<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	    <!-- Navbar Brand-->
	    <a class="navbar-brand ps-3" style="padding:10px 0 0 0; "
	    href="index.html"><img alt="img" src="images/saladLogo.png" height="50px"></a>
	    <div class="ms-auto" style="color:white;">3조 관리자님,어서오세요.&nbsp;&nbsp;</div>
	    <!-- Navbar-->
	     <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
	        <li class="nav-item dropdown">
	            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
	            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
	                <li><a class="dropdown-item" href="#!">Logout</a></li>
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
		                <a class="nav-link" style="padding-bottom:28px;" href="http://localhost/salad_mvc/mng_dashboard.do">
		                    -대시보드
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div style="padding:28px 16px 28px 16px;"><a class="sb-sidenav-menu-heading heading-link" 
		                style="text-decoration-line:none; font-size:16px; padding:0;" 
		                href="http://localhost/salad_mvc/mng_member.do">회원 관리</a></div>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">상품 관리</div>
		                <a class="nav-link" href="http://localhost/salad_mvc/mng_prd.do">
		                    -상품 등록
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px;"href="http://localhost/salad_mvc/mng_rev.do">
		                    -상품 후기
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">주문 관리</div>
		                <a class="nav-link" href="http://localhost/salad_mvc/mng_order.do">
		                    -주문 관리
		                </a>
		                <a class="nav-link" style="padding-top:0;"href="http://localhost/salad_mvc/mng_cancel.do">
		                    -취소 관리
		                </a>
		                <a class="nav-link" style="padding-top:0; padding-bottom:28px" href="http://localhost/salad_mvc/mng_deli.do">
		                    -배송 관리
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">게시판 관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://localhost/salad_mvc/mng_notice.do">
		                    -공지사항
		                </a>
		                <hr style="width:90%; text-align:center; margin:auto;">
		                <div class="sb-sidenav-menu-heading">문의 관리</div>
		                <a class="nav-link" style="padding-bottom:28px;" href="http://localhost/salad_mvc/mng_qna.do">
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
							<img src="images/socialMedia.png" width="130px">
						</div>
						<div style="width:319px;"></div>
					</div>
				</div>
				
				<div class="dataTable-wrapper dataTable-loading no-footer searchable fixed-columns">
				<div class="dataTable-container">
					<table class="dataTable-table" style="width: 80%; margin: 20px auto;">
						<tbody>
							<tr>
								<th>카테고리</th>
								<td>
									<form name="categoryFrm" style="display: flex; margin-bottom: 10px;">
										<select name="mainCate" id="mainCate">
											<option value="0">---메인 카테고리---</option>
										</select>
										<select name="subCate" id="subCate">
											<option value="0">---서브 카테고리---</option>
										</select>
									</form>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				</div>
				
				<form name="eidtFrm" id="editFrm" action="edit_change_prd_process.do" method="post" enctype="multipart/form-data">
				<div class="dataTable-wrapper dataTable-loading no-footer searchable fixed-columns">
					<div class="dataTable-container">
						<table class="dataTable-table" style="width: 80%; margin: 20px auto;">
							<tbody>
								<tr>
									<th>상품명</th>
									<td><input type="text" id="prdName" name="prdName" placeholder="상품명을 입력해주세요." value="${ prdData.prdName }"></td>
								</tr>
								<tr>
									<th>메인 사진</th>
									<td id="uploadBox">
										<span><strong>대표이미지</strong></span>
										<div style="margin-top: 15px;">
											<img id="imgOutput0" class="imgBig" src="http://localhost/salad_mvc/common/images/product/${ prdData.thum }">
											<input type="file" id="upFile0" name="upFile0" onchange="setFile(0, '')" class="file" title="찾아보기"/>
											<input type="hidden" class="file_text" title="파일 첨부하기" readonly="readonly" value="${ prdData.thum }" id="prdImg0" name="thum"/>
										</div>
										<span><strong>보조이미지</strong></span>
										<div class="fileUploadSec" style="margin-top: 15px;">
											<img id="imgOutput1" class="imgSmall" src="http://localhost/salad_mvc/common/images/product/${ prdData.prdImgList[0]}">
											<input type="file" id="upFile1" name="upFile1" onchange="setFile(1, '')" class="file" title="찾아보기" />
											<input type="hidden" class="file_text" title="파일 첨부하기" readonly="readonly" value="${ prdData.prdImgList[0] }" id="prdImg1" name="prdImgArr"/>
											<input type="button" id="addUploadBtn" class="button2" value="+ 추가">
										</div>
										<c:if test="${ prdData.prdImgList ne null }">
											<c:forEach varStatus="status" var="prdImg" items="${ prdData.prdImgList }">
												<c:if test="${ !status.first }"><!-- 첫 번째 보조 이미지 X -->
													<div class="fileUploadSec" style="margin-top: 15px;">
														<img id="imgOutput${ status.index+1 }" class="imgSmall" src="http://localhost/salad_mvc/common/images/product/${ prdImg }">
														<input type="file" id="upFile${ status.index+1 }" name="upFile${ status.index+1 }" onchange="setFile('${ status.index+1 }', '')" class="file" title="찾아보기" />
														<input type="hidden" class="file_text" title="파일 첨부하기" readonly="readonly" id="prdImg${ status.index+1 }" value="${ prdImg }" name="prdImgArr"/>
														<input type="button" onclick="gd_remove_upload(this)" class="button2" value="- 삭제">
													</div>
												</c:if>
											</c:forEach>
										</c:if>
									</td>
								</tr>
								<tr>
									<th>본문설명(사진 첨부)</th>
									<td id="uploadBodyBox">
										<span><strong>대표이미지</strong></span>
										<div style="margin-top: 15px;">
											<img id="imgBodyOutput0" class="imgBig" src="http://localhost/salad_mvc/common/images/product/${ prdData.prdBodyThum }">
											<input type="file" id="upBodyFile0" name="upBodyFile0" onchange="setFile(0, 'Body')" class="file" title="찾아보기"/>
											<input type="hidden" class="file_text" title="파일 첨부하기" readonly="readonly" value="${ prdData.prdBodyThum }" id="prdBodyImg0" name="prdBodyThum"/>
										</div>
										<span><strong>보조이미지</strong></span>
										<div class="fileBodyUploadSec" style="margin-top: 15px;">
											<img id="imgBodyOutput1" class="imgSmall" src="http://localhost/salad_mvc/common/images/product/${ prdData.prdBodyImgList[0] }">
											<input type="file" id="upBodyFile1" name="upBodyFile1" onchange="setFile(1, 'Body')" class="file" title="찾아보기" />
											<input type="hidden" class="file_text" title="파일 첨부하기" readonly="readonly" value="${ prdData.prdBodyImgList[0] }" id="prdBodyImg1" name="prdBodyImgArr"/>
											<input type="button" id="addUploadBodyBtn" class="button2" value="+ 추가">
										</div>
										<c:if test="${ prdData.prdBodyImgList ne null }">
											<c:forEach varStatus="status" var="prdBodyImg" items="${ prdData.prdBodyImgList }">
												<c:if test="${ !status.first }"><!-- 첫 번째 보조 이미지 X -->
														<div class="fileBodyUploadSec" style="margin-top: 15px;">
															<img id="imgBodyOutput${ status.index+1 }" class="imgSmall" src="http://localhost/salad_mvc/common/images/product/${ prdBodyImg }">
															<input type="file" id="upBodyFile${ status.index+1 }" name="upFile${ status.index+1 }" onchange="setFile('${ status.index+1 }', 'Body')" class="file" title="찾아보기" />
															<input type="hidden" class="file_text" title="파일 첨부하기" readonly="readonly" id="prdImg${ status.index+1 }" value="${ prdBodyImg }" name="prdBodyImgArr"/>
															<input type="button" onclick="gd_remove_upload(this)" class="button2" value="- 삭제">
														</div>
													</c:if>
											</c:forEach>
										</c:if>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				<div class="dataTable-wrapper dataTable-loading no-footer searchable fixed-columns" style="width: 82%; margin: 0px auto;">
					<div class="dataTable-container">
					<table class="dataTable-table">
						<tbody>
							<tr>
								<th >할인</th>
								<td style="width: 25px; border-right: none; font-weight: bold;">
									<input type="text" id="prdDiscount" name="prdDiscount" placeholder="할인율 입력해주세요." value="${ prdData.prdDiscount }" maxlength="3">
								</td>
								<td style="border-right: none;">%</td>
								<td>미적용시 0을 입력해주세요</td>
							</tr>
							<tr>
								<th>원가</th>
								<td style="width: 25px; border-right: none; font-weight: bold;">
									<input type="text" id="prdPrice" name="prdPrice" placeholder="정가를 입력해주세요." value="${ prdData.prdPrice }" maxlength="7">
								</td>
								<td style="border-right: none;">원</td>
								<td></td>
							</tr>
							<tr>
								<th>판매가</th>
								<td style="width: 25px; border-right: none; font-weight: bold;">
									<span id="resultPrice"><fmt:formatNumber value="${ prdData.prdPrice-(prdData.prdPrice*(prdData.prdDiscount/100)) }" pattern="#,#00"/></span>
								</td>
								<td style="border-right: none;">원</td>
								<td></td>
							</tr>
						</tbody>
					</table>
					</div>
					<div align="center" style="margin: 20px 0px;">
						<input type="button" id="backBtn" class="button" value="이전">
						<input type="button" id="editBtn" class="button" value="수정">
					</div>
				</div>
				<input type="hidden" id="hiddPrdNum" name="prdNum" value="${ param.prdNum }"/>
				<input type="hidden" id="hiddSubCateNum" name="subCateNum"/>
				</form>
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
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
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
