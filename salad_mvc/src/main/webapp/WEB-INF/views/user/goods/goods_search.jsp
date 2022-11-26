<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <title>포켓샐러드 - 내가 찾던 식단관리!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="author" content="" />
    <meta name="description" content="신선한 샐러드를 언제 어디서나 간편하게 즐기는 포켓샐러드! 라이스&포켓닭까지 함께 즐겨보세요" />
    <meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트도시락, 포켓닭, 탄단지, 다이어트, 다이어트식단, 식단관리" />
    <meta name="csrf-token" content="MTY2NjYxODYzNjM5Mjg2OTgyMDQ3MjA2OTU4NzA4MjMzMzU3MTkzMTAz" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/goods/goods_list.jsp?cateCd=001">
    <meta property="og:description" content="내가 찾던 식단관리!">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:image:width" content="160">
    <meta property="og:image:height" content="160">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="포켓샐러드">
    <meta name="twitter:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta name="twitter:description" content="내가 찾던 식단관리!">

    <link rel="icon" href="/data/common/favicon.ico" type="image/x-icon" />

    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/reset.css?ts=1647562972">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/common.css?ts=1659591193">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/common/layer/layer.css?ts=1666243530">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/layout/layout.css?ts=1662982669">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/list.css?ts=1662515260">
	<link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css?ts=1644979979">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/goods.css?ts=1660635983" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.css?ts=1662105386" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/custom.css?ts=1660281178" />

    <!-- 온노마드 css 추가 -->
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/nd_custom.css?ts=1662983189" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/swiper.css?ts=1610501674" />


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


<!-- 전체 카테고리 -->
<script type="text/javascript">
    $(function(){
    	
    	$("#allMenuToggle").click(function(){
    		$("#gnbAllMenu").toggle();
    	});//click
    	
    });//ready
    
</script>

<script type="text/javascript">
$(function(){
	
	setSrchPrdBoxList(1);//상품 박스형 리스트
	
	$("#sortTypeSel").change(function(){
		setSrchPrdBoxList(1);
	})//change
	
})//redeay

