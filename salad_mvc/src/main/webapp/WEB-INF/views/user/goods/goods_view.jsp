<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html>
<head>
    <title>포켓샐러드 - 내가 찾던 식단관리!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="" />
    <meta name="description" content="신선한 샐러드를 언제 어디서나 간편하게 즐기는 포켓샐러드! 라이스&포켓닭까지 함께 즐겨보세요" />
    <meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트도시락, 포켓닭, 탄단지, 다이어트, 다이어트식단, 식단관리" />
    <meta name="csrf-token" content="MTY2NjYyMDE2OTYxMjE4NzM2MTY0Mjk1OTAyMjU0MjI5MDQzNDcwMzky" />
   	<meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="product">
    <meta property="og:title" content="4주 정기배송 샐러드 주 5일">
    <meta property="og:image" content="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/1000000239_detail_071.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/goods/goods_view.jsp?goodsNo=1000000239&amp;mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En">
    <meta property="og:description" content="포켓샐러드">
    <meta property="og:image:width" content="570">
    <meta property="og:image:height" content="570">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="4주 정기배송 샐러드 주 5일">
    <meta name="twitter:image" content="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/1000000239_detail_071.jpg">

    <link rel="icon" href="/data/common/favicon.ico" type="image/x-icon" />

    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/reset.css?ts=1647562972">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/common.css?ts=1659591193">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/layer/layer.css?ts=1666243530">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/layout/layout.css?ts=1662982669">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/list.css?ts=1662515260">
	<!-- <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css?ts=1644979979"> -->
	<link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/goods.css?ts=1660635983" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.css?ts=1662105386" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/custom.css?ts=1660281178" />

    <!-- 온노마드 css 추가 -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/nd_custom.css?ts=1662983189" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/swiper.css?ts=1610501674" />

    <!-- Add style : start -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/js/jquery/chosen-imageselect/src/ImageSelect.css" />
    <!-- Add style : end -->

    <script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_gettext.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/underscore/underscore-min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/validation/jquery.validate.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/validation/additional-methods.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/numeral/numeral.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/global/accounting.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/global/money.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.jquery.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/placeholder/placeholders.jquery.min.js?ts=1610501674"></script>
    <![if gt IE 8]>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/copyclipboard/clipboard.min.js?ts=1610501674"></script>
    <![endif]>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/vticker/jquery.vticker.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_ui.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery.iframeResizer.min.js?ts=1649920172"></script>
    <script type="text/javascript" defer src="http://localhost/salad_mvc/resources/js/slider/slick/slick.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/swiper.js?ts=1610501674"></script>
    
     <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_common.js?ts=1610501674"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-24T23%3A02%3A49%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22goods_view.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery-cookie/jquery.cookie.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/slider/slick/slick.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_goods_view.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/chosen-imageselect/src/ImageSelect.jquery.js?v=2020120404"></script>
    <!-- Add script : end -->

<!-- 검색 시작 -->
<script type="text/javascript">
    $(function(){
    	
    	$("#topSearchBtn").click(function(){
    		searchEvent();
    	})//click
    	
    	$("#keyword").keydown(function(keyNum){
    		//현재의 키보드의 입력값을 keyNum으로 받음
    		if(keyNum.keyCode == 13){ //keyCode=13 : Enter
    			$("#topSearchBtn").click()	
    		}//end if
    	});//keydown
    	
    });//ready
    
    function searchEvent() {//검색 클릭 시 검색 화면으로 이동
    	location.href="http://localhost/salad_mvc/goods_search.do?keyword="+$("#keyword").val();
    }//searchEvent
    
</script>
<!-- 검색 끝 -->


<!-- 전체 카테고리 시작 -->
<script type="text/javascript">
    $(function(){
    	
    	$("#allMenuToggle").click(function(){
    		$("#gnbAllMenu").toggle();
    	});//click
    	
    });//ready
    
</script>
<!-- 전체 카테고리 끝 -->

<script type="text/javascript">
$(function(){
	
	setPrdCnt("none");//상품의 수량에 따른 총 합계
	
	$("#plusBtn").click(function(){//+버튼 누를 경우
		setPrdCnt("plus");//상품의 수량에 따른 총 합계
	})//click
	
	$("#minusBtn").click(function(){//-버튼 누를 경우
		setPrdCnt("minus");//상품의 수량에 따른 총 합계
	})//click
	
	$("#prdCnt").focusout(function(){
		setPrdCnt("input");//상품의 수량에 따른 총 합계
	})//keyup
	
	$("#cartBtn").click(function(){//장바구니 버튼 클릭 시
		frmCart();
	})//click
	
	$("#addOrderBtn").click(function(){//바로 구입 클릭 시
		
		addOrder();
		
	})//click
	
	$(".orderBtn").on("click", function () {

		   
		         
		});//orderBtn
	
    $("#latestBtn").click(function(){//최신순 정렬
    	
    	setLatestSort();
    	
    })//click
    
    $("#rankBtn").click(function(){//랭킹순 정렬
    	
    	setRankSort();
    	
    })//click
    
    setWishBtn("formSet");//찜 버튼
    
    setRevList(1);//ajax 후기 리스트
    
    setQnaList(1);//ajax 상품문의 리스트
    
});//ready

function loginChk() {
	
	var loginFlag=true;
	
	<c:if test="${ sessionScope.userId eq null }">
		alert("로그인이 필요합니다.");
		loginFlag=false;
	</c:if>
	
	return loginFlag;
}//loginChk

function setDn(id){
	$( "#"+id ).removeClass( "dn" );
}//setDn

function frmCart(){
	
	if(!loginChk()){
		return;
	}//end if
	
	//form으로 보낼 값을 hidden에 set
	$("#cartPrdNum").val( ${param.prdNum} ); //제품 번호
	$("#cartPrdCnt").val($("#prdCnt").val());//수량
	
	 var params = $("#cartFrm").serialize();
		$.ajax({
			url : "add_cart_process.do",
			data : params,
			error:function( xhr ){
				console.log(xhr.status);
			},
			success : function(jsonObj){
				
				var msgOutput="<p class='success'><strong>상품이 장바구니에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>";
				
				if(jsonObj.editCnt!=null) {
					msgOutput="<p class='success'><strong>상품이 장바구니에 이미 등록되어 수량을 추가하였습니다.</strong><br>바로 확인하시겠습니까?</p>";
				}//end if
				
				setDn("layerDim"); //선택방지 화면 Display 보이도록
				setDn("addCartLayer");//장바구니 팝업 창 Display 보이도록
				$("#addCartMsg").html(msgOutput);//장바구니 팝업 메시지
			}//success
		});//ajax
}//frmCart

function moveCart(){//장바구니로 이동
	if(!loginChk()){
		return;
	}//end if
	
	location.href="http://localhost/salad_mvc/cart.do";
}//moveChar

function addOrder(){//바로 구매
	
	if(!loginChk()){
		return;
	}//end if
	
	var formContents="";
	
	var prdNumInput = "<input name='orders[0].prdNum' type='hidden' value='${param.prdNum}'>";//제품 번호
		formContents += prdNumInput;
	var cartPrdCntInput = "<input name='orders[0].cartPrdCnt' type='hidden' value='" + $("#prdCnt").val() + "'>";
		formContents += cartPrdCntInput;

	   $("#orderFrm").html(formContents);
	   $("#orderFrm").submit();
	
}//addOrder

function eventWishBtn(){//찜 버튼 누를 경우
	if(!loginChk()){
		return;
	}//end if
	
	console.log("찜 버튼");
	
	setWishBtn("eventSet");//찜 버튼 이벤트로 ajax 실행
}//setWishBtn

function setPrdCnt(type){
	var cnt = parseInt($("#prdCnt").val());
		  
	// 더하기/빼기
	if(type == 'plus') {
		cnt = cnt + 1;
	}else if(type == 'minus' && cnt > 1)  {
		cnt = cnt - 1;
	}else if(type == 'none' || cnt > 0) {
		/* 패스 하는 경우 */
	}else {
		var msg="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0보다 큰 수를 입력해 주세요."
		$("#prdCntMsg").show();
		$("#prdCntMsg").html(msg);
		
		$("#prdCntMsg").fadeOut(2000);//2초 후 사라짐
		
		$("#prdCnt").val(1);
		cnt = 1;
	}//end else
	
	var totalPrice=Math.floor(${ prdData.prdPrice-(prdData.prdPrice*(prdData.prdDiscount/100)) }*cnt);
		  
	const totalPriceOutput=totalPrice.toLocaleString('ko-KR');
  		
	$("#prdCnt").val(cnt);
	$("#totalPrice").html( totalPriceOutput );
}//setPrdCnt

/**
 * 메인 이미지 변경
 *
 * @param string keyNo 상품 배열 키값
 */
function gd_change_image(keyNo, type) {
    if (typeof keyNo == 'string') {
        var detailKeyID = new Array();
        	detailKeyID[0] = "<img src=\"http://localhost/salad_mvc/common/images/product/${ prdData.thum }\" width=\"570\"  class=\"middle\"  />";
        <c:forEach varStatus="prdImgStatus" var="prdImg" items="${ prdData.prdImgList }">
        	detailKeyID[${ prdImgStatus.count }] = "<img src=\"http://localhost/salad_mvc/common/images/product/${ prdImg }\" width=\"570\"  class=\"middle\"  />";
        </c:forEach>

        var magnifyKeyID = new Array();
        magnifyKeyID[0] = "<img src=\"http://localhost/salad_mvc/common/images/product/${ thum }\" width=\"570\" class=\"middle\"  />";

        if (type == 'detail') {
            $('#mainImage').html(detailKeyID[keyNo]);
        } else {
            $('#magnifyImage').html(magnifyKeyID[keyNo]);
        }
    }
}//gd_change_image

function setLatestSort() {//최신순 정렬
	$("#latestBtn").addClass("on");
	$("#rankBtn").removeClass("on");
	if($("#sortType").val() != "latest" || $("#orderBy").val() != "desc") {
		$("#sortType").val("latest");
		$("#orderBy").val("desc");
	}else {
		$("#sortType").val("latest");
		$("#orderBy").val("asc");
	}//end else
		
	setRevList(1);//ajax 후기 리스트
}//setLatestSort

function setRankSort() {//랭킹순 정렬
	$("#latestBtn").removeClass("on");
	$("#rankBtn").addClass("on");
	if($("#sortType").val() != "rank" || $("#orderBy").val() != "desc") {
		$("#sortType").val("rank");
		$("#orderBy").val("desc");
	}else {
		$("#sortType").val("rank");
		$("#orderBy").val("asc");
	}//end else
		
	setRevList(1);//ajax 후기 리스트
}//setRankSort

