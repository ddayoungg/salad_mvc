<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>

<!doctype html>
<html>
<head>
    <title>포켓샐러드 - 내가 찾던 식단관리!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="" />
    <meta name="description" content="신선한 샐러드를 언제 어디서나 간편하게 즐기는 포켓샐러드! 라이스&포켓닭까지 함께 즐겨보세요" />
    <meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트도시락, 포켓닭, 탄단지, 다이어트, 다이어트식단, 식단관리" />
    <meta name="csrf-token" content="MTY2NjcwODI0ODM3NzA0MTE0MzA3Mzc0NDkzNDU1NDUwNTg3NDk0MDcz" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://pocketsalad.co.kr/mypage/my_page.jsp">
    <meta property="og:description" content="내가 찾던 식단관리!">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:image:width" content="160">
    <meta property="og:image:height" content="160">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="포켓샐러드">
    <meta name="twitter:image" content="https://pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta name="twitter:description" content="내가 찾던 식단관리!">

    <link rel="icon" href="/data/common/favicon.ico" type="image/x-icon" />

    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/reset.css?ts=1647562972">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/common.css?ts=1659591193">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/layer/layer.css?ts=1666243530">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/layout/layout.css?ts=1666674309">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/list.css?ts=1662515260">
	<link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css?ts=1644979979">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/mypage/mypage.css?ts=1663905323" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.css?ts=1662105386" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/custom.css?ts=1660281178" />

    <!-- 온노마드 css 추가 -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/nd_custom.css?ts=1662983189" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/swiper.css?ts=1610501674" />

    <!-- Add style : start -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/plugins/bootstrap-datetimepicker.min.css" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/plugins/bootstrap-datetimepicker-standalone.css" />
    <!-- Add style : end -->
    <!-- 도희 css 추가 -->
    <style type="text/css"> 
    .greenStar{
    color:#00af85;
    font-weight:bold;
    }
    .btn_myPageCancel{
    width:238px;
    height:58px;
    color:#00af85;
    font-weight:400;
    font-size:20px;
    border:1px solid #00af85;
    background: #fff;
    cursor: pointer;
    }
    .btn_myPageConfirm{
    width:238px;
    height:58px;
    color:#fff;
    font-weight:400;
    font-size:20px;
    background: #00af85 !important; 
    cursor: pointer;
    }
    .btn_myPass{
    border:1px solid #00af85 !important;
    height: 50px;   
    margin: 0 0 0 10px;
    padding: 0;
    }
     .btn_myPass:hover{
    background: #00af85;
    color:#fff;
    }
    </style>

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
<!-- 김도희 추가  -->
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
    	location.href="http://localhost/salad_mvc/goods/goods_search.do?keyword="+$("#keyword").val();
    }//searchEvent
    
</script>
<!-- 검색 끝 -->
<script type="text/javascript">
$(document).ready(function(){
		let message = "${confirmMsg}";
		
		if (message === "회원정보가 변경되었습니다.") {
			alert("회원정보가 변경되었습니다."); 
		} else if (message === "회원정보가 변경되지 않았습니다.") {
			alert("회원정보가 변경되지 않았습니다."); 
		} else if ( message ==="올바르지않은 비밀번호입니다."){
			alert("올바르지않은 비밀번호입니다.");
		} else if (message === "비밀번호가 확인되었습니다."){
			alert("비밀번호가 확인되었습니다.");
		}
	}) 
</script>  
<script type="text/javascript">


$(function() {
	
	$("input").keyup(function() {
		var newPass = $("#newPass").val();
		var newPassChk = $("#newPassword").val();
        var SC = ["!","@","#","$","%"];
        var check_SC = 0;
			
        
        for(var i=0;i<SC.length;i++){
            if(newPass.indexOf(SC[i]) != -1){
                check_SC = 1;
            }
        }
               		
		if(newPass != "" ||  newPassChk != ""){
			if (newPass != newPassChk && newPass.length < 6 || newPass.length>16 || check_SC == 0){
				$("#alert-success").hide();
				$("#alert-danger").show();
				$("#alert-charDanger").show();
				$("#btn_myPageConfirm").attr("disabled",false);
				
			} else if(newPass == newPassChk ) {
				$("#alert-success").show();
				$("#alert-danger").hide();
				$("#alert-charDanger").hide();
			}
		}//
	});
});


</script> 
<!-- <script>

/* 정보 변경 */
 $(function() {
 $("#btn_myPageConfirm").click(function(){
	var name = $("#name").val();
	//var newEmail = "";
	var newEmailHead = $("#email_head").val();
	var newEmailNext = $("#email_next").val();
	var newPhone = $("#phone").val();
	
	var newPass = $("#newPass").val();
	var newPassChk = $("#newPassword").val();
	var recentPass = $("#pass").val();
	
	

	if (newPass == "" ||  newPassChk == "" || recentPass == ""){
		alert("변경하실 비밀번호를 입력해주세요.");
		$("#btn_myPageConfirm").attr("disabled",false);
	}
	else if (newPass != newPassChk){		 
		alert("비밀번호가 일치하지 않습니다.");
		$("#btn_myPageConfirm").attr("disabled",false);
	 } else (newEmailHead = "" || newEmailNext = "" || newPhone = ""){
		alert("정보를 빠짐없이 입력해주세요.");
		$("#btn_myPageConfirm").attr("disabled",false);
	 }
	
	$("#btn_myPageConfirm").attr("disabled",true);
	$("#confirmFrm").attr("action","my_change_update.do");
	$("#confirmFrm").submit();
 });
});


