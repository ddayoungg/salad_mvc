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
    <meta name="csrf-token" content="MTY2NjcwNTY4NjAwNDU1MjEwNTk2ODIzNjQzNTM5Njc3MzA3NTAxMTU4" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	
    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://pocketsalad.co.kr/order/order.jsp">
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
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/order/order.css?ts=1652161547" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.css?ts=1662105386" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/order/order.css?ts=1652161547" />
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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T22%3A48%3A06%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fpocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22order.jsp%22%2C%22domain%22%3A%22pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery-cookie/jquery.cookie.js?v=2020120404"></script>
    <!-- Add script : end -->

    <script language="javascript" type="text/javascript" src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>

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
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/order/order.jsp&amp;Referer=https://pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
	
	
<body id="body" class="body-order body-order-end pc"  >
<!-- Channel Plugin Scripts -->
<script>
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
  settings.memberId = "thgus7772";
  settings.profile = {
    "name": "김소현",
    "mobileNumber": "010-7142-9754",
    "email": "thgus7772@naver.com",
    "cartCount": parsePureNumber("0"),
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
</script>
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
	
	<link rel="stylesheet" href="/data/skin/front/kaimen_pc_n/css/selectric.css">
	<script src="/data/skin/front/kaimen_pc_n/js/jquery.selectric.js"></script>
	<script>
		$(function() {
		  $('.c-select').selectric();
		});
	</script>


<div id="header">
	  <div class="header_top">
		  <div class="header_top_cont">
			  	<div class="h1_logo">
				<div class="logo_main"><a href="../main/index.jsp" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/1bb87d41d15fe27b500a4bfcde01bb0e_33003.png"  alt="상단 로고" title="상단 로고"   /></a></div>
			</div>
            <!-- 멀티상점 선택 -->
            
            <!-- 멀티상점 선택 -->
			<div class="header_search">
				<div class="header_search_cont">

					<!-- 검색 폼 -->
					<div class="top_search">
    <form name="frmSearchTop" id="frmSearchTop" action="../goods/goods_search.jsp" method="get">
        <fieldset>
            <legend>검색폼</legend>
            <div class="top_search_cont">
                <div class="top_text_cont">
                    <input type="text" id="search_form" id="keyword" name="keyword" class="top_srarch_text" title=""  placeholder="" autocomplete="off" value="">
                    <input type="image" src="http://localhost/salad_mvc/resources/images/main/sch_btn.png" id="btnSearchTop" class="btn_top_srarch" title="검색" value="검색" alt="검색">
                </div>
                <!-- //top_text_cont -->
                <div class="search_cont" style="display:none;">
                    <input type="hidden" name="recentCount" value="5" />

                    <script type="text/javascript">
    $(function(){

        /* 상단 검색 */
        $('.top_search_cont input[name="keyword"]').on({
            'focus':function(){
                $(this).parents().find('.search_cont').show();
            },
            'blur':function(){
                $('body').click(function(e){
                    if (!$('.search_cont').has(e.target).length && e.target.name != 'keyword') {
                        $(this).parents().find('.search_cont').hide();
                    }
                });
                $('.btn_top_search_close').click(function(){
                    $(this).parents().find('.search_cont').hide();
                });
            }
        });

        if($("input[name=recentCount]").val() > 0) {
            $('.js_recom_box').removeClass('recom_box_only').addClass('recom_box');
        }else{
            $('.js_recom_box').removeClass('recom_box').addClass('recom_box_only');
        }

    });
</script>
<div class="js_recom_box " style="display:none;">
    <dl>
        <dt>추천상품</dt>
        <dd>
            <div class="recom_item_cont">
                <!-- //recom_icon_box -->
                <div class="recom_tit_box">
                    <a href="../goods/goods_view.jsp?goodsNo=">
                    </a>
                </div>
                <!-- //recom_tit_box -->
                <div class="recom_money_box">
                </div>
                <!-- //recom_money_box -->
                <div class="recom_number_box">
                </div>
                <!-- //recom_number_box -->
            </div>
            <!-- //recom_item_cont -->
        </dd>
    </dl>
</div>

                    <!-- //recom_box -->

                    <div class="recent_box">
                        <dl class="js_recent_area">
                            <dt>최근검색어</dt>
                            <dd>최근 검색어가 없습니다.</dd>
                        </dl>
                    </div>
                    <!-- //recent_box -->
                    <div class="seach_top_all">
                        <button type="button" class="btn_top_search_close"><strong>닫기</strong></button>
                    </div>
                    <!-- //seach_top_all -->

                </div>
                <!-- //search_cont -->
            </div>
            <!-- //top_search_cont -->
        </fieldset>
    </form>
</div>
<!-- //top_search -->
					<!-- 검색 폼 -->

				</div>
				<!-- //header_search_cont -->
			</div>
			<!-- //header_search -->
			<div class="top_member_box">
				<ul class="list_1">
					<li><a href="../member/join_method.jsp">회원가입</a></li>
					<li><a href="../member/login.jsp">로그인</a></li>

					<!--<li><a href="../board/list.jsp?bdId=event&period=current">이벤트</a></li>-->
					<li class="cs">
						<a href="../service/faq.jsp">고객센터</a>
						<div class="cs_in">
							<ul >
								<li><a href="../service/notice.jsp">공지사항</a></li>
								<li><a href="http://localhost/salad_mvc/resources/user/board/goodsreview_list.jsp">리얼후기</a></li>								
							</ul>
						</div>
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
                    <em><a href="#" class="local_home">HOME</a> > 주문완료</em>
                </div>
            </div>
            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->



<!-- Event snippet for 201209_포켓샐러드_구매전환 conversion page -->
<script>
  gtag('event', 'conversion', {
      'send_to': 'AW-955276942/00vHCIK-9ewBEI69wccD',
      'value': '23700.00',
      'currency': 'KRW',
	  'transaction_id': '2211200955000015',
  });
</script>




 <script type="text/javascript">
 //<![CDATA[
 var DaumConversionDctSv="type=P,orderID=2211200955000015,amount=23700.00"; 
 var DaumConversionAccountID="6bc7Q5EJFwTEMk57lHnj_g00";
 if(typeof DaumConversionScriptLoaded=="undefined"&&location.protocol!="file:"){
         var DaumConversionScriptLoaded=true;
         document.write(unescape("%3Cscript%20type%3D%22text/javas"+"cript%22%20src%3D%22"+(location.protocol=="https:"?"https":"http")+"%3A//t1.daumcdn.net/cssjs/common/cts/vr200/dcts.js%22%3E%3C/script%3E"));
 }
 //]]>
 </script>




<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('5900620314493041185').pageView();
      kakaoPixel('5900620314493041185').purchase({
        total_quantity: "0", // 주문 내 상품 개수(optional)
        total_price: "23700.00",  // 주문 총 가격(optional)
        currency: "KRW"     // 주문 가격의 화폐 단위(optional, 기본 값은 KRW)
    });
</script>




<div class="content_box">
    <div class="order_wrap">
        <div class="order_tit">
            <h2>주문완료</h2>
            <ol>
                <li><span>01</span> 장바구니 <span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/member/icon_join_step_off.png" alt=""></span></li>
                <li><span>02</span> 주문서/결제<span><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/member/icon_join_step_off.png" alt=""></span></li>
                <li class="page_on"><span>03</span> 주문완료</li>
            </ol>
        </div>
        <!-- //member_tit -->

        <div class="order_cont">
            <div class="order_end">

                <!-- 결제 완료 -->
                <div class="order_end_completion">
                    <p><strong>주문이 <b>완료</b> 되었습니다!</strong><em>아래 주문상세내역을 확인해주세요!</em></p>
 </div>

	<!-- 개발area Start -->
				<div class="order-end-tit">
					<h3>주문  정보</h3>
				</div>
                <div class="order_table_type">
                    <table class="table_left">
                        <colgroup>
                            <col style="width:20%;">
                            <col style="width:80%;">
                        </colgroup>
                        <tbody>
						<tr>
                            <th>주문번호</th>
                            <td><span class="grn-font-txt"><c:out value="${ orderVO.orderNum }"/></span></td>
                        </tr>
						<tr>
							<th>배송정보</th>
							<td>
								<p>(<c:out value="${ orderVO.deliZipcode }"/>)<c:out value="${ orderVO.deliAddr }"/> <c:out value="${ orderVO.deliDetailAddr }"/></p>
							</td>
						</tr>
						<tr>
                            <th>주문상품</th>
                            <td><c:out value="${ od.prdName }"/></td>
						</tr>
						</tbody>
					</table>
				</div>
				<div class="order-end-tit">
					<h3>결제 금액 정보</h3>
				</div>
                <div class="order_table_type">
                    <table class="table_left">
                        <colgroup>
                            <col style="width:20%;">
                            <col style="width:80%;">
                        </colgroup>
                        <tbody>
							 <tr>
                                <th>주문일자</th>
                                <td><fmt:formatDate value="${ od.orderDate }" pattern="yyyy-MM-dd(HH:MM)"/></td>
                            </tr>
							 <tr>
                                <th>주문자명</th>
                                <td><c:out value="${ od.name }"/></td>
                            </tr>
                            <tr>
                                <th>총 결제금액</th>
                                <td><strong><span class="grn-font-txt"><fmt:formatNumber value="${ orderVO.orderTotalPrice }" pattern="#,###"/>원</span></strong></td>
                            </tr>
						</tbody>
					</table>
				</div>


<!-- 개발area End -->

            </div>

            <!-- //order_info -->
            <div class="btn_center_box">
                <a href="index.do" class="btn_order_end_ok"><em>확인</em></a>
            </div>
        </div>
        <!-- //order_end -->
    </div>
    <!-- //order_cont -->
</div>
<!-- //order_wrap -->
</div>
<!-- //content_box -->
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
				<li><a href="../service/company.php">회사소개</a></li>
				<li><a href="../service/agreement.php">이용약관</a></li>
				<li><a href="../service/private.php">개인정보처리방침</a></li>
				<li><a href="../service/guide.php">이용안내</a></li>
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
                <!--<dl>
                    <dt>FAX : </dt>
                    <dd></dd>
                </dl>-->
                
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
        <div id="scroll_right">
<div class="qmenu_wrap">
	<ul class="qm qm1">
		<li><a href="/mypage/order_list.php"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_deli.png" alt=""></a></li>
		<li class="cart"><span><a href="../order/cart.php"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_cart.png" alt=""></a>
			<strong><a href="../order/cart.php" class="z">0</a></strong>

		</span></li>

	</ul>


<div class="bg_scroll_right_cont"></div>


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
            $.post('../goods/goods_ps.php', {
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
        element.prev.click(function (e) {
            setting.page = 1 == setting.page ? setting.total : setting.page - 1;
            init();
        });

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
        <!-- //scroll_right -->
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
<iframe name="ifrmProcess" src='/blank.php' style="display:none" width="100%" height="0" bgcolor="#000"></iframe>
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
                { event: "setEmail", email: "46cf98f170c5d60aeb8bb1ae41bb94aa4f0795083d4fba2da7c01fb1bb843ed1", hash_method: "sha256" },
                { event: "setZipcode", zipcode: "" },
                { event: "setSiteType", type: deviceType },
                { event: "addToCart", item: [
                    { id: goodsNo, price: price, quantity: quantity }
                    ]
                }
            );
        }
        </script>
<!-- Enliple Tracker End -->

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="/data/skin/front/kaimen_pc_n/js/nd_kakao.js?ts=1662087469"></script>

</body>.
</html>