function gd_open_write_popup(writeType){
	
	if(!loginChk()){
		return;
	}//end if
	
	var leftVal=(document.body.offsetWidth / 2) - (100 / 2);
	var topVal=(window.screen.height / 2) - (100 / 2);
	
	var writeURL="add_rev_write.do";//후기 작성 팝업 창 URL
	
	if(writeType=="goodsqa") {
		writeURL="add_qna_write.do";//상품 문의 작성 팝업 창 URL
	}//end if
	
	window.open("http://localhost/salad_mvc/board/"+writeURL+"?prdNum=${ param.prdNum }", "포켓 상품", "width=800, height=750, left="+leftVal+", top="+topVal+"");
}//gd_open_write_popup

function gdqna_open_detail_popup(qnaNum){
	
	if(!loginChk()){
		return;
	}//end if
	
	var leftVal=(document.body.offsetWidth / 2) - (100 / 2);
	var topVal=(window.screen.height / 2) - (100 / 2);
	
	window.open("http://localhost/salad_mvc/qna_detail.do?prdNum=${ param.prdNum }&qnaNum="+qnaNum, "상품문의 상세보기", "width=800, height=750, left="+leftVal+", top="+topVal+"");
}//gd_open_write_popup

function setWishBtn(setFlag){
	$.ajax({
		url:"wish_ajax.do",
		data:"prdNum=${ param.prdNum }&wishFlag="+$("#wishFlag").val()+"&setFlag="+setFlag,
		dataType:"json",
		error:function( xhr ){
			alert("찜 버튼 처리 중 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			var wishIcon="s_detail_like_icn.png"
			if(jsonObj.wishFlag) {
				wishIcon="s_detail_like_chk_icn.png";
			}//end if
			/* $("#wishImg").attr("src","http://localhost/salad_mvc/resources/images/main/"+wishIcon); */
			var output="<input type=\"button\" id=\"wishBtn\" onclick=\"eventWishBtn()\" class=\"btn_add_wish\" style=\"background:url('http://localhost/salad_mvc/resources/images/main/"+wishIcon+"') no-repeat 0 0; border:0 none; font-size:0; width:42px;height:42px;\"/>"
			$("#wishFlag").val(jsonObj.wishFlag);
			$("#wishBtnSpan").html(output);
		}//success
	})//ajax
}//setRevList

function setRevList(currentPage){
	$.ajax({
		url:"rev_list_ajax.do",
		data:"prdNum=${ param.prdNum }&currentPage="+currentPage+"&rangeType="+$("#rangeType").val()+"&sortType="+$("#sortType").val()+"&orderBy="+$("#orderBy").val(),
		dataType:"json",
		error:function( xhr ){
			alert("후기 리스트를 불러오는 중에 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			/* 페이징 테이블 */
			$("#revListDiv").show();
			var tbOutput="<table style='width: 100%' class='reviews_table_type'>";
			if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					tbOutput+="<tr class='js_data_row'>";
					tbOutput+="<td class='board_tit'>";
					
					tbOutput+="<a href='#void' onclick='revPopup("+json.revNum+")'>";
					tbOutput+="<span class='info'>";
					
					var name= json.name;//이름 마스킹
					name=( name.length < 3 ? name.replace(/(?<=.{0})./gi, "*") : name.replace(/(?<=.{1})./gi, "*"));
					
					tbOutput+="<d class='wrter'>"+name+"</d>";
					tbOutput+="<d class='datenum'>"+json.revWriteDate+"</d>";
					tbOutput+="</span>";
					
					tbOutput+="<div class='under_review_imgbx'>";
					if(json.revImgList!=null) {
						 $.each(json.revImgList, function(i, revImg){
							tbOutput+="<img src='http://localhost/salad_mvc/common/images/review/"+ revImg +"' style='max-width:90px;''/>";
						});//each
					}//end if
					tbOutput+="</div>";
					
					tbOutput+="<i class='js_btn_view_new '>";
					tbOutput+="<span class='pdt_name'>${ prdData.prdName }</span>";
					
					revTitle=(json.revTitle.length>20?json.revTitle.substring(0,20)+"...":json.revTitle);//글자 수 초과시 자르기
					
					tbOutput+="<strong>"+revTitle+"</strong>";
					
					revCont=(json.revCont.length>40?json.revCont.substring(0,20)+"...":json.revCont);//글자 수 초과시 자르기
					
					tbOutput+="<span class='bdin_conts'><span class'bdin_conts_in'>"+revCont+"</span></span>";
					tbOutput+="<small>조회수 : "+json.revHits+"</small>";
					tbOutput+="</i>";
					tbOutput+="</a>";
					tbOutput+="</td>";
					tbOutput+="</tr>";
				});//each
			} else {
				tbOutput+="<tr><td>데이터가 존재하지 않습니다.</td></tr>";
			}//end else
			tbOutput+="</table>";
			
			$("#buyRevCnt").html("구매후기("+jsonObj.totalCount+")");
			$("#revListCnt").html("후기 "+jsonObj.totalCount+"건");
			$("#revListDiv").html(tbOutput);
			/* 페이징 버튼 */
			var pgOutput="<nav><ul>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li>";
				pgOutput+="<a href='#revListScroll' onclick='setRevList(" + 1 + ")' ";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li>";
				pgOutput+="<a href='#revListScroll' onclick='setRevList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				if(currentPage==i) {
					pgOutput+="<li class='on a_none'>";
				} else {
					pgOutput+="<li>";
				}//end else
				pgOutput+="<a href='#revListScroll' onclick='setRevList(" + i  + ")' >"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li>";
				pgOutput+="<a href='#revListScroll' onclick='setRevList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li>";
				pgOutput+="<a href='#revListScroll' onclick='setRevList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
			}//end if
			pgOutput+="</ul></nav>";
			
			pgOutput+="<input type='hidden' id='revCurrentPage' name='revCurrentPage' value='"+jsonObj.currentPage+"'/>"
			
			$("#revPageDiv").html(pgOutput);
		}//success
	})//ajax
}//setRevList

function revPopup(revNum) {//후기 팝업 띄우기
	
    $.ajax({
    	url:"rev_popup_ajax.do",
		data:"revNum="+revNum,
		dataType:"json",
		error:function( xhr ){
			alert("후기 팝업 창을 불러오는 중에 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success: function (jsonObj) {
		var output="";
		
		 output+="<div class='goods_rvin_dim' style='position: absolute; margin: 0px; top: 0px; left: 0px;'>";
		 output+="<div class='goods_rvin_pop'>";
		 output+="<div class='gds_rvin_popwrap'>";
		 output+="<span class='gds_rv_xbtn ly_close layer_close'><img src='http://localhost/salad_mvc/resources/images/main/close_btn.png' style='width: 30px;'/></span>";
		 output+="<div class='cell cell1'>";
		 output+="<div class='bx-wrapper' style='max-width: 100%;'><div class='bx-viewport' aria-live='polite' style='width: 100%; overflow: hidden; position: relative; height: 500px;'>";
		 output+="<ul>";
		 if(jsonObj.revImgThum != null) {//이미지가 존재 시
			 output+="<li><img src='http://localhost/salad_mvc/common/images/review/"+jsonObj.revImgThum+"' style='max-width:500px'></li>";
		 } else {//이미지가 없을 시 대체 사진
			 output+="<li><img src='http://localhost/salad_mvc/resources/images/main/noimage.jpg' style='max-width:500px'></li>";
		 }//end if
	     output+="</ul></div><div class='bx-controls bx-has-controls-direction'><div class='bx-controls-direction'><a class='bx-prev' href=''>Prev</a><a class='bx-next' href=''>Next</a></div></div></div>";
		 output+="</div>";
		 output+="<div class='cell cell2'>";
		 output+="<div class='cell-all'>";				
		 output+="<span class='conrow conrow1'>";				
		 output+="<span class='bst-in-data-inform'>";
		 
		 var name= jsonObj.name;//이름 마스킹
		name=( name.length < 3 ? name.replace(/(?<=.{0})./gi, "*") : name.replace(/(?<=.{1})./gi, "*"));
		 
		 output+="<b class='nm'>"+name+"</b>";
		 output+="<b class='rdate'>"+jsonObj.revWriteDate+"</b>";
		 output+="</span>";
	   	 output+="<span class='bst-in-date-prdnm'>";
	   	 output+="<small>조회수 : "+jsonObj.revHits+"</small>";
	   	 output+="</span>";
	     output+="</span>";
	     output+="<div class='inwrap'>";
	     output+="<dl class='pdt_info'>";
	     output+="<dt>"+jsonObj.revTitle+"</dt>";
	     output+="<dd><textarea style='border: 0px; width: 100%; height: 200px;' readonly='readonly'>"+jsonObj.revCont+"</textarea></dd>";
	     output+="</dl>";
	     output+="<div id='bx-pager' class='gds_rvin_pop_thumb'>";
	    
	     if(jsonObj.revImgList!=null) {
		     $.each(jsonObj.revImgList, function(i, revImg){
		    	 output+="<a href='#void' onclick=\"gd_change_image('${ prdImgStatus.count-1 }', 'detail')\" ><img src='http://localhost/salad_mvc/common/images/review/"+ revImg +"' style='max-width:40px;'></a>";
		    	 //<a href="javascript:gd_change_image('${ prdImgStatus.count-1 }', 'detail');">
		     });//each
	     }
	    output+="</div>";				 
	    output+="</div>";
	    output+="</div>";	
	    output+="</div>";		
	    output+="</div>";
	    output+="</div>";	
		output+="</div>";		
		output+="</div>";		
		
		$('#lyViewPop').removeClass('dn');
		$('#lyViewPop').empty().append(output);
		$('#lyViewPop').find('>div').center();
		setRevList($("#revCurrentPage").val());
    }//success
});
}//revNum

function setQnaList(currentPage){
	$.ajax({
		url:"qna_list_ajax.do",
		data:"prdNum=${ param.prdNum }&currentPage="+currentPage,
		dataType:"json",
		error:function( xhr ){
			alert("상품문의 리스트를 불러오는 중에 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			/* 페이징 테이블 */
			$("#qnaListDiv").show();
			var tbOutput="<table style='width: 100%' class='qna_table_type'>";
			tbOutput+="<tr><th>문의번호</th><th>문의 제목</th><th>이름</th><th>작성일</th><th>답변여부</th></tr>";
			if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					tbOutput+="<tr class='js_data_row'>";
					tbOutput+="<td>"+json.qnaNum +"</td>";
					
					var userId="${ sessionScope.userId }";//로그인된 아이디
					
					var qnaTitle="해당 글은 비밀 글입니다.";
					
					var tempOutput="<td>"+qnaTitle+"</td>";
					
					if(userId == json.id) {//로그인된 아이디와 게시판 작성한 아이디와 비교
						qnaTitle=(json.qnaTitle.length>20?json.qnaTitle.substring(0,20)+"...":json.qnaTitle);//글자 수 초과시 자르기
						tempOutput="<td><a href='#void' onclick='gdqna_open_detail_popup("+json.qnaNum+")'>"+qnaTitle+"</a></td>";
					}//end if
					
					tbOutput+=tempOutput;
					
					var name= json.name;//이름 마스킹
					name=( name.length < 3 ? name.replace(/(?<=.{0})./gi, "*") : name.replace(/(?<=.{1})./gi, "*"));
					
					tbOutput+="<td>"+name+"</td>";
					tbOutput+="<td>"+json.qnaWriteDate+"</td>";
					tbOutput+="<td><span>"+(json.qnaAFlag=='0'?"미완료":"답변완료")+"</span></td>";
					tbOutput+="</tr>";
				});//each
			}else {
				tbOutput+="<tr><td colspan='5'>데이터가 존재하지 않습니다.</td></tr>";
			}//end else
			tbOutput+="</table>";
			
			
			$("#qnaListCnt").html("상품문의("+jsonObj.totalCount+")");
			$("#qnaListDiv").html(tbOutput);
			/* 페이징 버튼 */
			var pgOutput="<nav><ul>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li>";
				pgOutput+="<a href='#void' onclick='setQnaList("+ 1 +")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li>";
				pgOutput+="<a href='#void' onclick='setQnaList("+ (jsonObj.startPage-1) +")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				if(currentPage==i) {
					pgOutput+="<li class='on a_none'>";
				} else {
					pgOutput+="<li>";
				}//end else
				pgOutput+="<a href='#void' onclick='setQnaList("+ i +")'>"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li>";
				pgOutput+="<a href='#void' onclick='setQnaList("+ (jsonObj.endPage + 1) +")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li>";
				pgOutput+="<a href='#void' onclick='setQnaList("+ (jsonObj.totalPage) +")'>&gt&gt;<!-- >> --></a></li>"
			}//end if
			pgOutput+="</ul></nav>";
			
			$("#qnaPageDiv").html(pgOutput);
		}//success
	})//ajax
}//setQnaList