</script>  -->
<!-- 김도희 끝 -->  
    <!-- 전체 카테고리 -->
<script type="text/javascript">
    $(function(){
    	
    	$("#allMenuToggle").click(function(){
    		$("#gnbAllMenu").toggle();
    	});//click
    	
    });//ready
    
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

    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_common.js?ts=1610501674"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T23%3A30%3A48%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fpocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22my_page.jsp%22%2C%22domain%22%3A%22pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/moment.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/locale/ko.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/datetimepicker/bootstrap-datetimepicker.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_member2.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_payco.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_naver.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_kakao.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_wonder.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_apple.js?v=2020120404"></script>
    <!-- Add script : end -->

    

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
    </style>

    <script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/mypage/my_page.jsp&amp;Referer=https://pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript">
            kakaoPixel('5900620314493041185').pageView();
        </script>
        <!-- This script is for AceCounter START --> 
        <!-- <script language='javascript'> 
            var _ag   = '0';            
            var _id   = 'tester21';  
            var _mr = 'single';       // ( 'single' , 'married') 
            var _gd = '';            //  ('man' , 'woman')  
        </script> -->
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
	
	
<body id="body" class="body-mypage body-my-page pc"  >
<!-- Channel Plugin Scripts -->
<!-- <script>
  function parsePureNumber(number) {
    var ch_pureNumber = number.replace(/[^0-9\.]+/g, '');
    if (ch_pureNumber === "") {
      return null;
    }
    return parseFloat(ch_pureNumber) || 0;
  }
  var settings = {
    // action banner z index is 199997 ~ 199998
    "zIndex": 100000,
    "pluginKey": "ad67ea36-ae1a-452d-9419-cc8a83a650a3"
  };
  settings.memberId = "tester21";
  settings.profile = {
    "name": "테스터",
    "mobileNumber": "010-8968-4952",
    "email": "alfkdlej5@gmail.com",
    "cartCount": parsePureNumber("2"),
    "totalPurchaseCount": parsePureNumber("0"),
    "totalPurchaseAmount": parsePureNumber("0원"),
    "groupName": "포켓탐색 Lv.1",
    "isAdult": "n",
    "availableMileage": parsePureNumber("0원"),
    "totalDeposit": parsePureNumber("0")
  };
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  if (settings && settings.memberId && settings.memberId.indexOf('=gSess.memId') >= 0) {
    console.error('You do not using godomall 5. please visit https://developers.channel.io/docs/guide-for-famous-builders and find correct one');
  } else {
    ChannelIO('boot', settings);
  }
</script> -->
<!-- End Channel Plugin -->

	<div class="top_area"></div>