function setSrchPrdBoxList(currentPage){//상품 박스형 리스트
	$.ajax({
		url:"search_prd_box_list_ajax.do",
		data:"currentPage="+currentPage+"&keyword=${param.keyword}&sortType="+$("#sortTypeSel").val(),
		dataType:"json",
		error:function( xhr ){
			alert("상품 박스형 리스트를 불러오는 중에 문제가 발생했습니다.");
			console.log(xhr.status);
		},
		success:function(jsonObj){
			/* 페이징 테이블 */
			$("#prdBoxOutput").show();
			
			var ulOutput="<ul>";
			if(!jsonObj.isEmpty){
				$.each(jsonObj.list, function(i, json){
					ulOutput+="<li  style='width:33.333333333333%;'>";
			        ulOutput+="<div class='item_cont'>";
			        ulOutput+="<div class='item_photo_box'>";
			        ulOutput+="<a href='http://localhost/salad_mvc/goods/goods_view.do?prdNum="+json.prdNum+"'>";
			        ulOutput+="<img src='http://localhost/salad_mvc/common/images/product/"+json.thum+"' width='570' class='middle'/>";
			        ulOutput+="</a>";
			        ulOutput+="<span class='best-icon'>";
					ulOutput+="</span>";
			        ulOutput+="</div>";
			        ulOutput+="<div class='item_info_cont'>";
			        ulOutput+="<div class='item_tit_box'>";
			        ulOutput+="<strong>"+json.mainCateName+" | "+json.subCateName+"</strong>";
			        ulOutput+="<a href='http://localhost/salad_mvc/goods/goods_view.do?prdNum="+json.prdNum+"'>";
			        ulOutput+="<strong class='item_name'>"+json.prdName+"</strong>";
			        ulOutput+="</a>";
			        ulOutput+="</div>";
			        ulOutput+="<div class='item_money_box'>";
			        ulOutput+="<div class='all_price'>";
					ulOutput+="<div class='per_wrap'>";
					ulOutput+="<span class='item_discount'><em>"+json.prdDiscount+"%</em></span>";
					ulOutput+="</div>";
					
					var priceDC=Math.floor(json.prdDCPrice);
					const prdDCPrice=priceDC.toLocaleString('ko-KR');
					
					ulOutput+="<strong class='item_price'><span  style=''>"+prdDCPrice+"<i class='won'>원</i></span></strong>";
			        
					var price=Math.floor(json.prdPrice);
					const prdPrice=price.toLocaleString('ko-KR');
					
					ulOutput+="<span class='d_price' style=''>"+prdPrice+"원</span>";
			        ulOutput+="</div>";
			        ulOutput+="</div>";
			        ulOutput+="<div class='item_icon_box'>";
			        ulOutput+="</div>";
			        ulOutput+="<div class='item_review_count'>";
			        ulOutput+=" <span class='review_count'><img src='https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png'>"+json.revCnt+"</span>";
			        ulOutput+="</div>";
			        ulOutput+="</div>";
			        ulOutput+="</div>";
			        ulOutput+="</li>";
				});//each
			} else {
				ulOutput+="<li>데이터가 존재하지 않습니다.</li>";
			}
	        ulOutput+="</ul>";
	        
			$("#searchPrdCnt").html(jsonObj.totalCount);
			$("#prdBoxOutput").html(ulOutput);
			/* 페이징 버튼 */
			var pgOutput="<nav aria-label='Page navigation example' style='display: flex; justify-content: center; margin: 40px 0px;'>";
				pgOutput+="<ul class='pagination'>";
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setSrchPrdBoxList(" + 1 + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt&lt;<!-- << --></a></li>";
			}//end if
			if( jsonObj.startPage != 1 ) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setSrchPrdBoxList(" + (jsonObj.startPage-1) + ")' tabindex='-1'";
				pgOutput+="aria-disabled='true'>&lt;<!-- < --></a></li>";
			}//end if
			for(var i=jsonObj.startPage;i<=jsonObj.endPage;i++){
				if(currentPage==i) {
					pgOutput+="<li class='page-item on'>"
				} else {
					pgOutput+="<li class='page-item'>"
				}//end if
					pgOutput+="<a class='page-link' href='#void' onclick='setSrchPrdBoxList(" + i  + ")'>"+ i +"</a></li>";
			}//end for
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setSrchPrdBoxList(" + (jsonObj.endPage + 1) + ")'>&gt;<!-- > --></a></li>"
			}//end if
			if(jsonObj.totalPage != jsonObj.endPage) {
				pgOutput+="<li class='page-item'>";
				pgOutput+="<a class='page-link' href='#void' onclick='setSrchPrdBoxList(" + jsonObj.totalPage + ")'>&gt&gt;<!-- >> --></a></li>"
			}//end if
			
			pgOutput+="</ul></nav>";
			
			pgOutput+="<input type='hidden' id='currentPage' name='currentPage' value='"+jsonObj.currentPage+"'/>"
			
			$("#pageOutput").html(pgOutput);
		}//success
	})//ajax
}//setPrdList

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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-24T22%3A37%3A16%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3Anull%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22goods_list.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery-cookie/jquery.cookie.js?v=2020120404"></script>
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
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/goods/goods_list.jsp&amp;Referer=https://www.pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
                { event: "setEmail", email: "", hash_method: "sha256" },
                { event: "setZipcode", zipcode: "" },
                { event: "setSiteType", type: deviceType },
                { event: "viewList", item:['1000000239','1000000240','1000000376'] }
            );
        </script>
        <!-- End Criteo Script -->

        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript">
            kakaoPixel('5900620314493041185').pageView();
        </script>
        <!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
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
	
	
<body id="body" class="body-goods body-goods-list pc"  >

	<div class="top_area"></div>
<div id="wrap" >

    <div id="header_warp" >
		
<script src="http://localhost/salad_mvc/resources/js/sticky.min.js"></script>

	<script>
		var sticky = new Sticky('.sticky-list');
	
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
<div class="content">
    <div class="goods_search_cont">
        <strong class="search_text_result">
            <span>&quot;<c:out value=" ${ param.keyword }"/>&quot;</span> 검색결과 <strong><span id="searchPrdCnt"></span></strong> 개
        </strong>
        
        <!-- //goods_search_box -->

        <div class="goods_pick_list">		
            <div class="pick_list_box" >			
                <div class="choice_num_view">
					<select class="chosen-select" name="sortType" id="sortTypeSel" style="width:168px; ">
						<option value="prdRegistDate" >신상품순</option>
						<option value="price_asc" >낮은가격순</option>
						<option value="price_dsc" >높은가격순</option>
					</select>
				</div>					
                <!-- //choice_num_view -->
            </div>
            <!-- //pick_list_box -->
        </div>
        <!-- //goods_pick_list -->
		<div class="m_t40">
			<div class="goods_list">
				<!-- //goods_list_tit -->
				<div class="goods_list_cont">