function showPopup(hasFilter, id) {
	const popup = document.querySelector("#"+id);
	
	if(id=='popup3'){
		document.querySelector('#popup2').classList.add('hide');
	}else if(id=='popup4'){
		document.querySelector('#popup3').classList.add('hide');
	}
		
	if (hasFilter) {
		popup.classList.add('has-filter');
	} else {
		popup.classList.remove('has-filter');
	}
			
	popup.classList.remove('hide');
}

</script>
    
    <script type="text/javascript">
        // 고도몰5 통화정책
        var gdCurrencyDecimal = 0;
        var gdCurrencyDecimalFormat = '0';
        var gdCurrencyCode = 'KRW';
        var gdCurrencyAddDecimal = 0;
        var gdCurrencyAddDecimalFormat = '';
        var gdCurrencyAddCode = '';
        var gdLocale = 'ko';
        var gdCurrencySymbol = '';
        var gdCurrencyString = '원';

        // 환율변환 정책
        fx.base = "KRW";
        fx.settings = {
            from : "KRW",
            to : gdCurrencyCode
        };
        fx.rates = {
            "KRW" : 1,
            "USD" : 0.00069994680404289274,
            "CNY" : 0.00505203597049610993,
            "JPY" : 0.10453471597917668457,
            "EUR" : 0.00071439797682492963,
        }
    </script>

    <style type="text/css">
        body {
        }

        /* body > #wrap > #header_warp : 상단 영역 */
        #header_warp {
        }

        /* body > #wrap > #container : 메인 영역 */
        #container {
        }

        /* body > #wrap > #footer_wrap : 하단 영역 */
        #footer_wrap {
        }
        
        .a_none{
		pointer-events: none; /* (a링크를 비활성화 해준다.) */
		cursor: default; /* (마우스 커서를 가져갔을때의 모양을 지정하는 것으로 굳이 작성하지 않아도 된다.) */
		}
        
    </style>
    
    <script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/goods/goods_view.jsp&amp;Referer=https://www.pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
<!--
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-81300049-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-81300049-1');
</script>
-->

<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NS4V8GR');</script>
<!-- End Google Tag Manager --><!-- Facebook Pixel Code -->
        <script>
        !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
        n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
        document,'script','https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '1469865633321623', {}, {'agent':'plgodo'});
        fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=1469865633321623&ev=PageView&noscript=1"/></noscript>
        <!-- DO NOT MODIFY -->
        <!-- End Facebook Pixel Code --><!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id="></script>
        <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', '');
        </script>

        <!-- Criteo Loader -->
        <script type="text/javascript" src="//dynamic.criteo.com/js/ld/ld.js?a=34297" async="true"></script>
        <!-- END Criteo Loader -->
        
        <!-- Criteo Script -->
        <script type="text/javascript">
            window.criteo_q = window.criteo_q || [];
            var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
            window.criteo_q.push(
                { event: "setAccount", account: "34297" },
                { event: "setEmail", email: "9360d2e2e294fd47c5ec8d55c10ae8d557df6cc1f970be3774fd17fc987d2895", hash_method: "sha256" },
                { event: "setZipcode", zipcode: "" },
                { event: "setSiteType", type: deviceType },
                { event: "viewItem", item: "1000000239" }
            );
        </script>
        <!-- End Criteo Script -->

        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript">
            kakaoPixel('5900620314493041185').pageView();
        </script>
        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript">
            kakaoPixel('5900620314493041185').pageView();
            kakaoPixel('5900620314493041185').viewContent({
                id: '1000000239'
            });
        </script>
        <!-- *) 상품상세페이지 분석코드 -->
        <!-- AceCounter eCommerce (Product_Detail) v8.0 Start -->
        <script language='javascript'>
            var _pd = '4주 정기배송 샐러드 주 5일'; // 기본상품명, 확장상품명 사용 시 모두 ‘기본 상품명’  
            var _ct = '정기배송';  // 마지막 Depth의 최종 카테고리 (카테고리 설정이 복수인 경우 ‘대표카테고리명’)
            var _amt = '92400.00'; // (상품 판매가+옵션가+텍스트옵션가+추가상품가) – 총 할인금액
            var _pid = '1000000239'; // 제품 코드
        </script>
        <!-- AceCounter eCommerce (Product_Detail) v8.0 End --><!--AceCounter eCommerce GoodsViewBuy Start -->
        <script language='javascript'>
        function aCounterPageScriptGoodsView(modeStr) {
            //총합계 계산
            var allCnt =  0;
            $('#frmView input[name*=\'goodsCnt[]\']').each(function () {
                allCnt += parseFloat($(this).val());
                if ($('[id^=\'option_display_item\']').length > 0) {
                    if ($('[id^=\'add_goods_display_item\']').length > 0) {
                        $('[id^=\'add_goods_display_item\']').each(function(idx){
                            var optQuantity2 = $(this).find('.count input[name=\'addGoodsCnt[0][]\']').val();
                            allCnt += Number(optQuantity2);
                        });
                    }
                }else{
                    allCnt = 1;
                }
            });
            
            if (modeStr == 'd' || modeStr == 'pa') {
                AW_PRODUCT(allCnt);
            } else {
                AW_PRODUCT(allCnt);
            }
        }
        </script>
        <!--AceCounter eCommerce GoodsViewBuy End --><!-- This script is for AceCounter START --> 
        <script language='javascript'> 
            var _ag   = '0';            
            var _id   = 'tester21';  
            var _mr = 'single';       // ( 'single' , 'married') 
            var _gd = '';            //  ('man' , 'woman')  
        </script>
        <!-- AceCounter END --><!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
        <script language='javascript'>
	        var _AceGID=(function(){var Inf=['gtc4.acecounter.com','8080','BS1A45883992363','AW','0','NaPm,Ncisy','ALL','0'];
	        var _CI=(!_AceGID)?[]:_AceGID.val;var _N=0;var _T=new Image(0,0);if(_CI.join('.').indexOf(Inf[3])<0){ _T.src ='https://'+Inf[0]+'/?cookie'; _CI.push(Inf);  _N=_CI.length; } return {o: _N,val:_CI}; })();
	        var _AceCounter=(function(){var G=_AceGID;var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];if(G.o!=0){var _A=G.val[G.o-1];var _G=(_A[0]).substr(0,_A[0].indexOf('.'));var _C=(_A[7]!='0')?(_A[2]):_A[3];var _U=(_A[5]).replace(/\,/g,'_');_sc.src='https:'+'//cr.acecounter.com/Web/AceCounter_'+_C+'.js?gc='+_A[2]+'&py='+_A[4]+'&gd='+_G+'&gp='+_A[1]+'&up='+_U+'&rd='+(new Date().getTime());_sm.parentNode.insertBefore(_sc,_sm);return _sc.src;}})();
        </script>
        <!-- AceCounter Log Gathering Script End -->
	
	<!-- Google Shopping -->
<meta name="google-site-verification" content="B1k_K4m7BeZIxpICcT8HOm3BK9ixbegJkaPl0r8muA0" />
<!-- Google Shopping -->
	
	
	<!-- Global site tag (gtag.js) - Google Ads: 955276942 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-955276942"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-955276942');
</script>

	

</head>
	
	
<body id="body" class="body-goods body-goods-view pc"  >

	<div class="top_area"></div>
<div id="wrap" >

    <div id="header_warp" >
		
<script>

$(function() {
		
		$(window).scroll(function(){

			var divEl = $(".item_goods_sec");
			var divEl2 = $(".detail_btm_tab_menu_box");
			var navTop = divEl.offset();

			if($(window).scrollTop() <= 0 ){	

				$('#header_warp').removeClass('headerFix');
				$(".detail_btm_tab_menu_box").removeClass("head_on");

			}else if($(window).scrollTop() >= 0 )
			{
				$('#header_warp').addClass('headerFix');
				$(".detail_btm_tab_menu_box").removeClass("head_on");
			}
						
			if ($(window).scrollTop() >= navTop.top -100 )

			{	
				$('#header_warp').removeClass('headerFix');
				 $(".detail_btm_tab_menu_box").addClass("head_on");
			}

		});
});
	
	   
	</script>
	

	
	<link rel="stylesheet" href="http://localhost/salad_mvc/resources/css/selectric.css">
	<script src="http://localhost/salad_mvc/resources/js/jquery.selectric.js"></script>
	<script>
		$(function() {
		  $('.c-select').selectric();
		});
	</script>