<div id="wrap" >

    <div id="header_warp" >
		

	<script>
		$(window).scroll(function(){
			if($(window).scrollTop() >= 128){
				$('#header_warp').addClass('headerFix');
			}else{
				$('#header_warp').removeClass('headerFix');
			}
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
				<div class="logo_main"><a href="index.do" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/1bb87d41d15fe27b500a4bfcde01bb0e_33003.png"  alt="상단 로고" title="상단 로고"   /></a></div>
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
					<li><span style="color: #333; font-size: 15px;">${userId}님, 오늘도 건강한 하루 되세요.</span></li>
					<li><a href="logout_process.do">로그아웃</a></li>
					<!--<li><a href="../board/list.jsp?bdId=event&period=current">이벤트</a></li>-->
					<li class="cs">
						<a href="#">고객센터</a>
						<div class="cs_in">
							<ul >
								<li><a href="notice.do">공지사항</a></li>
								<li><a href="goodsreview_list.do">리얼후기</a></li>								
							</ul>
						</div>


					</li>

				</ul>
				<ul class="list_2">
					<li><a href="mypage_pass.do"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cs_icn.png" alt="매이페이지"></a></li>
					<li class="cart"><a href="cart.do"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cart_icn.png" alt="장바구니"></a>

                      <!-- <strong><b><a href="../order/cart.jsp">2</a></b></strong> -->

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

            <div class="location_wrap">
                <div class="location_cont">
                    <em><a href="#" class="local_home">HOME</a> > 마이페이지 > 내정보수정</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <div class="side_cont">
<div class="sub_menu_box">
    <h2>마이페이지</h2>
    <ul class="sub_menu_mypage">
        <li>쇼핑정보
            <ul class="sub_depth1">
                <li><a href="order_list.do">- 주문목록/배송조회</a></li>
                <li><a href="cancel_list.do">- 취소 내역</a></li>
                <!-- <li><a href="../mypage/refund_list.jsp">- 환불/입금 내역</a></li> -->
                <li><a href="wish_list.do">- 찜리스트</a></li>
            </ul>
        </li>
        <!-- <li>혜택관리
            <ul class="sub_depth1">
                <li><a href="../mypage/coupon.jsp">- 쿠폰</a></li>
	
                <li><a href="../mypage/mileage.jsp">- 적립금</a></li>
            </ul>
        </li>
        <li>고객센터
            <ul class="sub_depth1">
				<li><a href="../service/notice.jsp">- 공지사항</a></li>
				<li><a href="../mypage/mypage_qa.jsp">- 1:1문의</a></li>
				<li><a href="../service/faq.jsp">- FAQ</a></li>
            </ul>
        </li> -->
        <li>회원정보
            <ul class="sub_depth1">
                <li><a href="my_change_index.do">- 회원정보 변경</a></li>
				<li><a href="mypage_deli.do">- 배송지 관리</a></li>
                <li><a href="mypage_out_pwChk.do">- 회원 탈퇴</a></li>
            </ul>
        </li>
        <li>나의 상품후기
            <ul class="sub_depth1">
                <li><a href="user_my_rev.do">- 나의 상품후기</a></li>
            </ul>
        </li>
         <li>나의 상품문의
            <ul class="sub_depth1">
                <li><a href="my_qna.do">- 나의 상품문의</a></li>
            </ul>
        </li> 
    </ul>
</div>
<!-- //sub_menu_box -->
<script type="text/javascript">
    // 메뉴 선택
    $('.sub_menu_mypage li > a[href*="' + document.location.pathname + '"]').addClass('active');
</script>
                </div>
                <!-- //side_cont -->

<div class="content">
<link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/member/member.css?ts=1662983268">
    <div class="mypage_cont">

        <div class="my_page">

        
            <div class="join_base_wrap">

                <div class="member_cont">
                    <!-- <form id="formJoin" name="formJoin" action="https://www.pocketsalad.co.kr/mypage/my_page_ps.jsp" method="post"> -->
                        <input type="hidden" name="memNo" value="85762"/>
                        <input type="hidden" name="memberFl" value="personal"/>
                        <input type="hidden" name="dupeinfo" value=""/>
                        <input type="hidden" name="rncheck" value="none"/>
                        <input type="hidden" name="mode" value="modify"/>

                        <!-- 회원가입/정보 기본정보 --><div class="base_info_box">
    
	    <h3>회원정보 변경</h3>
		<style>
			.base_info_sec table th{ min-width:100px; height:51px; }
		</style>
 

    <span><span class="greenStar">*&nbsp;</span>표시는 반드시 입력하셔야 하는 항목입니다.</span>
	<!-- action="my_change_update.do" -->
    <form id="confirmFrm"  method="post">
   
    <div class="base_info_sec">
        <table border="0" cellpadding="0" cellspacing="0">
		
            <colgroup>
                <col width="20%">
                <col width="80%">
            </colgroup>

            <tbody>
          
            <tr>
                <th><span class="greenStar">*&nbsp;</span>아이디</th>
                <td>
                    <input type="hidden" name="id" id="id" value="${chanConfirmVO.id}"/>
                   ${userId}
                </td>

            </tr>
            <tr class="">
                <th><span class="greenStar">*&nbsp;</span>비밀번호</th>
                <td class="member_password">
                    <div class="btn_common_box">
                        <span class="btn_gray_list"><a href="#memberNewPw" class="btn_gray_mid"><em>비밀번호 변경</em></a></span>
                        <!-- <span class="btn_gray_list"><a href="#lyMemberPw" class="btn_gray_mid"><em>비밀번호 도움말</em></a></span> -->
                    </div>

                  <!-- <div id="lyMemberPw" class="layer_area" style="display:none;">
                        <div class="ly_wrap pw_advice_layer">
                            <div class="ly_tit">
                                <strong>비밀번호 도움말</strong>
                            </div>
                            <div class="ly_cont">
                                <div class="pw_advice_list">
                                    <ul>
                                        <li>영문대소문자는 구분이 되며, 한가지 문자로만 입력은 위험합니다.</li>
                                        <li><strong>사용가능 특수문자 :</strong> <strong class="fc_red">!@#$%^&*()_+-=`~</strong></li>
                                        <li>ID/주민번호/생일/전화번호 등의 개인정보와 통상 사용 순서대로의 3자 이상 연속 사용은 피해주세요.
                                            <br/>비밀번호는 주기적으로 바꾸어 사용하시는 것이 안전합니다.</li>
                                    </ul>
                                </div>
                            </div> 
                            //ly_cont
                            <a href="#close" class="ly_close"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/layer/btn_layer_close.png" alt="닫기"></a>
                        </div>
                        //ly_wrap
                    </div> -->
                    <!-- //layer_area -->

                    <div id="memberNewPw" class="member_pw_change" style="display:none;">
                        <dl class="">
                            <dt>현재 비밀번호</dt>
                            <dd>
                           
                                <div class="member_warning">
                                	<%-- <input type="hidden" name="id" id="id" value="${chanConfirmVO.id}"/> --%>
                                    <input type="password" id="pass" name="pass" value="${confirmPass}" style="width:58%;" />
                                    <input type="button" id="btn_passReConfirm" name="btn_passReConfirm" class="btn_myPass" style="width: 10%;"
                                    value="확인" />
                                </div>
                                
                            </dd>
                        </dl>
                                            
                        <dl>
                            <dt>새 비밀번호</dt>
                            <dd>
                                <div class="member_warning">
                                    <input type="password" id="newPass" name="newPass" style="width:70%;" />
                                </div>
                            </dd>
                        </dl>
                        <dl>
                            <dt>새 비밀번호 확인</dt>
                            <dd>
                                <div class="member_warning">
                                    <input type="password" id="newPassword" name="newPassword" style="width:70%;" />
                                </div>
                                <div id="alert-success" style="color:#00af85; display: none;">비밀번호가 일치합니다.</div>
                                <div id="alert-danger" style="color:red; display: none;">비밀번호가 일치하지 않습니다.</div>
                                <div id="alert-charDanger" style="color:red; display: none;">!,@,#,$,% 의 특수문자포함 6~15글자이내로 입력.</div>
                            </dd>
                        </dl>
                    </div>
                    <!-- //member_pw_change -->
                </td>
            </tr>
            <tr>
                <th><span class="greenStar">*&nbsp;</span>이름</th>
                <td>
                    <div class="member_warning">
                        <input style="width:48.5%;"
                        type="text" name="name" id="name" data-pattern="gdMemberNmGlobal" value="${chanConfirmVO.name}" maxlength="30" >
                    </div>
                </td>
            </tr>
            <tr>
                <th><span class="greenStar">*&nbsp;</span><span>이메일</span></th>
                <td class="member_email">
                    <div class="member_warning">
						<input type="hidden" name="email" id="email" value="${chanConfirmVO.email}">
                        <input type="text" name="email_head" id="email_head" value="${resultId}" style="width: 181px;margin-right:7px;"">
                        <input type="text" name="email_next" id="email_next" value="${resultEmail}"  style="width: 181px;">
						<!--  <select id="emailDomain" name="emailDomain" class="chosen-select" style="width:190px;">
                            <option value="self">직접입력</option>
                            <option value="naver.com">naver.com</option>
                            <option value="hanmail.net">hanmail.net</option>
                            <option value="daum.net">daum.net</option>
                            <option value="nate.com">nate.com</option>
                            <option value="hotmail.com">hotmail.com</option>
                            <option value="gmail.com">gmail.com</option>
                            <option value="icloud.com">icloud.com</option>
                        </select>  -->
                       
                    </div>
					<div class="member_warning js_email"></div>
<!--                    <div class="form_element">-->
<!--                        <input type="checkbox" id="maillingFl" name="maillingFl" value="y" >-->
<!--                        <label for="maillingFl" class="check_s ">다양한 할인 혜택과 이벤트 정보 메일 수신에 동의합니다.</label>-->
<!--                    </div>-->
                </td>
            </tr>
            <tr>
                <th><span class="greenStar">*&nbsp;</span><span >휴대폰번호</span></th>
                <td class="member_address">
                    <div class="address_postcode">
                        <input type="text" id="phone" name="phone" maxlength="12" placeholder="- 없이 입력하세요." data-pattern="gdNum" value="${chanConfirmVO.phone}" style="width: calc( 100% - 195px) ;"
                        oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">

                        <!-- s onnomad -->
                        <!-- <button class="btn_post_search" type="button" id="btnAuthPhoneVf" style="width:165px;">
                            인증번호받기
                        </button>
                        <input style="margin-top:5px;display: none" type="text" id="cellPhoneVf" name="cellPhoneVf" maxlength="5" placeholder="인증번호입력" data-pattern="gdNum" >
                        <button style="display: none" class="btn_post_search" type="button" id="btnAuthPhoneVfCheck">
                            인증하기
                        </button>
                        <button style="display: none" class="btn_post_search" type="button" id="btnAuthPhoneVfRe">
                            재전송
                        </button>
                        <p id="vfInfo" style="float:left; margin: 10px 0 0 10px;color:#e10505;display: none;">인증이 완료 되었습니다!</p> -->
                        <!-- <script>
                            var vfNum;
                            var isVfChecked = false;

                            $("#btnAuthPhoneVf").click(function() {
                                if($("#cellPhone").val() && $("#cellPhone").val().length > 8) {
                                    $.ajax({
                                        url: '/member/member_ps.jsp',
                                        type: "POST",
                                        data: {
                                            mode: 'smsCpVf',
                                            cellPhone: $("#cellPhone").val()
                                        }
                                    }).done(function(res) {
                                        if(res.success) {
                                            $("#btnAuthPhoneVf").hide();
                                            $("#cellPhoneVf").show();
                                            $("#btnAuthPhoneVfRe").show();
                                            $("#btnAuthPhoneVfCheck").show();
                                            vfNum = res.vfNum;
                                        }
                                        else {
                                            alert("인증번호 발송이 실패하였습니다. 휴대폰 번호를 확인해 주세요.");
                                        }
                                    });
                                }
                                else {
                                    alert("인증번호 발송이 실패하였습니다. 휴대폰 번호를 확인해 주세요.");
                                }
                                $("#vfInfo").hide();
                            });
                            $("#btnAuthPhoneVfRe").click(function() {
                                $("#btnAuthPhoneVf").click();
                            });
                            $("#btnAuthPhoneVfCheck").click(function() {
                                if(vfNum && vfNum == $("#cellPhoneVf").val()) {
                                    $("#cellPhone").attr("readonly", true);
                                    $("#cellPhoneVf").hide();
                                    $("#btnAuthPhoneVfRe").hide();
                                    $("#btnAuthPhoneVfCheck").hide();
                                    $("#vfInfo").text("인증이 완료 되었습니다!").show();
                                    isVfChecked = true;
                                }
                                else {
                                    $("#vfInfo").text("인증번호가 잘못 입력되었습니다!").show();
                                }

                            });
                        </script>
                        <script>
                            isVfChecked = true;
                            $("#btnAuthPhoneVf").hide();
                        </script> -->
                        <!-- e onnomad -->
                    </div>
<!--                    <div class="form_element">-->
<!--                        <input type="checkbox" id="smsFl" name="smsFl" value="y" >-->
<!--                        <label for="smsFl" class="check_s ">다양한 할인 혜택과 이벤트 정보 SMS 수신에 동의합니다.</label>-->
<!--                    </div>-->
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    </form>
    <!-- //base_info_sec -->
</div>
<!-- //base_info_box --><!-- 회원가입/정보 기본정보 -->
                        <!-- 회원가입/정보 사업자정보 --><!-- 회원가입/정보 사업자정보 -->
                        <!-- 회원가입/정보 부가정보 --><div class="addition_info_box">
    <!-- <h3>부가정보</h3>
    <div class="addition_info_sec">
        <table border="0" cellpadding="0" cellspacing="0">
            <colgroup>
                <col width="25%">
                <col width="75%">
            </colgroup>
            <tbody>
            <tr>
                <th><span>추천인 아이디</span></th>
                <td>
                    <div class="member_warning">
                        <input type="text" id="recommId" name="recommId" value="">
                    </div>
                </td>
            </tr>
            <tr>
                <th><span>휴면회원 방지기간</span></th>
                <td>
                    <div class="member_warning">
                        <div class="form_element">
                            <ul>
                                <li>
                                    <input type="radio" id="expirationFl1" name="expirationFl" value="1" checked="checked">
                                    <label for="expirationFl1" class="choice_s on">1년</label>
                                </li>
                                <li>
                                    <input type="radio" id="expirationFl3" name="expirationFl" value="3" >
                                    <label for="expirationFl3" class="choice_s ">3년</label>
                                </li>
                                <li>
                                    <input type="radio" id="expirationFl5" name="expirationFl" value="5" >
                                    <label for="expirationFl5" class="choice_s ">5년</label>
                                </li>
                                <li>
                                    <input type="radio" id="expirationFl0" name="expirationFl" value="999" >
                                    <label for="expirationFl0" class="choice_s ">탈퇴 시 - 평생회원</label>
                                </li>
                            </ul>
                        </div>
                    </div>
                    //member_warning

                    평생회원 이벤트 안내문구
                    <div class="member_warning_info dn">
                        <div class="info_title">평생회원 이벤트</div>
                        <div class="info_text">
                            휴면회원 방지기간을 ‘탈퇴 시’로 변경하시면,<br>
                            휴면회원으로 전환되지 않으며 고객님의 정보가 탈퇴 시까지 안전하게 보관됩니다.<br>
                        </div>
                    </div>
                    평생회원 이벤트 안내문구
                </td>
            </tr>
            </tbody>
        </table>
    </div> -->
    <!-- //addition_info_sec -->
</div>
<!-- //addition_info_box -->

<!-- <div class="site_info_box">
    <h3>계정 연결정보</h3>
    <div class="site_sns_info">
        <div class="site_sns_list">
            <em>연결된 계정이 없습니다.</em>
            <a href="#" id="apple_btn" class="my_apple js_btn_sns_connect" data-sns="apple">
                <span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/mypage/pc_apple_s.png" alt="애플 연결"></span>
            </a>
            <div id="appleid-signin" style="display: none"></div>
            <a href="#;" class="my_naver js_btn_sns_connect" data-sns="naver"><span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/mypage/pc_naver_s.png" alt="네이버 연결"></span>
			<b>NAVER</b>
			</a>
            <a href="#;" class="my_kakao js_btn_sns_connect" data-sns="kakao"><span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/mypage/pc_kakao_s.png" alt="카카오 연결"/></span>
			<b>KAKAO</b>
			</a>
        </div>
    </div>
</div> -->

<!-- N : 약관동의 시작 -->
<!-- N : 약관동의 끝 -->

<!-- 회원가입/정보 부가정보 -->

                        <div class="btn_center_box">
                            <button type="button" class="btn_myPageCancel" 
                            onclick="history.back();">취소</button>
                            <input type="button" class="btn_myPageConfirm" 
                            id="btn_myPageConfirm" value="정보수정" >
                        </div>
                        <!-- //btn_center_box -->
                    <!-- </form> -->
                </div>
                <!-- //member_cont -->
            </div>
            <!-- //join_base_wrap -->

        </div>
        <!-- //my_page -->

    </div>
    <!-- //mypage_cont -->

</div>
<!-- //content -->


<!-- <script type="text/javascript">
    var snsConnection = {"snsJoinFl":null,"snsTypeFl":""};
    var $formJoin;

    $(document).ready(function () {
        $formJoin = $('#formJoin');

        $('.btn_member_cancel', $formJoin).click(function (e) {
            e.preventDefault();
            top.location.href = '/';
        });

        $('#btnAuthPhone').click(function (e) {
            e.preventDefault();
            var protocol = location.protocol;
            var callbackUrl = "https://pocketsalad.co.kr:443/member/authcellphone/dreamsecurity_result.jsp";
            window.open(protocol + "//hpauthdream.godo.co.kr/module/Mobile_hpauthDream_Main.jsp?callType=modifymember&shopUrl=" + callbackUrl + "&cpid=godo1234", "auth_popup", "top=30, left=50, status=0, width=425, height=650");
        });

        $('#btnPostcode').click(function (e) {
            e.preventDefault();
            gd_postcode_search('zonecode', 'address', 'zipcode');
        });

        $('#btnCompanyPostcode').click(function (e) {
            e.preventDefault();
            gd_postcode_search('comZonecode', 'comAddress', 'comZipcode');
        });

        // 인풋박스 선택 이벤트
        var $datepicker = $('.js_datepicker');
        if ($datepicker.length) {
            $datepicker.datetimepicker({
                locale: 'ko',
                format: 'YYYY-MM-DD',
                dayViewHeaderFormat: 'YYYY MM',
                viewMode: 'days',
                ignoreReadonly: true,
                debug: false,
                keepOpen: false
            });
        }

        /**
         * 약관 체크박스 이벤트
         */
        $('.join_agreement_box :checkbox', $formJoin).change(function (e) {
            e.preventDefault();
            $('p.msg').addClass('dn');
            var $target = $(e.target), $label = $target.siblings('label'), $termsView = $target.closest('.join_agreement_box');
            var isTermsAgreeSelect = (e.target.id === 'termsAgree3') || (e.target.id === 'termsAgree4') || (e.target.id === 'termsAgree5');
            var isTargetChecked = $target.prop('checked') === true;

            if (isTargetChecked) {
                if (isTermsAgreeSelect) {
                    $termsView.find('.agreement_choice_box label').addClass('on');
                    $termsView.find('.agreement_choice_box :checkbox').attr({
                        value: "y", checked: "checked"
                    });
                } else {
                    $target.val('y');
                    $label.addClass('on');
                }
            } else {
                if (isTermsAgreeSelect) {
                    $termsView.find('.agreement_choice_box label').removeClass('on');
                    $termsView.find('.agreement_choice_box :checkbox').attr({
                        value: "n", checked: "checked"
                    });
                } else {
                    $target.val('n');
                    $label.removeClass('on');
                }
            }
        });

        gd_select_email_domain2('email_next');




        gd_member2.set_my_page(my_page);
        gd_member2.init($formJoin);

        $('.btn_comfirm').click({form: $formJoin}, gd_member2.save);

        $("#apple_btn").on("click", startClicked);
        function startClicked(){
            $("#appleid-signin").click();
        }

    });

    var join_field = {"mode":"member_joinitem","email":{"use":"y","require":"y","data":{"self":"\uc9c1\uc811\uc785\ub825","naver.com":"naver.com","hanmail.net":"hanmail.net","daum.net":"daum.net","nate.com":"nate.com","hotmail.com":"hotmail.com","gmail.com":"gmail.com","icloud.com":"icloud.com"}},"memId":{"use":"y","maxlen":"50","minlen":"4","require":"y"},"memNm":{"use":"y","require":"y"},"memPw":{"use":"y","maxlen":"16","minlen":"10","require":"n"},"smsFl":{"use":"y"},"busiNo":{"overlapBusiNoFl":"y","charlen":10},"nickNm":{"use":"n","maxlen":"20","minlen":"2"},"birthDt":{"use":"n","require":"n"},"mallSno":"1","marriFl":{"use":"n"},"memberFl":{"use":"y","require":"y"},"recommId":{"use":"y"},"cellPhone":{"use":"y","require":"y"},"marriDate":{"use":"n"},"calendarFl":{"use":"n"},"maillingFl":{"use":"y"},"expirationFl":{"use":"y","require":"y"},"interest":{"data":{"01001001":"\ud654\uc7a5\ud488\/\ud5a5\uc218\/\ubbf8\uc6a9\ud488","01001002":"\ucef4\ud4e8\ud130\/SW","01001003":"\uc758\ub958\/\ud328\uc158\uc7a1\ud654","01001004":"\uc0dd\ud65c\/\uc8fc\ubc29\uc6a9\ud488","01001005":"\ubcf4\uc11d\/\uc2dc\uacc4\/\uc545\uc138\uc0ac\ub9ac","01001006":"\uac00\uc804\/\uce74\uba54\ub77c","01001007":"\uc11c\uc801\/\uc74c\ubc18\/\ube44\ub514\uc624"}},"job":{"data":{"01002001":"\ud559\uc0dd","01002002":"\ucef4\ud4e8\ud130\uc804\ubb38\uc9c1","01002003":"\ud68c\uc0ac\uc6d0","01002004":"\uc804\uc5c5\uc8fc\ubd80","01002005":"\uac74\ucd95\/\ud1a0\ubaa9","01002006":"\uae08\uc735\uc5c5","01002007":"\uad50\uc218\uc9c1","01002008":"\uacf5\ubb34\uc6d0","01002009":"\uc758\ub8cc\uacc4","01002010":"\ubc95\uc870\uacc4","01002011":"\uc5b8\ub860\/\ucd9c\ud310","01002012":"\uc790\uc601\uc5c5","01002013":"\ubc29\uc1a1\/\uc5f0\uc608\/\uc608\uc220","01002014":"\uae30\ud0c0"}},"groupSno":{"data":{"1":"\ud3ec\ucf13\ud0d0\uc0c9 Lv.1","2":"\ud3ec\ucf13\ub2e4\uc9d0 Lv.2","3":"\ud3ec\ucf13\ud589\ub3d9 Lv.3","4":"\ud3ec\ucf13\uc2b5\uad00 Lv.4","5":"\ud3ec\ucf13\uc77c\uc0c1 Lv.5","8":"\uad00\ub9ac\uc790","9":"\ud14c\uc2a4\ud2b8"}},"ex":[],"ex1":null,"ex2":null,"ex3":null,"ex4":null,"ex5":null,"ex6":null,"options":{"use":"y"},"businessinfo":{"use":"n"}};
    var join_data = {"memNo":"85762","mallSno":"1","memId":"tester21","groupSno":"1","groupModDt":"0000-00-00 00:00:00","groupValidDt":"0000-00-00 00:00:00","memNm":"\ud14c\uc2a4\ud130","pronounceName":"","nickNm":"","memPw":"","changePasswordDt":"0000-00-00 00:00:00","guidePasswordDt":"0000-00-00 00:00:00","appFl":"y","approvalDt":"2022-10-24 18:50:15","memberFl":"personal","entryBenefitOfferDt":"2022-10-24 18:50:15","sexFl":"","birthDt":"","calendarFl":"s","birthEventFl":"0000-00-00","email":"alfkdlej5@gmail.com","zipcode":"","zonecode":"","address":"","addressSub":"","phoneCountryCode":"kr","phone":"","cellPhoneCountryCode":"kr","cellPhone":"01089684952","fax":"","company":"","service":"","item":"","busiNo":"","ceo":"","comZipcode":"","comZonecode":"","comAddress":"","comAddressSub":"","mileage":"0.00","deposit":"0.00","maillingFl":"n","smsFl":"n","marriFl":"n","marriDate":"","job":"","interest":"","reEntryFl":"","entryDt":"2022-10-24 18:50:15","entryPath":"pc","loginLimit":"null","lastLoginDt":"2022-10-25 17:56:03","lastLoginIp":"211.63.89.139","lastSaleDt":"2022-10-25 22:51:00","loginCnt":"3","saleCnt":0,"saleAmt":"0.00","memo":"","recommId":"","recommFl":"","ex1":"","ex2":"","ex3":"","ex4":"","ex5":"","ex6":"","privateApprovalFl":"n","privateApprovalOptionFl":[],"privateOfferFl":[],"privateConsignFl":[],"foreigner":"1","dupeinfo":"","adultFl":"n","adultConfirmDt":"0000-00-00 00:00:00","pakey":"","rncheck":"none","adminMemo":"","sleepFl":"n","sleepMailFl":"n","sleepSmsFl":"n","sleepWakeDt":"0000-00-00 00:00:00","expirationFl":"1","lifeMemberConversionDt":"0000-00-00 00:00:00","regDt":"2022-10-24 18:50:15","modDt":"2022-10-25 22:51:00","simpleJoinFl":"n","under14ConsentFl":"n","snsJoinFl":null,"snsTypeFl":"","connectFl":null,"birthYear":"","birthMonth":false,"birthDay":false,"marriYear":"","marriMonth":false,"marriDay":false};
    var my_page = true;

	function gd_select_email_domain2(name,select) {
		if (typeof select === 'undefined') {
			select = 'emailDomain';
		}
		var $email = $(':text[name=' + name + ']');
		var $emailDomain = $('select[id='+select+']');
		$emailDomain.on('change', function (e) {
			var emailValue = $email.val();			
			var indexOf = emailValue.indexOf('@');
			if (indexOf == -1) {
				if ($emailDomain.val() === 'self') {										
					$("#email_next").val("");
				} else {
					$email.val($emailDomain.val());
					if($('#email_head').val() != '' && $('#email_next').val() != ''){
						$("#email").val($('#email_head').val() + "@" + $('#email_next').val());
					} else {
						$("#email").val("");
					}
				}
				$email.trigger('focusout');
			} else {
				if ($emailDomain.val() === 'self') {
					//$email.val(emailValue.substring(0, indexOf + 1));
					$("#email_next").val("");
					$email.focus();
				} else {
					$email.val(emailValue.substring(0, indexOf + 1) + $emailDomain.val());
					$email.trigger('focusout');
				}
			}
		});
	}
	
	
</script> -->

<script type="text/javascript" src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>
<script type="text/javascript">
    AppleID.auth.init({
        clientId : 'pocketsaladcokr.kr.co.smartskin',
        scope : 'name email',
        redirectURI: 'https://pocketsalad.co.kr/member/apple/apple_login.jsp',
        state: 'connect',
        // usePopup: true
    });
</script>


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


        <!-- 우측 스크롤 배너 -->
        <!-- <div id="scroll_right">
<div class="qmenu_wrap">
	<ul class="qm qm1">
		<li><a href="/mypage/order_list.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_deli.png" alt=""></a></li>
		<li class="cart"><span><a href="../order/cart.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_cart.png" alt=""></a>
			<strong><a href="../order/cart.jsp">2</a></strong>

		</span></li>

	</ul>


<div class="bg_scroll_right_cont"></div>
<div class="scroll_right_cont">
 <div class="scr_paging">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_top.png" alt=""></button>

    </div>
    <h4>TODAY VIEW</h4>
    <ul>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000239">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/1000000239_main_080.jpg">
                </span>
                <span class="src_box">
                    <em>4주 정기배송 샐러드 주 5일</em>
                        <strong>92,400<b>원</b></strong>
                </span>
                //src_box
            </a>
        </li>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=260">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/10/15/260/260_main_029.jpg">
                </span>
                <span class="src_box">
                    <em>2주 정기배송 샐러드 주 5일</em>
                        <strong>46,500<b>원</b></strong>
                </span>
                //src_box
            </a>
        </li>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000376">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000376/1000000376_main_086.jpg">
                </span>
                <span class="src_box">
                    <em>하루에 한 끼를 샐러드로 5일</em>
                        <strong>23,350<b>원</b></strong>
                </span>
                //src_box
            </a>
        </li>

    </ul>
    <ul>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000240">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000240/1000000240_main_028.jpg">
                </span>
                <span class="src_box">
                    <em>4주 정기배송 샐러드 주 3일</em>
                        <strong>55,800<b>원</b></strong>
                </span>
                //src_box
            </a>
        </li>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000149">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/11/48/1000000149/1000000149_main_093.jpg">
                </span>
                <span class="src_box">
                    <em>그릴 닭가슴살볼 3종 혼합 6팩</em>
                        <strong>16,100<b>원</b></strong>
                </span>
                //src_box
            </a>
        </li>

    </ul>

    <div class="scr_paging scr_paging2">

        <span><strong class="js_current">0</strong>/<span class="js_total" style="float:none;width:auto;">2</span></span>
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_bottom.png" alt=""></button>
    </div>
    //scr_paging
</div>

</div>
<span class="btn_scroll_top"><a href="#TOP"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_scroll_top.png" alt="상단으로 이동"/></a></span>
<span class="btn_scroll_down"><a href="#footer"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/btn/btn_scroll_down.png" alt="하단으로 이동"/></a></span>

<script type="text/javascript">
    // DOM 로드
    $(function () {
        $('.scroll_right_cont').todayGoods();
    });

    // 최근본상품 리스트 페이징 처리 플러그인
    $.fn.todayGoods = function () {
        // 기본값 세팅
        var self = $(this);
        var setting = {
            page: 1,
            total: 0,
            rowno: 3
        };
        var element = {
            goodsList: self.find('ul > li'),
            closeButton: self.find('ul > li > button'),
            prev: self.find('.scr_paging > .bnt_scroll_prev'),
            next: self.find('.scr_paging > .bnt_scroll_next'),
            paging: self.find('.scr_paging')
        };

        // 페이지 갯수 설정
        setting.total = Math.ceil(element.goodsList.length / setting.rowno);

        // 화면 초기화 및 갱신 (페이지 및 갯수 표기)
        var init = function () {
            if (setting.total == 0) {
                setting.page = 0;
                element.paging.hide();
            }
            self.find('ul').hide().eq(setting.page - 1).show();
            self.find('.scr_paging .js_current').text(setting.page);
            self.find('.scr_paging .js_total').text(setting.total);
        }

        // 삭제버튼 클릭
        element.closeButton.click(function(e){
            $.post('../goods/goods_ps.jsp', {
                'mode': 'delete_today_goods',
                'goodsNo': $(this).data('goods-no')
            }, function (data, status) {
                // 값이 없는 경우 성공
                if (status == 'success' && data == '') {
                    location.reload(true);
                }
                else {
                    console.log('request fail. ajax status (' + status + ')');
                }
            });
        });

        // 이전버튼 클릭
        /* element.prev.click(function (e) {
            setting.page = 1 == setting.page ? setting.total : setting.page - 1;
            init();
        });
 */
        // 다음버튼 클릭
        element.next.click(function (e) {
            setting.page = setting.total == setting.page ? 1 : setting.page + 1;
            init();
        });

        // 화면 초기화
        init();
    };
</script>
        </div>
        //scroll_right -->
        <!-- //우측 스크롤 배너 -->


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

<!-- <script type='text/javascript'>
var _NB_ID='tester21';
var _NB_UDF={'udf01':'테스터','udf03':'010-8968-4952','udf06':'포켓탐색 Lv.1'};
</script> -->

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

<!-- 비밀번호 중복 확인 -->
<script>
document.getElementById("btn_passReConfirm").onclick = function () {

		$("#confirmFrm").attr("action","pw_chk_process.do");
		$("#confirmFrm").submit();	  

	 }; 
	 
</script> 
<!-- <script>

/* 정보 변경 */
var buttonClick = documet.getElementById("btn_myPageConfirm");
buttonClick.onclick = function () {
	var name = $("#name").val();
	var newEmailHead = $("#email_head").val();
	var newEmailNext = $("#email_next").val();
	var newPhone = $("#phone").val();
	
	var newPass = $("#newPass").val();
	var newPassChk = $("#newPassword").val();
	var recentPass = $("#pass").val();
	

	/* if (newPass == "" ||  newPassChk == "" || recentPass == ""){
		alert("변경하실 비밀번호를 입력해주세요.");
		//$("#btn_myPageConfirm").attr("disabled",true);
		buttonClick.disabled = true;
	}
	else if (newPass != newPassChk){		 
		alert("비밀번호가 일치하지 않습니다.");
		//$("#btn_myPageConfirm").attr("disabled",true);
		buttonClick.disabled = true;
	 } else if (newEmailHead = "" || newEmailNext = "" || newPhone = ""){
		alert("정보를 빠짐없이 입력해주세요.");
		//$("#btn_myPageConfirm").attr("disabled",true);
		buttonClick.disabled = true;
	 }
	 */
	//$("#btn_myPageConfirm").attr("disabled",false);
	buttonClick.disabled =false;
	$("#confirmFrm").attr("action","my_change_update.do");
	$("#confirmFrm").submit();
 };
</script>  --> 
<script type="text/javascript">
$(function() {
	 $("#btn_myPageConfirm").click(function(){
		var name = $("#name").val();
		var newEmail = "";
		var newEmailHead = $("#email_head").val();
		var newEmailNext = $("#email_next").val();
		var newPhone = $("#phone").val();
	   	var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		var newPass = $("#newPassword").val();
		var newPassChk = $("#pass").val();
		var recentPass = $("#passReConfirm").val();
		
		if(!newEmailHead){
			alert("이메일을 입력해주세요.");
			$("#email_head").focus();
			return false;
		}
		if(!newEmailNext){
			alert("도메인을 입력해주세요.");
			$("#email_next").focus();
			return false;
		}
		newEmail = newEmailHead+"@"+newEmailNext;
		$("#email").val(newEmail);
		
		if(!email_rule.test(newEmail)){
			alert("이메일을 형식에 맞게 입력해주세요.");
			return false;
		}
			
		if (newPass == "" ||  newPassChk == "" || recentPass == ""){
			alert("변경하실 비밀번호를 입력해주세요.");
			$("#btn_myPageConfirm").attr("disabled",false);
		}
		else if (newPass != newPassChk){		 
			alert("비밀번호가 일치하지 않습니다.");
			$("#btn_myPageConfirm").attr("disabled",false);
		 } else if (newPass != "" &&  newPassChk != "" && recentPass != "" 
				 && newPass == newPassChk && newEmailHead != "" && newEmailNext != "" &&
				 newPhone != ""){
				$("#btn_myPageConfirm").attr("disabled",true);
				$("#confirmFrm").attr("action","my_change_update.do");
				$("#confirmFrm").submit();		 
		 }
		$("#btn_myPageConfirm").attr("disabled",false);
	 });
	});
</script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/nd_kakao.js?ts=1662087469"></script>

</body>
</html>