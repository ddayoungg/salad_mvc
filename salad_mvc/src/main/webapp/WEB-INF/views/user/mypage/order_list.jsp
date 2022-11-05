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
    <meta name="csrf-token" content="MTY2NjgwMDg0NjcxMjM0OTA4NzY5NjQ3MTQyMzYxMzQ4MDE1OTk3MDAz" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/mypage/order_list.jsp">
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
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/layout/layout.css?ts=1666735347">
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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-27T01%3A14%3A06%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285754%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22order_list.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/moment.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/locale/ko.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/datetimepicker/bootstrap-datetimepicker.min.js?v=2020120404"></script>
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
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/mypage/order_list.jsp&amp;Referer=https://www.pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
            var _id   = 'ekdud3674';  
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
	
	
<body id="body" class="body-mypage body-order-list pc"  >
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
  settings.memberId = "ekdud3674";
  settings.profile = {
    "name": "홍다영",
    "mobileNumber": "010-8258-3674",
    "email": "ekdanabab@naver.com",
    "cartCount": parsePureNumber("1"),
    "totalPurchaseCount": parsePureNumber("1"),
    "totalPurchaseAmount": parsePureNumber("6,400원"),
    "groupName": "포켓탐색 Lv.1",
    "isAdult": "n",
    "availableMileage": parsePureNumber("34원"),
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
                    <input type="text" id="search_form" name="keyword" class="top_srarch_text" title=""  placeholder="" autocomplete="off">
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
					<li><span style="color: #333; font-size: 15px;">홍다영(포켓탐색 Lv.1)님, 오늘도 건강한 하루 되세요.</span></li>
					<li><a href="../member/logout.jsp?returnUrl=">로그아웃</a></li>
					<!--<li><a href="../board/list.jsp?bdId=event&period=current">이벤트</a></li>-->
					<li class="cs">
						<a href="../service/faq.jsp">고객센터</a>
						<div class="cs_in">
							<ul >
								<li><a href="../service/notice.jsp">공지사항</a></li>
								<li><a href="../service/faq.jsp">자주하는 질문</a></li>
								<li><a href="../mypage/mypage_qa.jsp">1:1 문의</a></li>
								<li><a href="http://localhost/salad_mvc/resources/user/board/goodsreview_list.jsp">리얼후기</a></li>								
							</ul>
						</div>


					</li>

				</ul>
				<ul class="list_2">
					<li><a href="../mypage/index.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cs_icn.png" alt="매이페이지"></a></li>
					<li class="cart"><a href="../order/cart.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/top_cart_icn.png" alt="장바구니"></a>

                      <strong><b><a href="../order/cart.jsp">1</a></b></strong>

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
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=001">정기배송</a>
				<ul class="all_depth1"><li><a href="../goods/goods_list.jsp?cateCd=001009">식단스타터(1주)</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=001010">2주 식단</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=001011">4주 식단</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=001012">6주+식단</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=001013">짜여진 식단</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=029">포켓마켓</a>
				<ul class="all_depth1">
					<li><a href="../goods/goods_list.jsp?cateCd=029003">정기배송코너</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=029001">신선코너</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=029002">냉동코너</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=002">샐러드</a>
				<ul class="all_depth1">
					<li><a href="../goods/goods_list.jsp?cateCd=002002">데일리 샐러드</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=002004">테이스티 샐러드</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=002005">파우치 샐러드</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=002003">맛보기 세트</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=003">간편식</a>
				<ul class="all_depth1">
					<li><a href="../goods/goods_list.jsp?cateCd=003001">라이스 시즌1&amp;2</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=003008">곤약 라이스 시즌3</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=003007">미니컵밥</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=003009">두부파스타</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=004">닭가슴살&amp;간식</a>
				<ul class="all_depth1">
					<li><a href="../goods/goods_list.jsp?cateCd=004003">만두</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=004004">슬라이스</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=004002">소시지</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=004005">큐브・볼</a></li>
					<li><a href="../goods/goods_list.jsp?cateCd=004007">간식</a></li>
				</ul>
		</div>
	</li>
	<li style="width:20%;">
		<div class="all_menu_cont">
			<a href="../goods/goods_list.jsp?cateCd=027">식단 세트</a>
		</div>
	</li>
</ul>
</div>
</div>
</div>

<!-- 전체 카테고리 출력 레이어 끝 -->

			 <div class="gnb_left"><a href="#PREV" class="active">PREV</a></div>
<div class="gnb_menu_box">
    <ul class="depth0 gnb_menu0">
        <li >
            <a href="../goods/goods_list.jsp?cateCd=001" >정기배송</a>
            <ul class="depth1">
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001009" >식단스타터(1주)</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001010" >2주 식단</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001011" >4주 식단</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001012" >6주+식단</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=001013" >짜여진 식단</a>
                </li>
            </ul>
        </li>
        <li >
            <a href="../goods/goods_list.jsp?cateCd=002" >샐러드</a>
            <ul class="depth1">
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=002002" >데일리 샐러드</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=002004" >테이스티 샐러드</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=002005" >파우치 샐러드</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=002003" >맛보기 세트</a>
                </li>
            </ul>
        </li>
        <li >
            <a href="../goods/goods_list.jsp?cateCd=003" >간편식</a>
            <ul class="depth1">
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=003001" >라이스 시즌1&2</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=003008" >곤약 라이스 시즌3</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=003007" >미니컵밥</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=003009" >두부파스타</a>
                </li>
            </ul>
        </li>
        <li >
            <a href="../goods/goods_list.jsp?cateCd=004" >닭가슴살&간식</a>
            <ul class="depth1">
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004003" >만두</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004004" >슬라이스</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004002" >소시지</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004005" >큐브・볼</a>
                </li>
                <li >
                    <a href="../goods/goods_list.jsp?cateCd=004007" >간식</a>
                </li>
            </ul>
        </li>
        <li >
            <a href="../goods/goods_list.jsp?cateCd=027" >식단 세트</a>
        </li>
        <li><a href="../board/list.jsp?bdId=event&period=current">이벤트혜〮택</a></li>
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
                    <em><a href="#" class="local_home">HOME</a> > 마이페이지 > 주문목록 / 배송조회</em>
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
                <li><a href="../mypage/order_list.jsp">- 주문목록/배송조회</a></li>
                <li><a href="../mypage/cancel_list.jsp">- 취소/반품/교환 내역</a></li>
                <li><a href="../mypage/refund_list.jsp">- 환불/입금 내역</a></li>
                <li><a href="../mypage/wish_list.jsp">- 찜리스트</a></li>
            </ul>
        </li>
        <li>혜택관리
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
        </li>
        <li>회원정보
            <ul class="sub_depth1">
                <li><a href="../mypage/my_page_password.jsp">- 회원정보 변경</a></li>
				<li><a href="../mypage/shipping.jsp">- 배송지 관리</a></li>
                <li><a href="../mypage/hack_out.jsp">- 회원 탈퇴</a></li>
            </ul>
        </li>
        <li>나의 상품문의
            <ul class="sub_depth1">
                <li><a href="../mypage/mypage_goods_qa.jsp">- 나의 상품문의</a></li>
            </ul>
        </li>
        <li>나의 상품후기
            <ul class="sub_depth1">
                <li><a href="../mypage/mypage_goods_review.jsp">- 나의 상품후기</a></li>
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
    <div class="mypage_cont">

        <!-- 마이페이지 회원 요약정보 -->
        <div class="mypage_top_info">
    <div class="mypage_top_txt">
        <div class="grade_txt">
            <p>홍다영님의</p><p> 회원등급은 <span>포켓탐색 Lv.1등급</span> 입니다.
            <div class="btn_layer">
                <span class="btn_gray_list"><a href="#lyGrade" class="btn_gray_small"><em>등급혜택보기</em></a></span>

                <!-- N : 회원등급혜택 레이어 시작 -->
                <div id="lyGrade" class="layer_area" style="display:none;">
                    <div class="ly_wrap grade_layer">
                        <div class="ly_tit">
                            <strong>등급혜택 안내</strong>
                        </div>
                        <div class="ly_cont">
                            <div class="grade_list">
                                <dl>
                                    <dt>회원 등급</dt>
                                    <dd>포켓탐색 Lv.1등급</dd>
                                </dl>
                                <!--<dl>
                                    <dt>추가 할인</dt>
                                    <dd><strong>0원이상 구매시 상품 판매금액의 0.0% 추가 할인</strong></dd>
                                </dl>
                                <dl>
                                    <dt>중복 할인</dt>
                                    <dd><strong>0원이상 구매시 상품 판매금액의 0.0% 추가 할인</strong></dd>
                                </dl>-->
                                <dl>
                                    <dt>추가  적립</dt>
                                    <dd><!--0원이상 구매 시--> 구매금액당 1.0% 추가 적립</dd>
                                </dl>
                            </div>
                        </div>
                        <!-- //ly_cont -->
                        <a href="#lyGrade" class="ly_close"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/common/layer/btn_layer_close.png" alt="닫기"></a>
                    </div>
                    <!-- //ly_wrap -->
                </div>
                <!-- N : 회원등급혜택 레이어 끝 -->

            </div>
        </div>
        <!-- //grade_txt -->
    </div>
    <!-- //mypage_top_txt -->

    <div class="mypage_top_wallet">
        <ul>
            <li>
                <span><em>적립금</em><a href="../mypage/mileage.jsp"><strong>34</strong></a>원</span>
            </li>
            <li>
                <span><em>쿠폰</em><a href="../mypage/coupon.jsp"><strong>9</strong></a>장</span>
            </li>
            <li>
				<span><em>찜하기</em><a href="../mypage/wish_list.jsp"><strong>0</strong>개</a></span>
            </li>
        </ul>
    </div>
    <!-- //mypage_top_wallet -->

</div>
<!-- //mypage_top_info -->

        <!-- 마이페이지 회원 요약정보 -->

        <div class="mypage_lately_info">
            <div class="mypage_zone_tit">
                <h3>주문목록/배송조회<strong class="myp-count-numtxt">2</strong>건</h3>
            </div>

            <div class="date_check_box">
                <form method="get" name="frmDateSearch">
                    <h3> 조회기간 </h3>
                    <div class="date_check_list" data-target-name="wDate[]">
                        <button type="button" data-value="0">오늘</button>
                        <button type="button" data-value="7">7일</button>
                        <button type="button" data-value="15">15일</button>
                        <button type="button" data-value="30">1개월</button>
                        <button type="button" data-value="90">3개월</button>
                        <button type="button" class="oneYear" data-value="365">1년</button>
                    </div>
                    <!-- //date_check_list -->
                    <div class="date_check_calendar">
                        <input type="text" id="picker2" name="wDate[]" class="anniversary js_datepicker" value="2022-10-20"> ~ <input type="text" name="wDate[]" class="anniversary js_datepicker" value="2022-10-27">
                    </div>
                    <!-- //date_check_calendar -->

                    <button type="submit" class="btn_date_check"><em>조회</em></button>
                </form>
            </div>
            <!-- //date_check_box -->

            <div class="mypage_lately_info_cont">
                <!-- 주문상품 리스트 -->
                <div class="mypage_table_type">
    <table>
        <colgroup>
            <col style="width:15%"> <!-- 날짜/주문번호 -->
            <col>					<!-- 상품명/옵션 -->
            <col style="width:15%"> <!-- 상품금액/수량 -->
            <col style="width:15%"> <!-- 주문상태 -->
            <col style="width:15%"> <!-- 확인/리뷰 -->
        </colgroup>
        <thead>
        <tr>
            <th>날짜/주문번호</th>
            <th>상품명/옵션</th>
            <th>상품금액/수량</th>
            <th>주문상태</th>
            <th>
                리뷰
            </th>
        </tr>
        </thead>
        <tbody>






<tr data-order-no="2210251644000099" data-order-goodsno="442263" data-order-status="r3" data-order-userhandlesno="8969">

        <td rowspan="1" class="order_day_num aaa">
            <em>2022/10/25</em>
            <a href="../mypage/order_view.jsp?orderNo=2210251644000099"  class="order_num_link"><span>2210251644000099</span></a>
            <div class="btn_claim">
            </div>

            <!-- 개발 마이페이지 메인 & 주문목록/베송조회에 재구매 버튼 넣음 분기처리해야할 것 같음 -->
			<div class="button"><a class="skinbtn point2  btn_review_write reorder-btn-nw" href="javascript:go_reOrder(2210251644000099)"><em>재구매</em></a></div>  
            <!-- 개발 마이페이지 메인 & 주문목록/베송조회에 재구매 버튼 넣음 분기처리해야할 것 같음 -->
        </td>

<!-- 1 -->

    <!--{ //? ..orderGoodsListStart == 'y' }-->
    <!--{// / }-->

    <!-- <input type="checkbox" name="orderGoodsNo[]" value="442263" id="goodsno_442263" data-order-status="r3" data-list-start=""/> -->
    <!--{ // 구버전 정기배송의 옵션 계산용 }-->




    <td class="td_left">
        <div class="pick_add_cont">
            <span class="pick_add_img">
				<a href="../goods/goods_view.jsp?goodsNo=68"><img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/68/68_list_08.jpg" width="50" alt="[새벽배송]닭가슴살 샐러드" title="[새벽배송]닭가슴살 샐러드" class="middle"  /></a>
                
            </span>
            <div class="pick_add_info">

					<a href="../goods/goods_view.jsp?goodsNo=68"><em><!-- [ 새벽배송 ] --> [새벽배송]닭가슴살 샐러드</em></a>
                


				<!-- 20210315 -->














            </div>
        </div>
        <!-- //pick_add_info -->
    </td>



<!-- 1 -->
<!-- n -->
<!-- 1 -->
<!-- Array -->



    <td>
        <strong>6,700원</strong>
        / 1개
    </td>
    <td>
        <em>

                환불완료

        </em>
        <div class="btn_gray_list">
        </div>
    </td>





    <td class="0" >



    </td>






    <!-- <td>0 |  | </td> -->
</tr>
















<!--{ // @ .goods }-->





<tr data-order-no="2210251642000097" data-order-goodsno="442259" data-order-status="s1" data-order-userhandlesno="0">

        <td rowspan="3" class="order_day_num aaa">
            <em>2022/10/25</em>
            <a href="../mypage/order_view.jsp?orderNo=2210251642000097"  class="order_num_link"><span>2210251642000097</span></a>
            <div class="btn_claim">
                <span class="btn_gray_list"><a href="#orderSettleLayer" class="btn_gray_small btn_open_layer2" data-order-no="2210251642000097"><span>구매확정</span></a></span>
                <span class="btn_gray_list"><a href="../mypage/layer_order_back_regist.jsp?mode=backRegist&orderNo=2210251642000097" class="btn_gray_small"><span>반품신청</span></a></span>
                <span class="btn_gray_list"><a href="../mypage/layer_order_exchange_regist.jsp?mode=exchangeRegist&orderNo=2210251642000097" class="btn_gray_small"><span>교환신청</span></a></span>
            </div>

            <!-- 개발 마이페이지 메인 & 주문목록/베송조회에 재구매 버튼 넣음 분기처리해야할 것 같음 -->
			<div class="button"><a class="skinbtn point2  btn_review_write reorder-btn-nw" href="javascript:go_reOrder(2210251642000097)"><em>재구매</em></a></div>  
            <!-- 개발 마이페이지 메인 & 주문목록/베송조회에 재구매 버튼 넣음 분기처리해야할 것 같음 -->
        </td>

<!-- 3 -->

    <!--{ //? ..orderGoodsListStart == 'y' }-->
    <!--{// / }-->

    <!-- <input type="checkbox" name="orderGoodsNo[]" value="442259" id="goodsno_442259" data-order-status="s1" data-list-start=""/> -->
    <!--{ // 구버전 정기배송의 옵션 계산용 }-->




    <td class="td_left">
        <div class="pick_add_cont">
            <span class="pick_add_img">
				<a href="../goods/goods_view.jsp?goodsNo=1000000061"><img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/10/43/1000000061/1000000061_list_01.jpg" width="50" alt="[새벽배송]채소만 샐러드" title="[새벽배송]채소만 샐러드" class="middle"  /></a>
                
            </span>
            <div class="pick_add_info">

					<a href="../goods/goods_view.jsp?goodsNo=1000000061"><em><!-- [ 새벽배송 ] --> [새벽배송]채소만 샐러드</em></a>
                


				<!-- 20210315 -->














            </div>
        </div>
        <!-- //pick_add_info -->
    </td>



<!-- 1 -->
<!-- n -->
<!-- 1 -->
<!-- Array -->



    <td>
        <strong>3,400원</strong>
        / 1개
    </td>
    <td>
        <em>

                구매확정

        </em>
        <div class="btn_gray_list">
            (

			<!-- //2021.04.19 웹앤모바일 새벽배송 일반배송 문구 추가 -->
			새벽배송
			<!-- //2021.04.19 웹앤모바일 새벽배송 일반배송 문구 추가 끝 -->

			) - <a href="#" class="btn_gray_small js_btn_delivery_trace" data-invoice-company-sno="131" data-invoice-no="250-H0-0152210270055-0001"><span>배송추적</span></a>
        </div>
    </td>





    <td class="0" >
<!-- 20210127 -->
        <div class="button"><a class="skinbtn point2 btn_review_write ogl_reviewrite btn_open_layer2" data-id="goodsreview" data-goods-no="1000000061" data-sno="442259" href="#writeReviewLayer"><em>리뷰쓰기</em></a></div>



    </td>






    <!-- <td>0 |  | </td> -->
</tr>





















<tr data-order-no="2210251642000097" data-order-goodsno="442260" data-order-status="d1" data-order-userhandlesno="0">
<!-- 3 -->

    <!--{ //? ..orderGoodsListStart == 'y' }-->
    <!--{// / }-->

    <!-- <input type="checkbox" name="orderGoodsNo[]" value="442260" id="goodsno_442260" data-order-status="d1" data-list-start=""/> -->
    <!--{ // 구버전 정기배송의 옵션 계산용 }-->




    <td class="td_left">
        <div class="pick_add_cont">
            <span class="pick_add_img">
				<a href="../goods/goods_view.jsp?goodsNo=353"><img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/07/21/353/353_list_098.jpg" width="50" alt="[새벽배송]닭가슴살 만두 오리지널" title="[새벽배송]닭가슴살 만두 오리지널" class="middle"  /></a>
                
            </span>
            <div class="pick_add_info">

					<a href="../goods/goods_view.jsp?goodsNo=353"><em><!-- [ 새벽배송 ] --> [새벽배송]닭가슴살 만두 오리지널</em></a>
                


				<!-- 20210315 -->



                            <span class="text_type_cont ccccc5">
                                    팩수 : 1팩
                            </span>











            </div>
        </div>
        <!-- //pick_add_info -->
    </td>



<!--  -->
<!-- n -->
<!--  -->
<!-- Array -->



    <td>
        <strong>2,400원</strong>
        / 1개
    </td>
    <td>
        <em>

                배송중

        </em>
        <div class="btn_gray_list">
            (

			<!-- //2021.04.19 웹앤모바일 새벽배송 일반배송 문구 추가 -->
			새벽배송
			<!-- //2021.04.19 웹앤모바일 새벽배송 일반배송 문구 추가 끝 -->

			) - <a href="#" class="btn_gray_small js_btn_delivery_trace" data-invoice-company-sno="131" data-invoice-no="250-H0-0152210270055-0001"><span>배송추적</span></a>
            <a href="#" class="btn_gray_small js_btn_order_delivery"><span>수취확인</span></a>
        </div>
    </td>





    <td class="1" >
        <a href="#;" class="btn_buy_ok js_btn_order_settle" data-goods-no="442260"><span>구매확정</span></a>



    </td>






    <!-- <td>1 |  | </td> -->
</tr>





















<tr data-order-no="2210251642000097" data-order-goodsno="442261" data-order-status="d1" data-order-userhandlesno="0">
<!-- 3 -->

    <!--{ //? ..orderGoodsListStart == 'y' }-->
    <!--{// / }-->

    <!-- <input type="checkbox" name="orderGoodsNo[]" value="442261" id="goodsno_442261" data-order-status="d1" data-list-start=""/> -->
    <!--{ // 구버전 정기배송의 옵션 계산용 }-->




    <td class="td_left">
        <div class="pick_add_cont">
            <span class="pick_add_img">
				<a href="../goods/goods_view.jsp?goodsNo=245"><img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/07/18/245/245_list_031.jpg" width="50" alt="[새벽배송]그린 샐러드" title="[새벽배송]그린 샐러드" class="middle"  /></a>
                
            </span>
            <div class="pick_add_info">

					<a href="../goods/goods_view.jsp?goodsNo=245"><em><!-- [ 새벽배송 ] --> [새벽배송]그린 샐러드</em></a>
                


				<!-- 20210315 -->














            </div>
        </div>
        <!-- //pick_add_info -->
    </td>



<!--  -->
<!-- n -->
<!--  -->
<!-- Array -->



    <td>
        <strong>4,700원</strong>
        / 1개
    </td>
    <td>
        <em>

                배송중

        </em>
        <div class="btn_gray_list">
            (

			<!-- //2021.04.19 웹앤모바일 새벽배송 일반배송 문구 추가 -->
			새벽배송
			<!-- //2021.04.19 웹앤모바일 새벽배송 일반배송 문구 추가 끝 -->

			) - <a href="#" class="btn_gray_small js_btn_delivery_trace" data-invoice-company-sno="131" data-invoice-no="250-H0-0152210270055-0001"><span>배송추적</span></a>
            <a href="#" class="btn_gray_small js_btn_order_delivery"><span>수취확인</span></a>
        </div>
    </td>





    <td class="2" >
        <a href="#;" class="btn_buy_ok js_btn_order_settle" data-goods-no="442261"><span>구매확정</span></a>



    </td>






    <!-- <td>2 |  | </td> -->
</tr>
















<!--{ // @ .goods }-->
<!--{ // @ orderData }-->
<!--{ // ? orderData }-->
        </tbody>
    </table>
</div>

<!-- 사유 레이어 -->
<div id="lyReason" class="layer_wrap reason_layer dn" data-remote="../mypage/layer_order_refund_reason.jsp"></div>
<!--//사유 레이어 -->
<div id="lyWritePop" class="layer_wrap board_write_layer dn"></div>

<!-- 네이버페이 상세정보 레이어 -->
<div id="orderDetailReasonLayer" class="layer_wrap reason_layer dn" data-remote="../mypage/layer_order_naverpay_reason.jsp"></div>
<!--//네이버페이 상세정보 레이어 -->

<!-- 배송방식 상태 확인 레이어(택배제외) -->
<div id="deliveryMethodLayer" class="layer_wrap dn" data-remote="../mypage/layer_order_delivery_method.jsp"></div>
<!-- 배송방식 상태 확인 레이어(택배제외) -->

<!-- 구매확정 레이어 -->
<div id="orderSettleLayer" class="layer_wrap settle_layer dn" data-remote="../mypage/layer_order_settle.jsp"></div>
<!-- 구매확정 레이어 -->

<script type="text/javascript">
    $(function () {
        // 구매취소
        $('.js_btn_order_cancel').click(function (e) {
            if (confirm("주문취소 처리를 하시겠습니까?")) {
                var params = {
                    mode: 'cancelRegist',
                    orderNo: $(this).closest('tr').data('order-no'),
                    orderGoodsNo: $(this).closest('tr').data('order-goodsno'),
                    orderStatus: $(this).closest('tr').data('order-status')
                };

                $.post('../mypage/order_ps.jsp', params, function (data) {
                    alert(data.message);
                    if (data.code == 200) {
                        location.reload(true);
                    }
                });
            }
        });

        // 구매확정
        $('.js_btn_order_settle').click(function (e) {
            if (confirm("구매확정 처리를 하시겠습니까?")) {
                var params = {
                    mode: 'settleRegist',
                    orderNo: $(this).closest('tr').data('order-no'),
                    orderGoodsNo: $(this).closest('tr').data('order-goodsno')
                };

                $.post('../mypage/order_ps.jsp', params, function (data) {
                    alert(data.message);
                    if (data.code == 200) {
                        location.reload(true);
                    }
                });
            }
        });

        //구매확정레이어


        // 수취확인
        $('.js_btn_order_delivery').click(function (e) {
            if (confirm("수취확인 처리를 하시겠습니까?")) {
                var params = {
                    mode: 'deliveryCompleteRegist',
                    orderNo: $(this).closest('tr').data('order-no'),
                    orderGoodsNo: $(this).closest('tr').data('order-goodsno')
                };

                $.post('../mypage/order_ps.jsp', params, function (data) {
                    alert(data.message);
                    if (data.code == 200) {
                        location.reload(true);
                    }
                });
            }
        });

        // 배송추적
        $('.js_btn_delivery_trace').click(function (e) {
            win = gd_popup({
                url: '../share/delivery_trace.jsp?invoiceCompanySno=' + $(this).data('invoice-company-sno') + '&invoiceNo=' + $(this).data('invoice-no'),
                target: 'trace',
                width: 650,
                height: 660,
                resizable: 'yes',
                scrollbars: 'yes'
            });
            win.focus();
            return win;
        });

        // 레이어 오픈 바인딩
        $('.btn_open_layer2').bind('click', function (e) {

            e.preventDefault();
            // 일반 레이어 호출
            if ($(this).attr('href') == '#lyReason') {

                gd_call_layer_handler($(this));

                // 리뷰쓰기 레이어 호출
            } else if ($(this).attr('href') == '#writeReviewLayer') {
                var bdId = $(this).data('id');
                var goodsNo = $(this).data('goods-no');
                var sno = $(this).data('sno');
                gd_open_write_layer(bdId, goodsNo,sno);

                //구매확정 레이어 호출
            } else if ($(this).attr('href') == '#orderSettleLayer') {
                var target = $(this).attr('href');
                var url = $(target).data('remote');
                var params = {
                    orderNo : $(this).data('order-no')
                };

                $(target).empty();
                $.post(url, params, function (data) {
                    $(target).empty().html(data);
                    $(target).find('>div').center();
                });


                // 레이어 confirm 호출
            } else if ($(this).attr('href') == '#orderDetailReasonLayer') {
                var orderGoodsNo = $(this).data('goods-no');
                var target = $(this).attr('href');
                var url = $(target).data('remote');
                var params = {
                    orderNo: $(this).closest('tr').data('order-no'),
                    orderGoodsNo : orderGoodsNo
                };

                $(target).empty();
                $.post(url, params, function (data) {
                    if (!_.isUndefined(data.code) && data.code == 0) {
                        alert(data.message);
                        gd_close_layer();
                        return false;
                    }
                    $(target).empty().html(data);
                    $(target).find('>div').center();
                });
                // 레이어 confirm 호출

            } else if($(this).attr('href') == "#deliveryMethodLayer"){
                gd_call_layer_handler($(this));
            } else if ($(this).attr('href') == '#visitAddressLayer') {
                var target = $(this).attr('href');
                var url = $(target).data('remote');
                var params = {
                    orderNo: $(this).data('order-no'),
                    goodsSno : $(this).data('goods-sno')
                };

                $(target).empty();
                $.get(url, params, function (data) {
                    if (!_.isUndefined(data.code) && data.code == 0) {
                        alert(data.message);
                        gd_close_layer();
                        return false;
                    }
                    $(target).empty().html(data);
                    $(target).find('>div').center();
                });
            } else {
                if (confirm($(this).text() + "처리를 하시겠습니까?")) {
                    gd_call_layer_handler($(this));
                } else {
                    return false;
                }
            }
        });

        function gd_call_layer_handler(obj) {

            var target = obj.attr('href');
            var url = $(target).data('remote');
            var params = {
                orderNo: obj.closest('tr').data('order-no'),
                orderGoodsNo: obj.closest('tr').data('order-goodsno'),
                orderStatus: obj.closest('tr').data('order-status'),
                userHandleSno: obj.closest('tr').data('order-userhandlesno')
            };

            $(target).empty();
            $.post(url, params, function (data) {

                if (!_.isUndefined(data.code) && data.code == 0) {
                    alert(data.message);
                    gd_close_layer();
                    return false;
                }
				$(target).removeClass("dn");
                $(target).empty().html(data);
                $(target).find('>div').center();
            });
        }

        // 클레임 리스트일 경우 전체선택
        if ($('.gd_checkbox_all').length) {
            $('.gd_checkbox_all').trigger('click');
        }

        // 클레임신청 수량 초과 체크
        $('input[name*="claimGoodsCnt"]').on('keyup', function(){
            var mode = $(this).data('mode');
            var orginCnt = parseInt($(this).attr('max'));
            var claimCnt = parseInt($(this).val());
            switch (mode) {
                case 'refundRegist' :
                    mode = "환불";
                    break;
                case 'backRegist' :
                    mode = "반품";
                    break;
                case 'exchangeRegist' :
                    mode = "교환";
                    break;
            }
            if (claimCnt > orginCnt || claimCnt <= 0) {
                alert(mode + '수량은 주문수량 ' + orginCnt + ' 보다 큰값 또는 0 값을 입력할 수 없습니다.');
                $(this).val(orginCnt);
            }
        });

        // 체크박스 전체 선택상태에 따른 체크박스 변경처리
        // $('input:checkbox[name="orderGoodsNo[]"]').click(function () {
        $('.dev_display_checkbox').click(function () {
            // console.log('dev_display_checkbox clicked');
            var checkedCount = 0;
            // var eachCheckBox = $(this).closest('table').find('tbody input[name="orderGoodsNo[]"]:checkbox');
            var eachCheckBox = $(this).closest('table').find('tbody .dev_display_checkbox');
            eachCheckBox.each(function () {
                if ($(this).prop('checked') === true) {
                    checkedCount++;
                }
            });
            // console.log('eachCheckBox cnt ' + eachCheckBox.length);
            // console.log('checkedCount ' + checkedCount);
            if (eachCheckBox.length == checkedCount) {
                $(this).closest('table').find('thead > tr > th:nth-child(2) input[id="allCheck"]').prop('checked', true);
                $(this).closest('table').find('thead > tr > th:nth-child(2) label[for="allCheck"]').addClass('on');
            } else {
                $(this).closest('table').find('thead > tr > th:nth-child(2) input[id="allCheck"]').prop('checked', false);
                $(this).closest('table').find('thead > tr > th:nth-child(2) label[for="allCheck"]').removeClass('on');
            }

            processChildCheckbox(this);
        });


        // 20201028
        arrangeAddGoods();

    });

    function kkkk() {
        var checkedCount = 0;
        var eachCheckBox = $('tbody .dev_display_checkbox');
        eachCheckBox.each(function () {
            if ($(this).prop('checked') === true) {
                checkedCount++;
            }
        });
        console.log('eachCheckBox cnt ' + eachCheckBox.length);
        console.log('checkedCount ' + checkedCount);

    }

    function arrangeAddGoods() {
            return;
        var $addGoodsTr = $('.addGoodsRegularTr');
        $addGoodsTr.each(function(){
            var orderNo = $(this).data('order-no');
            var $lastTr = $(this).siblings().filter('[data-order-no='+orderNo+']').last();
            $(this).insertAfter($lastTr);
        });
    }

	function go_reOrder(orderNo){
        // 재구매 하기 전에 상품 정보 비교. 만약 상품정보의 이름 / 옵션 / 가격 등이 변경 되었을 시 구매 불가
        var reOrderCheck = false;
        $.ajax({
            method: "GET",
            cache: false,
            url: "../order/cart_ps.jsp",
            async: false,
            data: "mode=reOrderCheck&orderNo="+orderNo,
            success: function (data) {
                if(data['result'] == 'notOrder'){
                    reOrderCheck = true;
                }
            },
            error: function (data) {
                alert(data.message);
            }
        });

        if(reOrderCheck === true){
            alert('상품 정보가 변경되어 재주문 할 수 없습니다.');
            return false;
        }else{
            $.ajax({
                method: "GET",
                cache: false,
                url: "../order/cart_ps.jsp",
                data: "mode=reOrder&orderNo="+orderNo,
                success: function (data) {
                    if(data.error == 0){
                        //$("#devCartSno").val(data.cartSno);
                        //$("#reOrder").submit();
                        top.location.href = "/order/order.jsp";
                    }
                    return false;
                },
                error: function (data) {
                    alert(data.message);
                }
            });
        }



	}

    function processChildCheckbox(element) {
        var elementName = $(element).prop('name');
        console.log('name ' + $(element).prop('name') + ' ' + (elementName==''));
        if ( elementName == '' || elementName == null || elementName == undefined) {
            var regularNo = $(element).data('regular-no');
            var $eachCheckbox = $('input[name="orderGoodsNo[]"]:checkbox');

            var parentId = $(element).prop('id');
            var isChecked = $(element).prop('checked');
            var isStart = false;
            $eachCheckbox.each(function () {
                // if ( parentId == $(this).data('id') ) {
                //     isStart = true;
                // }
                // if ( $(this).data('list-start') == 'y' && parentId != $(this).data('id')) {
                //     isStart = false;
                // }
                // if (isStart) {
                //     $(this).prop('checked', isChecked);
                // }
                if ($(this).data('regularNo') == regularNo) {
                    $(this).prop('checked', isChecked);
                }
            });
        }

    }

    function onRegularCntChange(element) {
        var $eachInput = $('input[name*="claimGoodsCnt"]');
        var regularNo = $(element).data('regular-no');
        var cnt = $(element).val();
        console.log(cnt);
        console.log(regularNo);
        $eachInput.each(function() {
            if ($(this).data('regular-no') == regularNo) {
                $(this).val(cnt*4);
            }
        });
    }
</script>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_goods.js" charset="utf-8"></script>
                <!--// 주문상품 리스트 -->
            </div>
            <!-- //mypage_lately_info_cont -->
        </div>
        <!-- //mypage_lately_info -->

        <div class="pagination">
            <div class="pagination"><ul><li class="on"><span>1</span></li></ul></div>
        </div>
        <!-- //pagination -->

    </div>
    <!-- //mypage_cont -->

</div>
<!-- //content -->

<script type="text/javascript">
    $(function(){
        // 인풋박스 선택 이벤트
        if ($('.js_datepicker').length) {
            var today = new Date();
            var minDate = new Date();
            minDate.setDate(today.getDate() - 365);
            minDate = new Date(minDate.getFullYear(), minDate.getMonth(), minDate.getDate());

            $('.js_datepicker').datetimepicker({
                locale: 'ko',
                format: 'YYYY-MM-DD',
                dayViewHeaderFormat: 'YYYY MM',
                viewMode: 'days',
                ignoreReadonly: true,
                debug: false,
                keepOpen: false,
                maxDate: today,
                //minDate: minDate
            });

            //1년 이상 데이터 조회시 1년기간버튼 선택 이벤트
            $inputDate = $('input[name="wDate[]"]');
            var startDate = ($($inputDate[0]).val()).split('-');
            startDate = new Date(startDate[0], startDate[1], startDate[2]);

            var endDate = ($($inputDate[1]).val()).split('-');
            endDate = new Date(endDate[0], endDate[1], endDate[2]);
            var period = (endDate-startDate)/(24*3600*1000);

            if(period > 365){
                $('.date_check_list button').removeClass('on');
                $('.oneYear').addClass('on');
            }
        }

        // 기간버튼 선택 이벤트
        if ($('.date_check_list').length) {
            $('.date_check_list button').click(function (e) {
                $startDate = $endDate = '';
                $period = $(this).data('value');
                $elements = $('input[name="' + $(this).closest('.date_check_list').data('target-name') + '"]');
                $format = $($elements[0]).data('DateTimePicker').format();
                if ($period >= 0) {
                    $startDate = moment().hours(0).minutes(0).seconds(0).subtract($period, 'days').format($format);
                    $endDate = moment().hours(0).minutes(0).seconds(0).format($format);
                }
                $($elements[0]).val($startDate);
                $($elements[1]).val($endDate);
                $('.date_check_list button').removeClass('on');
                $(this).addClass('on');
            });

            // 선택된 버튼에 따른 값 초기화
            $elements = $('input[name*=\'' + $('.date_check_list').data('target-name') + '\']');
            if ($elements.length && $elements.val() != '') {
                $interval = moment($($elements[1]).val()).diff(moment($($elements[0]).val()), 'days');
                $('.date_check_list').find('button[data-value="' + $interval + '"]').trigger('click');
            } else {
                $('.date_check_list').find('button[data-value="-1"]').trigger('click');
            }
        }

        // 조회기간 검증
        $('form[name="frmDateSearch"]').submit(function(e){
            $chekcInputDate = $('input[name="wDate[]"]');
            var startDate = ($($chekcInputDate[0]).val()).split('-');
            startDate = new Date(startDate[0], startDate[1], startDate[2]);
            var endDate = ($($chekcInputDate[1]).val()).split('-');
            endDate = new Date(endDate[0], endDate[1], endDate[2]);

            if (startDate > endDate) {
                alert('종료 날짜가 시작 날짜보다 빠릅니다.\n확인 후 검색기간을 다시 선택해주세요.');
                return false;
            }
        });
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
        <div id="scroll_right">
<div class="qmenu_wrap">
	<ul class="qm qm1">
		<li><a href="/mypage/order_list.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_deli.png" alt=""></a></li>
		<li class="cart"><span><a href="../order/cart.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_cart.png" alt=""></a>
			<strong><a href="../order/cart.jsp">1</a></strong>

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
                { event: "setEmail", email: "56b2365153eb1d5a40fab99d6f0c68a579607e1e9d30189fdaa1d3de3a8746a4", hash_method: "sha256" },
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
var _NB_ID='ekdud3674';
var _NB_UDF={'udf01':'홍다영','udf03':'010-8258-3674','udf06':'포켓탐색 Lv.1'};
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