<div id="header">
	  <div class="header_top">
		  <div class="header_top_cont">
			  	<div class="h1_logo">
				<div class="logo_main"><a href="http://localhost/salad_mvc/index.do" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/1bb87d41d15fe27b500a4bfcde01bb0e_33003.png"  alt="상단 로고" title="상단 로고"   /></a></div>
			</div>
            <!-- 멀티상점 선택 -->
            
            <!-- 멀티상점 선택 -->
			<div class="header_search">
				<div class="header_search_cont">

	<!-- 검색 폼 -->
	<div class="top_search">
        <fieldset>
            <legend>검색폼</legend>
            <div class="top_search_cont">
                <div class="top_text_cont">
                    <input type="text" id="keyword" name="keyword" class="top_srarch_text" value="">
                    <input type="image" src="http://localhost/salad_mvc/resources/images/main/sch_btn.png" id="topSearchBtn" class="btn_top_srarch" title="검색" value="검색">
                </div>
            <!-- //top_text_cont -->
                <div class="search_cont" style="display:none;"></div>
    		</div>
        </fieldset>
	</div>
			<!-- //top_search -->
	<!-- 검색 폼 -->

				</div>
				<!-- //header_search_cont -->
			</div>
			<!-- //header_search -->
			<div class="top_member_box">
				<ul class="list_1">
					<c:choose>
						<c:when test="${ sessionScope.userId eq null }">
							<li><a href="http://localhost/salad_mvc/login.do">로그인</a></li>
							<li><a href="http://localhost/salad_mvc/join.do">회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li><span style="color: #333; font-size: 15px;"><c:out value="${ sessionScope.userName }"/>님, 오늘도 건강한 하루 되세요.</span></li>
							<li><a href="http://localhost/salad_mvc/logout_process.do">로그아웃</a></li>
						</c:otherwise>
					</c:choose>
					<li class="cs">
						고객센터
						<div class="cs_in">
							<ul >
								<li><a href="http://localhost/salad_mvc/notice.do">공지사항</a></li>
								<li><a href="http://localhost/salad_mvc/goodsreview_list.do">리얼후기</a></li>								
							</ul>
						</div>
					</li>
				</ul>
				<ul class="list_2">
					<li><a href="http://localhost/salad_mvc/mypage_pass.do"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cs_icn.png" alt="마이페이지"></a></li>
					<li class="cart"><a href="http://localhost/salad_mvc/cart.do"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cart_icn.png" alt="장바구니"></a>
                    </li>

				</ul>
			</div>
        </div>
        <!-- //header_top_cont -->
    </div>
    <!-- //header_top -->


<!-- Google Shopping -->
<meta name="google-site-verification" content="B1k_K4m7BeZIxpICcT8HOm3BK9ixbegJkaPl0r8muA0" />
<!-- Google Shopping -->

<div class="gnb">
<div class="gnb_in">
<!-- 전체 카테고리 출력 레이어 시작 -->
<div class="gnb_all">
<strong>ALL CATEGORY</strong>
<a href="#void" id="allMenuToggle"><img src="http://localhost/salad_mvc/resources/images/common/btn/btn_allmenu_open.png" alt="전체메뉴보기"></a>
</div>

<div class="gnb_allmenu_wrap">
<div class="gnb_allmenu" id="gnbAllMenu" style="display:none" >
<div class="gnb_allmenu_box">
<ul>
	<c:forEach var="mainCate" items="${ mainCateList }">
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="http://localhost/salad_mvc/goods_list.do?mainCateNum=${ mainCate.mainCateNum }&subCateNum=0"><c:out value="${ mainCate.mainCateName }"/></a>
			<ul class="all_depth1">
				<c:forEach var="subCate" items="${ mainCate.subCateList }">
					<li><a href="http://localhost/salad_mvc/goods_list.do?mainCateNum=${ mainCate.mainCateNum }&subCateNum=${ subCate.subCateNum }"><c:out value="${ subCate.subCateName }"/></a></li>
				</c:forEach>
			</ul>
		</div>
	</li>
	</c:forEach>
</ul>
</div>
</div>
</div>

<!-- 전체 카테고리 출력 레이어 끝 -->

<div class="gnb_left"><a href="#PREV" class="active">PREV</a></div>
<div class="gnb_menu_box">
    <ul class="depth0 gnb_menu0">
        <c:forEach var="mainCate" items="${ mainCateList }">
        <li>
            <a href="http://localhost/salad_mvc/goods_list.do?mainCateNum=${ mainCate.mainCateNum }&subCateNum=0" ><c:out value="${ mainCate.mainCateName }"/></a>
        </li>
    	</c:forEach>
    </ul>
</div>
<div class="gnb_right"><a href="#NEXT">NEXT</a></div>

            <!-- 상단 카테고리 출력 시작 -->

            </div>


        </div>
        <!-- //gnb -->

        <!-- //gnb_allmenu -->

    <!-- //header_gnb -->
	<script>
		$(window).scroll(function(){
			if($(window).scrollTop() >= 128){
				$('#header_warp').addClass('headerFix');
			}else{
				$('#header_warp').removeClass('headerFix');
			}
		});
			 $(document).ready(function(){
            $(".header_banner_btn").click(function(){
                    $(".header_banner").css("display", "none");
            });
        });
	</script>
	<link rel="stylesheet" href="http://localhost/salad_mvc/resources/css/selectric.css">
	<script src="http://localhost/salad_mvc/resources/js/jquery.selectric.js"></script>
	<script>
		$(function() {
		  $('.c-select').selectric();
		});
	</script>
</div>


<!-- //header -->
    </div>
    <!-- //header_warp -->

    <div id="container">
        <div id="contents">
        <!-- 본문 시작 -->

            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->

<!-- regular -->

<div class="content_box">
    <div class="location_wrap">
        <div class="location_cont">
            <em><a href="#" class="local_home">HOME</a></em>
            <span>&nbsp;&gt;&nbsp;</span>
            <div class="location_select">
                <div class="location_tit"><a href="#"><span>정기배송</span></a></div>
                <ul style="display:none;">
                    <li><a href="./goods_list.jsp?cateCd=001"><span>정기배송</span></a></li>
                    <li><a href="./goods_list.jsp?cateCd=002"><span>샐러드</span></a></li>
                    <li><a href="./goods_list.jsp?cateCd=003"><span>간편식</span></a></li>
                    <li><a href="./goods_list.jsp?cateCd=004"><span>닭가슴살&간식</span></a></li>
                    <li><a href="./goods_list.jsp?cateCd=027"><span>식단 세트</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //location_wrap -->
    <!-- 상품 상단 -->
    <div class="item_photo_info_sec">
        <div class="item_photo_view_box">
            <div class="item_photo_view">
                <div class="item_photo_big">

				<%-- <a href="#void" id="mainImage" class="zoom_layer_open btn_open_layer">
					<img src="http://localhost/salad_mvc/common/images/${ prdData.thum }" width="570"  title="${ prdData.thum }" class="middle"  />
				</a>  --%>
				<span id="mainImage">
					<img src="http://localhost/salad_mvc/common/images/product/${ prdData.thum }" width="570"  title="${ prdData.thum }" class="middle"  />
				</span> 
                    <!-- <a href="#lyZoom" class="btn_zoom zoom_layer_open btn_open_layer">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/goods_icon/icon_zoom.png" alt=""></a> -->
                </div>
                <!-- <div id="testZoom" style="display:none">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/1000000239_magnify_033.jpg" width="570" alt="4주 정기배송 샐러드 주 5일" title="4주 정기배송 샐러드 주 5일" class="middle"  />
                </div> -->
                <!-- //item_photo_big -->
                
                <div class="item_photo_slide">
                    <ul class="slider_wrap slider_goods_nav">
                    <c:if test="${ prdData.prdImgList ne null }">
                       	 	<li><a href="javascript:gd_change_image('0', 'detail');"><img src="http://localhost/salad_mvc/common/images/product/${ prdData.thum }" width="68" title="${ prdData.thum }" class="middle"  /></a></li>
                    	<c:forEach varStatus="prdImgStatus" var="prdImg" items="${ prdData.prdImgList }">
                       	 	<li><a href="javascript:gd_change_image('${ prdImgStatus.count }', 'detail');"><img src="http://localhost/salad_mvc/common/images/product/${ prdImg }" width="68" title="${ prdImg }" class="middle"  /></a></li>
                        </c:forEach>
                    </c:if>
                    </ul>
                </div>
                <!-- //item_photo_slide -->
            </div>
            <!-- //item_photo_view -->
        </div>
            <div class="item_info_box">
                <!-- //time_sale -->
                <div  class="item_tit_detail_cont">
                    <div class="item_detail_tit">
                        <h3><c:out value="${ prdData.prdName }"/></h3>
                        <div class="btn_layer btn_qa_share_box">
							<span class="wish_btn_wrap" id="wishBtnSpan"><!-- <a href="#void" onclick="eventWishBtn()"><img id="wishImg" src="http://localhost/salad_mvc/resources/images/main/s_detail_like_icn.png"/></a> --></span>
							<input type="hidden" name="wishFlag" id="wishFlag" /> 
                            <!-- <span class="btn_gray_list target_sns_share"><a href="#lySns" class="btn_gray_mid"><em>공유</em></a></span> -->

                            <div id="lySns" class="layer_area" style="display:none;">
                                <div class="ly_wrap sns_layer">
                                    <div class="ly_tit">
                                        <strong>SNS 공유하기</strong>
                                    </div>
                                    <div class="ly_cont">
                                        <div class="sns_list">
                                            <ul>
                                                <li><a href="https://www.facebook.com/sharer/sharer.jsp?display=popup&redirect_uri=http%3A%2F%2Fwww.facebook.com&u=https%3A%2F%2Fwww.pocketsalad.co.kr%2Fgoods%2Fgoods_view.jsp%3FgoodsNo%3D1000000239%26mtn%3D1%255E%257C%255E%25EA%25B0%2580%25EC%259E%25A5%2B%25ED%2595%25AB%25ED%2595%259C%2B%25EC%2583%2590%25EB%259F%25AC%25EB%2593%259C%255E%257C%255En&t=4%EC%A3%BC+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1+%EC%83%90%EB%9F%AC%EB%93%9C+%EC%A3%BC+5%EC%9D%BC" data-width="750" data-height="300" data-sns="facebook" class="btn-social-popup"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/btn/sns-facebook.png" alt="페이스북 공유"><br /><span>페이스북</span></a></li>
                                                <li><a href="https://twitter.com/intent/tweet?text=4%EC%A3%BC+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1+%EC%83%90%EB%9F%AC%EB%93%9C+%EC%A3%BC+5%EC%9D%BC&url=https%3A%2F%2Fwww.pocketsalad.co.kr%2Fgoods%2Fgoods_view.jsp%3FgoodsNo%3D1000000239%26mtn%3D1%255E%257C%255E%25EA%25B0%2580%25EC%259E%25A5%2B%25ED%2595%25AB%25ED%2595%259C%2B%25EC%2583%2590%25EB%259F%25AC%25EB%2593%259C%255E%257C%255En" data-width="500" data-height="250" data-sns="twitter" class="btn-social-popup"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/btn/sns-twitter.png" alt="트위터 공유"><br /><span>트위터</span></a></li>
                                                <li><a href="https://www.pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.pocketsalad.co.kr%2Fgoods%2Fgoods_view.jsp%3FgoodsNo%3D1000000239%26mtn%3D1%255E%257C%255E%25EA%25B0%2580%25EC%259E%25A5%2B%25ED%2595%25AB%25ED%2595%259C%2B%25EC%2583%2590%25EB%259F%25AC%25EB%2593%259C%255E%257C%255En&description=%5B%ED%8F%AC%EC%BC%93%EC%83%90%EB%9F%AC%EB%93%9C%5D+4%EC%A3%BC+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1+%EC%83%90%EB%9F%AC%EB%93%9C+%EC%A3%BC+5%EC%9D%BC&media=https%3A%2F%2Fatowertr6856.cdn-nhncommerce.com%2Fdata%2Fgoods%2F21%2F02%2F07%2F1000000239%2F1000000239_detail_071.jpg" data-width="750" data-height="570" data-sns="pinterest" class="btn-social-popup"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/btn/sns-pinterest.png" alt="핀터레스트 공유"><br /><span>핀터레스트</span></a></li>
                                                
                <script type="text/javascript">
                $(function () {
                    $(".btn-social-popup").click(function(e){
                    e.preventDefault();
                    
                    gd_popup({
                        url: $(this).prop("href"),
                        target: "_blank",
                        width: $(this).data("width"),
                        height: $(this).data("height"),
                        resizable: "no",
                        scrollbars: "no"
                    });
                });
                });
                </script>
            
                                                
                    <li><a href="javascript:shareStory();" id="shareKakaoStoryBtn" data-sns="kakaostory"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/btn/sns-kakaostory.png" alt="카카오스토리 공유"><br /><span>카카오스토리</span></a></li>
                    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/kakao/kakao.min.js"></script>
                    <script type="text/javascript">
                        //<![CDATA[
                        /* Kakao.init(""); */
                        function shareStory() {
                            
                            Kakao.Story.share({
                                text: "",
                                url: "https://www.pocketsalad.co.kr/goods/goods_view.jsp?goodsNo=1000000239&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En"
                            });
                        }
                        //]]>
                    </script>
                
                                            </ul>
                                            <div class="sns_copy_url">
                                                <input type="text" value="https://www.pocketsalad.co.kr/goods/goods_view.jsp?goodsNo=1000000239&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En">
                                                <button type="button" class="gd_clipboard" title="상품주소" data-clipboard-text="https://www.pocketsalad.co.kr/goods/goods_view.jsp?goodsNo=1000000239&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En"><em>URL복사</em></button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- //ly_cont -->
                                    <a href="#close" class="ly_close"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/layer/btn_layer_close.png" alt="닫기"></a>
                                </div>
                                <!-- //ly_wrap -->
                            </div>
                            <!-- //layer_area -->
                        </div>
                        <!-- //btn_qa_share_box -->
                    </div>
                    <div class="item_detail_list item_detail_list_price item_detail_list2">
			<div class="item_detail_nums">
