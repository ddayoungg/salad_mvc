<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/reset.css?ts=1647562972">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/common.css?ts=1659591193">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/layer/layer.css?ts=1666243530">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/layout/layout.css?ts=1666674309">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/list.css?ts=1662515260">
	<link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css?ts=1644979979">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/member/member.css?ts=1662983268" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.css?ts=1662105386" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/custom.css?ts=1660281178" />

    <!-- 온노마드 css 추가 -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/nd_custom.css?ts=1662983189" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/swiper.css?ts=1610501674" />

    <!-- Add style : start -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/plugins/bootstrap-datetimepicker.min.css" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/plugins/bootstrap-datetimepicker-standalone.css" />
    
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
    
    <!-- 우편번호 사용  -->
    <script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>	

<script type="text/javascript">
<%
	String flag=request.getParameter("eMsg");
%>
if(<%=flag%>){
	alert("배송지 수정이 완료되었습니다.");
}
</script>	
    <!-- 전체 카테고리 -->
<script type="text/javascript">

//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var roadAddr = data.roadAddress; // 도로명 주소 변수
			var extraRoadAddr = ''; // 참고 항목 변수

			// 법정동명이 있을 경우 추가한다. (법정리는 제외)
			// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
			if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
				extraRoadAddr += data.bname;
			}
			// 건물명이 있고, 공동주택일 경우 추가한다.
			if (data.buildingName !== '' && data.apartment === 'Y') {
				extraRoadAddr += (extraRoadAddr !== '' ? ', '
						+ data.buildingName : data.buildingName);
			}
			// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
			if (extraRoadAddr !== '') {
				extraRoadAddr = ' (' + extraRoadAddr + ')';
			}
		

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('zipcode').value = data.zonecode;
			document.getElementById("addr").value = roadAddr;
		}
	}).open();
}

    $(function(){
    	
    	$("#allMenuToggle").click(function(){
    		$("#gnbAllMenu").toggle();
    	});//click
    	
    	$("#joinBtn").click(function(){
    		joinCheck();
    		
    	});//click
    	
    	
    	
    });//ready
    
    //비어있는값 계산
    function joinCheck(){
    	//psChkPassFlag passPassFlag idPassFlag
    	var userphone=$("#phone").val();
    	var userzipcode=$("#zipcode").val();
    	var userdeaddr=$("#deAddr").val();
    	
    	if(userphone.length==0){
    		$("#errorPhone").text("전화번호를 입력하세요");
    		$("#phone").focus();
    		return;
    	}else{
    		$("#errorPhone").text("");
    	}
    	
    	if(userzipcode.length==0){
    		$("#errorZipcode").text("우편번호를 입력하세요");
    		$("#zipcode").focus();
    		return;
    	}else{
    		$("#errorZipcode").text("");
    	}
    	
    	if(userdeaddr.length==0){
    		$("#errorDeaddr").text("상세주소를 입력하세요");
    		$("#deAddr").focus();
    		return;
    	}else{
    		$("#errorDeaddr").text("");
    	}
    	
    	window.opener.location.reload();
    	$("#formJoin").submit();
 
    	
    			
    	
    }
function closePopup(){
	window.opener.location.reload();
	window.close();
}
    
</script>

<div class="container">       
	<div class="content_box">
	<div class="join_base_wrap">
		<div class="member_tit">
		<br>
			<h2>배송지 관리</h2>
		</div>
		<!-- //member_tit -->
		<div class="member_cont">
			<form id="formJoin" name="formJoin" action="mypage_deli_edit_process.do" method="post" >
	
				<!-- 회원가입/정보 기본정보 --><div class="base_info_box">
    
	  <h3>배송지정보</h3>

    <div class="base_info_sec">
        <table border="0" cellpadding="0" cellspacing="0">
		
		<colgroup>
                <col width="25%">
                <col width="75%">
            </colgroup>

            <tbody>
            <tr>
                <th><span class="important">배송지 이름</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" id="name" name="name" data-pattern="gdMemberId" readonly="readonly" value="${mdDomain.name}">
                    </div>
                </td>
            </tr>
            <tr>
                <th><span class="important">휴대폰 번호</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" id="phone" name="phone" maxlength="11" data-pattern="gdMemberId" value="${mdDomain.phone }">
                    </div>
                    <span id="errorPhone"  style="color: red"></span>
                </td>
            </tr>
            <!-- 우편번호 -->
            <tr >
            <th><span class="important">우편번호</span></th>
            <td class="member_address">
            <div class="address_postcode">
            <input type="text" name="zipcode" id="zipcode" value="${mdDomain.zipcode }" style="width:160px;margin-right:7px;"/>
            <button class="btn_comfirm js_btn_join"  type="button" id="zipcodeBtn" style="width:165px;" onclick="execDaumPostcode()">우편번호</button>
            </div>
            <span id="errorZipcode"  style="color: red"></span>
            </td>
            </tr>
            <!-- 주소 -->
            <tr>
            <th><span class="important">주소</span></th>
            <td>
                    <div class="member_warning">
                        <input type="text" id="addr" name="addr" data-pattern="gdMemberId" value="${mdDomain.addr }">
                    </div>
             </td>
            </tr>
            <!-- 상세주소 -->
            <tr>
            <th><span class="important">상세주소</span></th>
            <td>
                    <div class="member_warning">
                        <input type="text" id="deAddr" name="deAddr" data-pattern="gdMemberId" value="${mdDomain.deAddr }">
                    </div>
                    <span id="errorDeaddr"  style="color: red"></span>
             </td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- //base_info_sec -->
</div>
<!-- //base_info_box --><!-- 회원가입/정보 기본정보 -->
				<!-- 회원가입/정보 사업자정보 --><!-- 회원가입/정보 사업자정보 -->
				<!-- 회원가입/정보 부가정보 -->
				<!-- e_onnomad_210712_약관동의영역 HM -->

				<div class="btn_center_box">
<!--					<button type="button" id="btnCancel" class="btn_member_cancel">취소</button>-->
					<button type="button" class="btn_comfirm js_btn_join" id="joinBtn"  >수정하기</button>
					<button type="button" class="btn_comfirm js_btn_join" onclick = "closePopup()">닫기</button>
				</div>
				<!-- //btn_center_box -->
			</form>
		</div>
		<!-- //member_cont -->
	</div>
	<!-- //join_base_wrap -->
</div>

</div>
	
	<!--JavaScript Local LINK:START-->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="https://cdn.ckeditor.com/4.12.1/standard/ckeditor.js"></script>
<script type="text/javascript" src="/minishop/resources/custom/js/general/ckeditor4Admin.js"></script>
<script type="text/javascript" src="/minishop/resources/bootstrap4/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="/minishop/resources/custom/js/adminUser/personalQAFormAdmin.js"></script>
	<!--JavaScript Local LINK:END-->