<!-- 갤러리형 -->

<div class="item_gallery_type" id="prdBoxOutput">
    
</div>
<!-- //item_gallery_type -->




	<style>
.item_photo_box{ width:278px; height:278px; }
.item_photo_box > a > img{width:278px; height:278px; }
.body-goods-list .goods_list .goods_list_cont .item_basket_type ul > li{ margin-right:29px; width:278px !important; }
.body-goods-list .goods_list .goods_list_cont .item_basket_type ul > li:nth-child(4n){margin-right:0px; }
.body-goods-list .item_discount{padding:0; background:0 none; }
.body-goods-list .item_discount em{    color: #f5634b;    font-size: 26px;    font-weight: 700;    font-family: roboto;}
.body-event-sale .item_discount{padding:0; background:0 none; }
.body-event-sale .item_discount em{    color: #f5634b;    font-size: 26px;    font-weight: 700;    font-family: roboto;}

.goods_list .goods_list_cont ul li .item_cont  .item_info_cont .item_money_box .item_price {
display:inline-block;vertical-align:top;
padding: 0px 0 0px 0;
color: #afafaf;
text-decoration: line-through;
font-size: 16px;
margin-left: 2px; font-weight:400;
}
.goods_list .goods_list_cont ul li .item_cont  .item_info_cont .item_money_box .d_price	{    color: #afafaf;
text-decoration: line-through;
font-size: 16px;
margin-left: 2px;
}


.goods_list .goods_list_cont ul li .item_cont  .item_info_cont .item_money_box  .item_price span{ display:inline-block;vertical-align:top;    color: #333;   font-size: 26px;
font-weight: 700;
letter-spacing: -0.5px;
}
.goods_list .goods_list_cont ul li .item_cont  .item_info_cont .item_money_box  .all_price{ line-height:26px; position: relative;
line-height: 26px;
text-align: left;
margin-top: 16px;
padding: 0 0 0 0;}
.goods_list .goods_list_cont ul li .item_cont  .item_info_cont .item_money_box  .all_price:after{content:"";display:block;clear:both;}
.goods_list .goods_list_cont ul li .item_cont  .item_info_cont .item_money_box .per_wrap {
    float: left;
    margin-right: 15px;}






</style>

		
		<div class="item_basket_type" id="prdBoxOutput">
		    
		</div>
<!-- //item_basket_type -->

<!-- option layer -->
<div id="optionViewLayer" class="layer_wrap dn"></div>
<!-- //option layer -->
<div id="addCartLayer" class="layer_wrap dn">
    <div class="box add_cart_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
        <div class="view">
            <h2>장바구니 담기</h2>
            <div class="scroll_box">
                <p class="success"><strong>상품이 장바구니에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
            </div>
            <div class="btn_box">
                <button class="btn_cancel"><span>취소</span></button>
                <button class="btn_confirm btn_move_cart"><span>확인</span></button>
            </div>
            <!-- //btn_box -->
            <button title="닫기" class="close" type="button">닫기</button>
        </div>
    </div>
</div>
<div id="addWishLayer" class="layer_wrap dn">
    <div class="box add_wish_layer" style="position: absolute; margin: 0px; top: 279.5px; left: 651px;">
        <div class="view">
            <h2>찜 리스트 담기</h2>
            <div class="scroll_box">
                <p class="success"><strong>상품이 찜 리스트에 담겼습니다.</strong><br>바로 확인하시겠습니까?</p>
            </div>
            <div class="btn_box">
                <button class="btn_cancel"><span>취소</span></button>
                <button class="btn_confirm btn_move_wish"><span>확인</span></button>
            </div>
            <!-- //btn_box -->
            <button title="닫기" class="close layer_close" type="button">닫기</button>
        </div>
    </div>
</div>
<!-- //layer_wrap -->

                <!-- //상품 리스트 -->
            </div>
        </div>

        <div class="pagination">
        
            <div class="pagination" id="pageOutput">
            
            </div>
        </div>

    </div>
    <!-- //goods_list_item -->
</div>
<!-- //content -->

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
                { event: "setEmail", email: "", hash_method: "sha256" },
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

</body>
</html>