<!-- regular -->
                            <b class="per_cent_num"><c:out value="${ prdData.prdDiscount }%"/></b>

					<div class="itemin_num_right">
<!-- regular -->
<!-- regular -->
        						<div class="oriprice">
                                    <!-- <del><span>2,480,000</span>원 </del> -->
                                    <del><span><fmt:formatNumber value="${ prdData.prdPrice }" pattern="#,#00"/></span>원 </del>
        						</div>




                        <div class="item_price">
                            <div  class="dc_req_price">
								<fmt:formatNumber value="${ prdData.prdPrice-(prdData.prdPrice*(prdData.prdDiscount/100)) }" pattern="#,#00"/></strong><em>원</em></strong><!-- 글로벌 참조 화폐 임시 적용 -->
                            </div>

			</div>
                        </div>
</div>
                        <dl class="item_delivery">
                            <dt>배송정보 <span class="btn_layer if_deli_btn">
                                    <span class="btn_gray_list"><a href="#lyDelivery" class="btn_gray_small"><em>조건별배송</em></a></span>
                                    <div id="lyDelivery" class="layer_area" style="display:none;">
                                        <div class="ly_wrap delivery_layer">
                                            <div class="ly_tit">금액별배송비</div>
                                            <div class="ly_cont">
                                                <div class="delivery_list">
                                                    <ul>
                                                        <li>
                                                            0원 이상 ~ 200,000원 미만
                                                            <span>
                                                                3,000원
                                                            </span>
                                                        </li>
                                                        <li>
                                                            200,000원 이상
                                                            <span>
                                                                0원
                                                            </span>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- //ly_cont -->
                                            <a href="#close" class="ly_close"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/layer/btn_layer_close.png" alt="닫기"></a>
                                        </div>
                                    </div>
                                </span></dt>
                            <dd>
                                <strong>3,000원</strong>
                                <input type="hidden" name="deliveryCollectFl" value="pre" />
                                <strong> / 주문시결제(선결제)</strong>

                                <div class="delivery-detail">
                                    <input type="hidden" name="deliveryMethodFl" value="delivery" />
                                    <div class="delivery-division">택배</div>


                                    <div class="js-deliveryMethodVisitArea dn">
                                        방문 수령지 : 인천광역시 강화군 양도면 중앙로 971 
                                    </div>
                                </div>
                            </dd>
                        </dl>
                        <dl>
                            <dt></dt>
                            <dd>보이는 금액은 그린 샐러드로만 선택 시 금액입니다.</dd>
                        </dl>
                        <dl>
                            <dt></dt>
                            <dd>배송방법(새벽/일반) 및 [수령일 지정]은 주문서/결제 단계에서 선택 가능합니다.</dd>
                        </dl>

						<dl  class="reg_dl" >
                            <dt>총 수량</dt>
							<dd>
								<div class="form_element" style="width: 350px">
									<span class="numcon" style="width: 350px">
											<button id="plusBtn" type="button" class="btn_plus_minus">+</button>
											<input type="text" id="prdCnt" name="prdCnt" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  title="수량" value="1"  maxlength="3"/>
											<button id="minusBtn" type="button" class="btn_plus_minus">-</button>
											<small><span id="prdCntMsg" style="color: #FF0000"></span></small><!-- 0보다 작은 수를 적을 경우의 메시지 표시 -->
									</span>
								</div>
							</dd>
						</dl>
                        <!--{ // 20201218 // ? goodsView['optionFl'] == 'y' || goodsView['optionTextFl'] == 'y' || goodsView['addGoods'] }-->
                       
                        <div class="item_add_option_box item_add_option_box_reg">
						
                        </div>
                        <!-- //item_add_option_box -->

                    </div>
                    <!-- //item_detail_list -->



                        <div class="option_total_display_area item_choice_list item_deli_option_list item_deli_option_list_nw item_deli_option_list_nw_reg">
                            <table class="option_display_area option_display_area_reg dev_option_display_area1" border="0" cellpadding="0" cellspacing="0">
                                <colgroup>
                                     <col width="19px;">
                                     <col width="284px">
                                     <col width="80px">
                                     <col width="82px">
                                </colgroup>
                            </table>


                            <table class="option_display_area_add">
                                <tbody id="option_display_item_add">
                                </tbody>
                            </table>

							<div class="end_price end_price_devea_txt" style="display:none" data-subscription-week = "4">
                                x4주(회) 총 수량 <span class="dev_salad_pack_num">20</span>팩
                            </div>

                            <div class="item_price_cont">
                                <div class="end_price item_tatal_box">
                                    <dl class="total_amount">
                                        <dt>총 합계금액</dt>
                                        <dd>
                                        <strong class="total_price"><span id="totalPrice"></span></strong></dd>
                                        <dt>원</dt>
                                    </dl>
                                </div>
                                <!-- //item_tatal_box -->
                            </div>
                            <!-- //item_price_cont -->
                        </div>
                        
                    <div class="btn_choice_box">
                        <div >
                        	<form method="get" id="cartFrm">
                        		<input type="hidden" id="cartPrdNum" name="prdNum" value="${ param.prdNum }"/>
                        		<input type="hidden" id="cartPrdCnt" name="cartPrdCnt" value="1"/>
                        		<button type="button" class="btn_add_cart" id="cartBtn" >장바구니</button>
                        	</form>
                        </div>
                        
						<div>
							<form  action="http://localhost/salad_mvc/order.do" method="get" id="orderFrm">
								
                        	</form>
                        		<%-- <input type="hidden" id="orderPrdNum" name="prdNum" value="${ param.prdNum }"/>
                        		<input type="hidden" id="orderPrdCnt" name="orderCnt" value="1"/>  --%>
                        		<button type="button" class="btn_add_order" id="addOrderBtn">바로 구매</button>
                    	</div>
                </div>
                <!-- //btn_choice_box -->
                <div class="pay_box">
                    <div class="payco_pay">
                        
                    </div>

                </div>
                <!-- //pay_box -->
            </div>
            <!-- //item_tit_detail_cont -->
    </div>
    <!-- //item_info_box -->
    </form>
</div>
<!-- //item_photo_info_sec -->
<!-- //상품 상단 끝 -->
<!-- 상품상세 -->
<div class="item_goods_sec">

<!-- 탭컨텐츠 wrap -->
<!-- <div class="detail-tab-container tab_area" data-sticky-container> -->


	<!-- 탭컨텐츠 ul -->

<script src="http://localhost/salad_mvc/resources/js/fixed-top-animated-menu.1.0.js"></script>

<div class="navbar detail_btm_tab_menu_box">

  <div class="container detail_btm_tab_menu item_goods_tab">

    <ul class="nav navbar-nav detail_sub_lst tabs">

      <li class="active" data-anchor="detail"><a href="#detail"><b>상품설명</b></a></li>

      <li class="active" data-anchor="reviews"><a href="#reviews"><b id="buyRevCnt">구매후기</b></a></li>

      <li class="active" data-anchor="delivery"><a href="#delivery"><b>FAQ</b></a></li>

      <li class="active" data-anchor="qna"><a href="#qna"><b id="qnaListCnt">상품문의</b></a></li>

    </ul>

  </div>

</div>

	<!-- //item_goods_tab -->
	<!-- 탭컨텐츠 ul -->
		<!--  탭컨텐츠 박스1 -->

			  <div id="detail" class="item_good_cont anchor">
					<!-- //item_goods_tab -->
					<div class="detail_cont">

						<div class="detail_explain_box">
							<div class="image-manual"><!-- 이미지 --></div>
							<div class="txt-manual">
<!-- 상품상세 공통정보 관리를 상세정보 상단에 노출-->
	<img alt="대표내용이미지" src="http://localhost/salad_mvc/common/images/product/${ prdData.prdBodyThum }">
	<img src="http://localhost/salad_mvc/resources/images/main/blank.jpg"><!-- 여백 -->
<c:forEach var="prdBodyImg" items="${ prdData.prdBodyImgList }">
	<img alt="내용이미지" src="http://localhost/salad_mvc/common/images/product/${ prdBodyImg }">
	<img src="http://localhost/salad_mvc/resources/images/main/blank.jpg"><!-- 여백 -->
</c:forEach>

<p>&nbsp;</p>
							</div>
						</div>
						<!-- //detail_explain_box -->

					</div>
					<!-- //detail_cont -->
				</div>
				<!-- //#detail -->

		<!--  탭컨텐츠 박스1 -->
		<!--  탭컨텐츠 박스2 -->

			<div id="reviews"  class="item_good_cont anchor">

        <!-- //item_goods_tab -->


        <div class="reviews_cont">
				<p class="datail_bst_rv_tit m_t50">베스트 후기</p>
	<div class="m_t30">
		<ul class="datail_bst_rv_list">
			<c:forEach var="bestRev" items="${ bestRevList }">
			<li>
				<div class="con_wrap">
					<a href="javascript:revPopup(${ bestRev.revNum });">
					
						<span class="row row1">
							<div class="data_info">
								<span class="nm_date">
									<span class="nm"><c:out value="${ bestRev.name }"/></span>
									<span class="date"><fmt:formatDate value="${ bestRev.revWriteDate }" pattern="yyyy-MM-dd"/></span>
								</span>
								<span class="tit">
									<b><c:out value="${ prdData.prdName }"/></b> 
								</span>
							</div>
						</span>
						<span class="row row2">
							<span class="data_content">
								<span class="tit">
									<c:out value="${ bestRev.revTitle }"/>
								</span>
								<span class="txts">
									<c:out value="${ bestRev.revCont }"/>
								</span>
								<span class="more-plusrv-btn"><b>더보기<i></i></b></span>
							</span>
							
							<span class="img">
							<c:if test="${ bestRev.revImgList != null }">
								<img src="http://localhost/salad_mvc/common/images/review/${ bestRev.revImgList[0] }" style="max-width:130px; height:100%;">
							</c:if>
							</span>
							
						</span>
					</a>
				</div>
			</li>
			</c:forEach>
		
		</ul>
	</div>
	<div id="revListScroll"></div>
	<div class="detail_rv_etc_con">
		<a href="javascript:gd_open_write_popup('goodsreview')" class="btn_reviews_write wrt_btn_right">후기작성</a>
	</div>


			<div class="detail_under_top_tit">
				<div class="detail_rv_in_tit_wrap">
					<h3 class="detail_rv_in_tit m_t50" id="revListCnt"></h3>
					<p class="detail_rvin_alignbx">
						<!-- <a href="javascript:go_review_sort(2);" id="rangeType" class="align2 on">최신순</a>
						<a href="javascript:go_review_sort(1);" id="sortType" class="align1 ">랭킹순</a> -->
						<a href="#void" id="latestBtn" class="align2 on">최신순</a>
						<a href="#void" id="rankBtn" class="align1 ">랭킹순</a>
						<input type="hidden" id="sortType" value="latest">
						<input type="hidden" id="orderBy" value="desc">
					</p>
				</div>
				<!-- <div class="detail_rv_tabbx m_t30">
					<ul >
						<li class="tab1 on"><a href="javascript:go_review_all(this);">전체</a></li>
						<li class="tab2"><a href="javascript:go_photo_list();">포토후기</a></li>
					</ul>
				</div> -->
				<div id="ajax-goods-goodsreview-list">
					<div id="revListDiv">
					
					</div>
					<div class="pagination" id="revPageDiv">
					
					</div>
				</div>
				<div class="btn_reviews_box">
					<a href="http://localhost/salad_mvc/goodsreview_list.do" class="btn_reviews_more">상품후기 전체보기</a>

				</div>
			</div>
            <!-- //btn_reviews_box -->
        </div>
        <!-- //reviews_cont -->
    </div>
    <!-- //#reviews -->

		<!--  탭컨텐츠 박스2 -->
		<!--  탭컨텐츠 박스3 -->

			<div id="delivery"  class="item_good_cont anchor">

				<!-- //item_goods_tab -->
				<div class="delivery_cont">
					<h3  class="dtit m_t50">배송안내</h3>
					<div class="admin_msg"><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">배송 비용 : 1회 배송비 3,000원 (1회 배송 시 결제금액 50,000원 이상 무료)&nbsp;</span><br style="font-family: 돋움, dotum; font-size: 13.3333px;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">배송 기간 : 1~2일 (제주도, 도서산간 2~3일)</span><br style="font-family: 돋움, dotum; font-size: 13.3333px;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">배송 안내 :&nbsp;</span></p><p><font face="나눔바른고딕, NanumBarunGothic"><span style="font-size: 14.6667px;">- 결제완료 후 배송까지 2~3일 소요되며, 출고당일 오전 제작안내 알림톡 발송</span></font>&nbsp;</p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt; color: rgb(255, 0, 0);">- 주문량이 많은 월~화, 연휴/명절 다음 날 출고의 경우&nbsp;</span><span style="font-size: 14.6667px; font-family: 나눔바른고딕, NanumBarunGothic; color: rgb(255, 0, 0);">배송 지연이 발생할 수 있습니다.</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt; color: rgb(255, 0, 0);">&nbsp;</span></p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">-&nbsp;</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">제주 및 도서 산간지역은 운임 3,000원이 추가 됩니다.</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">&nbsp;</span>&nbsp;&nbsp;</p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 14.6667px;">-&nbsp;</span><span style="background-color: rgb(255, 255, 255); color: rgb(36, 36, 36); font-family: &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-serif; font-size: 14px;">정기배송 홀딩기간은 주문일로부터 최대 3개월까지 입니다.</span></p><p><span style="font-size: 14.6667px; font-family: 나눔바른고딕, NanumBarunGothic;">- 신선 식품 배송으로 월요일 및 공휴일 다음날은 배송이 불가합니다.&nbsp;</span></p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 롯데 택배로 배송되며, 상품 출고 후 송장번호가 문자로 발송됩니다. [오후 5시 이후]&nbsp;</span>&nbsp;</p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 스티로폼 박스에 아이스팩과 함께 포장하여 배송됩니다. (단, 겨울철에는 아이스팩을 제외하고 배송됩니다)</span>&nbsp;</p><p style="font-family: 돋움, dotum; font-size: 13.3333px; line-height: 1.8;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 고객님께서 주문하신 상품은 발송되는 날, 당일 제작하여 배송됩니다.&nbsp;</span></p></div>
					<h3  class="dtit m_t50">교환 및 반품안내</h3>
					<div class="admin_msg">
						<p><font face="나눔바른고딕" size="3"><span style="font-size: 11pt;">- 제품의 하자나 판매자의 실수로 인한 경우 100% 교환/반품/환불이 가능합니다.</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">&nbsp;</span></font></p><p style="line-height: 1.8;"><span style="font-size: 10pt;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">-&nbsp;<span style="font-size: 11pt;">식품 특성상 고객님의 단순변심으로 인한 상품 교환 및 반품은 불가하며, 상품 수령 후 임의 반품 및 환불 역시 불가합니다.&nbsp;</span>&nbsp;</span></span></p><p style="line-height: 1.8;"><span style="font-size: 10pt;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 정기배송 상품의 경우 첫 배송 수령 후, 구성품 변경이 가능하며 그 전에는 취소 후 재주문하시면 됩니다.&nbsp;</span></span></p><p style="line-height: 1.8;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">​-&nbsp;<span style="font-size: 11pt;">제품 문제 발생 시에는 수령 후 6일 이내 고객센터나 문의하기 게시판으로 접수 부탁드립니다.</span></span></p><div style="line-height: 1.8; font-family: &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-serif; font-size: 14px; box-sizing: border-box;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">&nbsp; (식품 배송 특성상 유선 상으로 제품 확인이 어려워 사진 촬영본 확인 후 검토하여 환불 또는 재발송으로 진행됩니다)</span></div><p style="line-height: 1.8;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 제품에 하자가 있는 경우, 제품 배송 즉시 판매자에게 사전 전화통화를 해야 하며 판매자 승인없이 임의 반품하는 경우 반품/교환이 제한될 수 있습니다.</span><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">&nbsp;</span></p><p><font face="나눔바른고딕" size="3"><span style="font-family: 돋움, dotum; font-size: 10pt;"></span><span style="font-family: 돋움, dotum; font-size: 10pt;"><span style="font-size: 10pt;"></span></span></font></p><p style="margin: 0px; padding: 0px; line-height: 1.8;"><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 상품 수령후 보관상 발생한 변질, 파손에 대해서는 반품/교환이 제한될 수 있습니다.</span></p>
					</div>
					<h3  class="dtit m_t50">환불안내</h3>
					<div class="admin_msg">
						<p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 정기배송 상품은 고객님의 단순 변심/개인 사유 포함하여 취소 요청 시, 쿠폰 사용 금액 제외한 실 결제 금액에서 배송 완료된 상품의 정상가 및 회차별 배송비를 합산한 금액을 제외하고 진행되며, 결제 수단에서 부분 취소됩니다.</span>&nbsp;</p>
					</div>
					<h3 class="dtit m_t50">보관방법 및 유통기한</h3>
					<div class="admin_msg">
						<p><b style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">샐러드</b>&nbsp;</p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 보관 방법: 냉장보관(0~5⁰ⅽ), 채소칸에 보관하는 것이 가장 좋습니다.</span></p><p><span style="font-family: 나눔바른고딕, NanumBarunGothic; font-size: 11pt;">- 유통기한: 제조일로부터 6일 (제품 전면 제조일 표기)</span></p>
					</div>
				</div>
				<!-- //delivery_cont -->
			</div>
			<!-- //#delivery -->


		<!--  탭컨텐츠 박스3 -->
		<!-- 탭컨텐츠 박스4 -->

			 <div id="qna" class="item_good_cont anchor">
				<!-- //item_goods_tab -->
				<div class="qna_cont">
					<div class="detail_rv_in_tit_wrap">
							<h3 class="detail_rv_in_tit m_t50">상품Q&amp;A</h3>
					</div>
					<div id="qnaListDiv">
					
					</div>
					<div class="pagination" id="qnaPageDiv">
					
					</div>
					<div class="btn_qna_box">
						<a href="javascript:gd_open_write_popup('goodsqa')" class="btn_qna_write">상품문의 글쓰기</a>
					</div>
					<!-- //btn_qna_box -->
				</div>
				<!-- //qna_cont -->
			</div>
			<!-- //qna -->

		<!-- 탭컨텐츠 박스4 -->



<!-- 탭컨텐츠 wrap -->

</div>
<!-- //item_goods_sec -->
<!-- //상품상세 끝 -->
</div>

<!-- <div id="lyZoom" class="layer_wrap zoom_layer dn">
    <div class="layer_wrap_cont">
        <div class="ly_tit">
            <h4>이미지 확대보기<span>4주 정기배송 샐러드 주 5일</span></h4>
        </div>
        <div class="ly_cont">
            <div class="item_photo_view_box">
                <div class="item_photo_view">
                    <div class="item_photo_big" id="magnifyImage">
                        <span class="img_photo_big"><img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/1000000239_magnify_033.jpg" width="570" alt="4주 정기배송 샐러드 주 5일" title="4주 정기배송 샐러드 주 5일" class="middle"  /></span>
                    </div>
                    //item_photo_big
                    <div class="item_photo_slide">
                        <button type="button" class="slick_goods_prev"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_vertical_prev.png" alt="이전 상품 이미지"/></button>
                        <ul class="slider_wrap ly_slider_goods_nav">
                            <li><a href="javascript:gd_change_image('0','magnify');"><img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/t50_1000000239_magnify_033.jpg" width="68" alt="4주 정기배송 샐러드 주 5일" title="4주 정기배송 샐러드 주 5일" class="middle"  /></a></li>
                        </ul>
                        <button type="button" class="slick_goods_next"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_vertical_next.png" alt="다음 상품 이미지"/></button>
                    </div>
                </div>
            </div>
        </div>
        //ly_cont
        <a href="#close" class="ly_close layer_close"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/layer/btn_layer_close.png" alt="닫기"></a>
    </div>
    //layer_wrap_cont
</div>
// zoom_layer -->

<div id="lyPassword" class="layer_wrap password_layer js_password_layer dn" style="height: 226px">
    <div class="layer_wrap_cont">
        <div class="ly_tit">
            <h4>비밀번호 인증</h4>
        </div>
        <div class="ly_cont">
            <div class="scroll_box">
                <p>글 작성시 설정한 비밀번호를 입력해 주세요.</p>
                <input type="password" name="writerPw" class="text" autocomplete="off">
            </div>
            <!-- // -->
            <div class="btn_center_box">
                <button type="button" class="btn_ly_password js_submit"><strong>확인</strong></button>
            </div>
        </div>
        <!-- //ly_cont -->
        <a href="#close" class="ly_close layer_close"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/layer/btn_layer_close.png" alt="닫기"></a>
    </div>
    <!-- //layer_wrap_cont -->
</div>
<!-- //password_layer -->

<div id="addCartLayer" class="layer_wrap dn">
    <div class="box add_cart_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
        <div class="view" >
            <h2>장바구니 담기</h2>
            <div class="scroll_box" id="addCartMsg">
                
            </div>
            <div class="btn_box">
                <button type="button" class="btn_cancel"><span>취소</span></button>
                <button type="button" class="btn_confirm btn_move_cart" onclick="moveCart()" ><span>확인</span></button>
            </div>
            <!-- //btn_box -->
            <button title="닫기" class="close layer_close" type="button">닫기</button>
        </div>
    </div>
</div>

<!--//addCartLayer -->
<div id="addWishLayer" class="layer_wrap dn">
    <div class="box add_wish_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
        <div class="view">
            <h2>찜 리스트 담기</h2>
            <div class="scroll_box">
                <p class="success"><strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
            </div>
            <div class="btn_box">
                <button type="button" class="btn_cancel"><span>취소</span></button>
                <button type="button" class="btn_confirm btn_move_wish"><span>확인</span></button>
            </div>
            <!-- //btn_box -->
            <button title="닫기" class="close layer_close" type="button">닫기</button>
        </div>
    </div>
</div>

<div id="lyViewPop" class="layer_wrap board_view_layer dn">
	

</div>
<div id="lyPhotoListPop" class="layer_wrap board_view_layer dn"></div>


<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_goods.js" charset="utf-8"></script>

<script>
	$(function(){
		$('.item_add_option_box').on('click', function(){
			$(".option_display_area_reg").addClass("reg_on")
			$(".option_display_area").addClass("reg_on")
		});
	});

	function go_review_all(e){
		$(".detail_rv_tabbx ul li").removeClass("on");
		$(".tab1").addClass("on");
		//$(this).closest("li").addClass("on");
		gd_load_goodsBoardList2("goodsreview","1000000239");
		//return false;
	}

	function go_photo_list(){
		$(".detail_rv_tabbx ul li").removeClass("on");
		$(".tab2").addClass("on");
		gd_load_goodsBoardList2("goodsreview","1000000239", "", "y", "");
		//return false;
	}

	function go_delivery_list(){
		$(".detail_rv_tabbx ul li").removeClass("on");
		$(".tab3").addClass("on");
		gd_load_goodsBoardList2("goodsreview","", "", "", "y");
		//return false;
	}

	function go_review_sort(arg){
		var sort = "b.sno desc";
		if(arg == "2"){
			sort = "b.sno desc";
			$(".align1").removeClass("on");
			$(".align2").addClass("on");
		} else {
			sort = "goodsPt desc, b.sno desc";
			$(".align1").addClass("on");
			$(".align2").removeClass("on");
		}
		//console.log(sort);
		gd_load_goodsBoardList2("goodsreview","1000000239", sort, "", "");
		//return false;
	}


</script>

<!-- Doyouad Start 삭제 하지 마세요. -->
<script type="text/javascript">
var DOYOUAD_DATA = {};
DOYOUAD_DATA.soldOut = "2";
(function (w, d, s, n, t) {n = d.createElement(s);n.type = "text/javascript";n.setAttribute("id", "doyouadScript");n.setAttribute("data-user", "pocketsalad");n.setAttribute("data-page", "shop");n.async = !0;n.defer = !0;n.src = "https://cdn.doyouad.com/js/dyadTracker.js?v=" + new Date().toISOString().slice(0, 10).replace(/-/g, "");t = d.getElementsByTagName(s)[0];t.parentNode.insertBefore(n, t);})(window, document, "script");
</script>
<!-- Doyouad End -->


<!-- Enliple Tracker Start -->
<script type="text/javascript">
    (function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_godomall_rent.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    var ENP_VAR = {};
    ENP_VAR.soldOut = 'N';
    enp('create', 'collect', 'atower2015', { device: 'W' });
    enp('create', 'cart', 'atower2015', { device: 'W' });
    enp('create', 'wish', 'atower2015', { device: 'W' });
    enp("create", "conversion", 'atower2015', { device: 'W', paySys: 'naverPay' });
</script>
<!-- Enliple Tracker End -->

<style>
	.reg_on{  border:0 none; }
</style>


<!-- Start Script for IFDO ( 상품조회 분석 )-->
<!-- 스크립트 생성 일시 = 2022 / 04 / 11 17:39:54 -->

<div class='info' style='display:none;'>
<div class='infoAreaBox'>
<div id='ifdo_detail_product_no'>1000000239</div>
<div id='ifdo_detail_product_name'>4주 정기배송 샐러드 주 5일</div>
<div id='ifdo_detail_product_price'>92400.00</div>
</div>
</div>

<script type='text/javascript'>
if( document.getElementById('ifdo_detail_product_no') ) var _NB_PC =document.getElementById('ifdo_detail_product_no').textContent;
if( document.getElementById('ifdo_detail_product_name') ) var _NB_PD =document.getElementById('ifdo_detail_product_name').textContent;
if( document.getElementById('ifdo_detail_product_price') ) var _NB_AMT =parseInt(document.getElementById('ifdo_detail_product_price').textContent);
function _LastMetaTag(a ,b) {var metas = document.getElementsByTagName('meta');var e='';for (var i=0; i<metas.length; i++) { if (metas[i].getAttribute(a) == b) { e= metas[i].getAttribute('content'); }};return e;};
var _NB_IMG = _LastMetaTag('property','og:image');  /* 제품이미지 */
var _NB_PD_USE = ''; /* 현재 상품이 품절인 경우 N 값을 넣어주세요 */
var _NB_DAMT = ''; /* 제품 할인가격 */
</script>

<!-- End Script for IFDO -->

<!-- Start Script for IFDO ( Npay 클릭분석 - 상세페이지 ( PC웹 ) )-->
<!-- 스크립트 생성 일시 = 2022 / 04 / 11 17:39:54 -->
<!-- IFDO 네이버페이 구매분석전용 ( 고도몰 ) 스크립트 -->
<!-- PC웹 상세페이지 --->
<script type='text/javascript'>
_DM_ready=function(fn) { if (document.readyState != 'loading'){fn();}else if(document.addEventListener){ document.addEventListener('DOMContentLoaded', fn);} else{ document.attachEvent('onreadystatechange', function() {  if (document.readyState != 'loading') fn();});} };
_addEvent=function(o,e,f){if(o.addEventListener){o.addEventListener(e,f,false);}else if(o.attachEvent){o.attachEvent('on'+e,f);};};
function _NB_PAGE(a,b,c,d){ a=('/'==a.charAt(0)?document.domain:document.domain+'/')+a;_NB_LVAR.url=a;if(typeof b=='string') _NB_LVAR.title=b;var g=au+'//'+_NB_gs+'/WGT/?cur_stamp='+cur_stamp;_NB_LVAR.deviceid = _NB_DVID; Object.keys(_NB_LVAR).forEach(function(j){ if(typeof _NB_LVAR[j]!='function'){g+='&'+j+'='+encodeURIComponent(_NB_LVAR[j])} });if(typeof c=='string') g+='&join_id='+c;if(typeof d=='string') g+='&m_join='+d; var _Img=new Image(); _Img.src=g+'&rand='+Math.random();_NB_MKTImg.push(_Img);}
setTimeout(function(){
var obj= document.getElementsByClassName('npay_btn_item');
if( obj.length <= 0 ) return;
_addEvent(obj[0],'mousedown',function(){
var _id_s=document.getElementsByClassName('npay_btn_link')[0].getAttribute('id').split('_');
var _NB_ORD_NO = 'NPAY1_'+_id_s[_id_s.length-1];
var _tp = document.getElementsByClassName('total_amount');
if( typeof _tp =='object' && _tp.length > 0 ){
var _t_amt = _tp[0].getElementsByClassName('total_price');
if( typeof _t_amt == 'object' && _t_amt.length > 0 ) _NB_ORD_AMT = parseInt(_t_amt[0].textContent.replace(/[^0-9]/g,''));
if( _NB_ORD_AMT > 0 ){
var _NB_LO=[{'PC':_NB_PC,'PN':_NB_PD,'CT':'','AM':1,'PR':_NB_ORD_AMT }];
if( typeof _NB_LO =='object' && _NB_LO.length > 0 ){ _NB_LL=_NB_MLST(_NB_LO); }
if( typeof sessionStorage == 'object' && _NB_ORD_NO != '' ){var _ORDERNO = sessionStorage.getItem('_ORDERNO');if(_ORDERNO == null) _ORDERNO = ''; if(_ORDERNO != '' ){if(_ORDERNO.indexOf('|'+_NB_ORD_NO+'|')>=0){ _NB_LL = '';_NB_ORD_AMT='0';_NB_PM=''; }else{ sessionStorage.setItem('_ORDERNO',_ORDERNO+_NB_ORD_NO+'|');}}else{sessionStorage.setItem('_ORDERNO','|'+_NB_ORD_NO+'|');};};
_NB_LVAR.ll = _NB_LL;_NB_LVAR.pm='x';_NB_LVAR.pd='';_NB_LVAR.amt='';_NB_LVAR.order_no=_NB_ORD_NO;
_NB_PAGE('order/order_npay.html','구매_NPay');
_NB_LVAR.ll = '';_NB_LVAR.pm='';_NB_LVAR.pd='';_NB_LVAR.amt='';_NB_LVAR.order_no='';
}
}
});
},2000);
</script>
<!-- IFDO 네이버페이 구매분석전용 ( 고도몰 ) 스크립트 -->
<!-- End Script for IFDO -->

<!-- Facebook Pixel Code -->
        <script>
        fbq('track', 'ViewContent', {
        content_ids: "1000000239",
        content_type: 'product',
        value: 92400.00,
        currency: 'KRW'
        });
        </script><!-- End Facebook Pixel Code -->
            </div>
            <!-- //sub_content -->
        </div>
        <!-- //본문 끝 contents -->
    </div>
    <!-- //container -->

    <div id="footer_wrap">
<div id="footer">
    <div class="foot_list">
		<div class="foot_list_in">
			<ul>
				<li><a href="../service/company.jsp">회사소개</a></li>
				<li><a href="../service/agreement.jsp">이용약관</a></li>
				<li><a href="../service/private.jsp">개인정보처리방침</a></li>
				<li><a href="../service/guide.jsp">이용안내</a></li>
			</ul>
			<div class="main_sns">
				<a href="https://www.instagram.com/pocketsalad_official/" target="_blank" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/sns_insta.png" alt="인스타"></a>
				<a href="https://www.facebook.com/pocketsalad/"  target="_blank" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/sns_fb.png" alt="페이스북"></a>
				<a href="https://www.youtube.com/channel/UCU7y8u3KvKaqxKmF9sahtgQ"  target="_blank" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/new/sns_you.png" alt="유투브"></a>
			</div>
		</div>
    </div>
    <!-- //foot_list -->
    <div class="foot_cont">
        <div class="foot_logo">
<img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/1f8847929867dc4aa4f12786693d6325_82534.png"  alt="하단로고" title="하단로고"   />        </div>
        <!-- //foot_logo -->
        <div class="foot_info">            
            <div class="foot_info_list">
				<dl>
					<dt>법인명(상호) : </dt>
					<dd>주식회사 에이타워</dd>
				</dl>
                <dl>
                    <dt>대표 :</dt>
                    <dd> 박혜리</dd>
                </dl>
				<dl>
                    <dt>TEL :</dt>
                    <dd><strong>1833-5722</strong></dd>
                </dl>
                <dl>
                    <dt>FAX : </dt>
                    <dd>02-6959-2236</dd>
                </dl>
                
            </div>
            <div class="foot_info_list">
                <dl>
                    <dt>사업자등록번호 :</dt>
                    <dd> 346-88-00170</dd>
                </dl>
                <dl class="ts">
                    <dt>통신판매업신고번호 :</dt>
                    <dd> 제 2015 - 인천강화 - 0015호  <a href="#" class="btn_licensee_info" onclick="gd_popup_bizInfo('3468800170'); return false;">사업자정보확인</a></dd>
                </dl>
            </div>
			<div class="foot_info_list">
				<dl>
					<dt>주소 : </dt>
					<dd>인천광역시 강화군 양도면 중앙로 971 </dd>
				</dl>
				<dl>
                    <dt>개인정보관리책임자 :</dt>
                    <dd> 박혜리</dd>
                </dl>
                <dl>
                    <dt>E-Mail :</dt>
                    <dd><a href="mailto:godo@godo.co.kr" class="btn_email">pocketsalad@atower.co.kr</a></dd>
                </dl>      
			</div>
            <!-- // -->
            <p class="copyright">Copyright©<strong>pocketsalad.co.kr</strong>All rights reserved.</p>
        </div>
        <!-- //foot_info -->
		
		<!-- //content_info_wrap -->
    </div>
<script>
$(function(){

	$("input[type='password']").on("propertychange change keyup paste input", function(){
			$(this).addClass("onput");

	});
	$("input[type='password']").removeClass("onput");
});
</script>
    <!-- //foot_cont -->
    <div class="foot_certify">
        <span></span>
        <span></span>
    </div>
    <!-- //foot_certify -->
</div>
<!-- //footer -->

<!-- Global site tag (gtag.js) - Google Ads: 955276942 -->

<script async src="https://www.googletagmanager.com/gtag/js?id=AW-955276942"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-955276942');
</script>


<!-- Global site tag (gtag.js) - Google Analytics -->
<!--
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-81300049-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-81300049-1');
</script>
-->

<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('5900620314493041185').pageView();
</script>



<script type='text/javascript'>
	var sTime = new Date().getTime();

	(function(i,s,o,g,r,a,m){i['cmcObject']=g;i['cmcUid']=r;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','//parks2016.cmclog.cafe24.com/weblog.js?v='+sTime,'parks2016');
</script>

<!-- 리포트2.0 로그분석코드 시작 -->
<script type="text/javascript">
var sTime = new Date().getTime();
(function(i,s,o,g,r,a,m){i['webObject']=g;i['webUid']=r;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})
(window,document,'script','//parks2016.weblog.cafe24.com/weblog.js?v='+sTime,'parks2016');
</script>
<!-- 리포트2.0  로그분석코드 완료 -->

<script type='text/javascript'>
(function(i,s,o,g,r,a,m,n,d){i['cfaObject']=g;i['cfaUid']=r;i['cfaStype']=a;i['cfaDomain']=m;i['cfaSno']=n;i['cfaEtc']=d;a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})
(window,document,'script','//parks2016.weblog.cafe24.com/cfa.js?v='+new Date().getTime(),'parks2016','w','','0','');
</script>
    </div>
    <!-- //footer_wrap -->


    <div class="scroll_wrap">

        <!-- 좌측 스크롤 배너 -->
        <div id="scroll_left">

        </div>
        <!-- //scroll_left -->
        <!-- //좌측 스크롤 배너 -->


    </div>
    <!-- //scroll_wrap -->


    <!-- 퀵 검색 폼 -->
    <!-- 퀵 검색 폼 -->

</div>
<!-- //wrap -->

<!-- 쇼핑 카트 탭 -->

<!-- //쇼핑 카트 탭 -->

<!-- 회원가입 유도 푸시 -->

<!-- //회원가입 유도 푸시 -->

<!-- 절대! 지우지마세요 : Start -->
<div id="layerDim" class="dn">&nbsp;</div>
<iframe name="ifrmProcess" src='/blank.jsp' style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
<!-- 절대! 지우지마세요 : End -->

<!-- 외부 스크립트 -->
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NS4V8GR"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) --><!-- Criteo Cart Event Script -->
        <script type="text/javascript">
        var setCriteoGoodsPrice = 0;
            
        function set_criteo_price() {
            if (typeof $('#frmViewLayer input[name="set_goods_price"]').val() == 'undefined') {
                var tmpGoodsPrice = parseFloat($('#frmView input[name="set_goods_price"]').val());
                var tmpOptionPrice = parseFloat($('#frmView input[name="set_option_price"]').val());
                var tmpTextPrice = parseFloat($('#frmView input[name="set_option_text_price"]').val());
            } else {
                var tmpGoodsPrice = parseFloat($('#frmViewLayer input[name="set_goods_price"]').val());
                var tmpOptionPrice = parseFloat($('#frmViewLayer input[name="set_option_price"]').val());
                var tmpTextPrice = parseFloat($('#frmViewLayer input[name="set_option_text_price"]').val());
            }
            if (tmpOptionPrice > 0) { tmpOptionPrice = tmpOptionPrice / goodsTotalCnt; }
            if (tmpTextPrice > 0) { tmpTextPrice = tmpTextPrice / goodsTotalCnt; }
            
            setCriteoGoodsPrice = tmpGoodsPrice + tmpOptionPrice + tmpTextPrice;
        }
        
        function criteoCartEvent(goodsNo, price, quantity) {
            window.criteo_q = window.criteo_q || [];
            var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d";
            window.criteo_q.push(
                { event: "setAccount", account: "34297" },
                { event: "setEmail", email: "9360d2e2e294fd47c5ec8d55c10ae8d557df6cc1f970be3774fd17fc987d2895", hash_method: "sha256" },
                { event: "setZipcode", zipcode: "" },
                { event: "setSiteType", type: deviceType },
                { event: "addToCart", item: [
                    { id: goodsNo, price: price, quantity: quantity }
                    ]
                }
            );
        }
        </script>
        <!-- End Criteo Cart Event Script -->

        

<!-- Start Script for IFDO ( 회원분석 )-->
<!-- 스크립트 생성 일시 = 2022 / 04 / 11 17:39:54 -->

<script type='text/javascript'>
var _NB_ID='tester21';
var _NB_UDF={'udf01':'테스터','udf03':'010-8968-4952','udf06':'포켓탐색 Lv.1'};
</script>

<!-- End Script for IFDO -->
<!-- Start Script for IFDO -->
<script type='text/javascript'>
var _NB_gs = 'wlog.ifdo.co.kr';
var _NB_MKTCD = 'NJA2221003405';
var _NB_APPVER=''; /* 하이브리드 앱 버전 */
(function(a,b,c,d,e){var f;f=b.createElement(c),g=b.getElementsByTagName(c)[0];f.async=1;f.src=d;
f.setAttribute('charset','utf-8');
g.parentNode.insertBefore(f,g)})(window,document,'script','//script.ifdo.co.kr/jfullscript.js');
</script>
<!-- End Script for IFDO -->

<!-- Enliple Tracker Start -->
<script type="text/javascript">
		(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_godomall_rent.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'common', 'atower2015', { device: 'W' });    
    enp('send', 'common', 'atower2015');
</script>
<!-- Enliple Tracker End -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/nd_kakao.js?ts=1662087469"></script>

</body>.
</html>

<!-- reviewmaker script start 2021.12.27  contact email : help@reviewmaker.co.kr  -->
<script src='https://wzimg.reviewmaker.co.kr/widget/4966_pc.js?pcd=1000000239'></script>
<!-- reviewmaker script end -->

<script type="text/javascript">
  dataLayer.push({
    'event': 'detail',
    'goodsInfo': [{
      'id': '1000000239',
      'name': '4주 정기배송 샐러드 주 5일',
      'price': '92400.00'
    }]
  });
</script>

<script type="text/javascript">
  var addToCart = function () {
    dataLayer.push({
      'event': 'addToCart',
      'goodsInfo': [{
        'id': '1000000239',
        'name': '4주 정기배송 샐러드 주 5일',
        'price': '92400.00',
        'quantity': goodsTotalCnt
      }]
    });
  }

  /* $('#cartBtn').click(addToCart); */
</script>

<!-- LABBIT GA 향상된 전자상거래 변수 세팅 -->
<script>
	window.labbit = {
		'product_name' : "4주 정기배송 샐러드 주 5일",
		'product_id' : "1000000239",
		'product_price' : "92400.00".replace(/[^0-9]/g, '').slice(0,-2),
		'product_category' : "001",
	}
</script>
<!-- LABBIT GA 향상된 전자상거래 변수 세팅 끝 -->