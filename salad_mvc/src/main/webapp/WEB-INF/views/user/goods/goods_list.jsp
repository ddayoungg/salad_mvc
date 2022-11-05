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
					<li><a href="../member/join_method.jsp">회원가입</a></li>
					<li><a href="../member/login.jsp">로그인</a></li>

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

                      <strong><b><a href="../order/cart.jsp" class="z">0</a></b></strong>

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
<a href="#void" id="allMenuToggle"><img src="http://localhost/salad_mvc/resources/imagescommon/btn/btn_allmenu_open.png" alt="전체메뉴보기"></a>
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

            <!-- //location_wrap -->

            <div class="sub_content">

                <!-- //side_cont -->
<style>
	.gds_top_bx{opacity: 0;
    visibility: hidden;
    transition: opacity 1s ease;
    -webkit-transition: opacity 1s ease;
}
.gds_top_bx.in{
    visibility: visible;
    opacity: 1;    
}
	.item_photo_box {width: 278px; height:278px;}

</style>
<div class="content">
    <div class="location_wrap">
        <div class="location_cont">
            <em><a href="#" class="local_home">HOME</a> &nbsp;</em>
            <span>&gt; </span>
            <div class="location_select">
                <div class="location_tit"><a href="#"><span>정기배송</span></a></div>
                <ul style="display:none;">
                    <li><a href="?cateCd=001"><span>정기배송</span></a></li>
                    <li><a href="?cateCd=002"><span>샐러드</span></a></li>
                    <li><a href="?cateCd=003"><span>간편식</span></a></li>
                    <li><a href="?cateCd=004"><span>닭가슴살&간식</span></a></li>
                    <li><a href="?cateCd=027"><span>식단 세트</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //location_wrap -->

 <div class="goods_list_item"  data-sticky-container>	


	<div class="gds_top_bx_wrap sticky-list"  data-margin-top="49" data-sticky-class="sticky-list">
		<div class="gds_top_bx">
			<div class="gds_top_left">
				<div class="goods_list_item_tit">
					<h2>정기배송</h2>
				</div>
			</div>
			<div class="gds_top_right">
				<div class="list_item_category">
					<ul>
						<li class="on"><a href="../goods/goods_list.jsp?cateCd=001"><span>전체상품</span></a></li>
						<li class="">
							<a href="?cateCd=001009"><span>식단스타터(1주) <em>(4)</em></span></a>
						</li>
						<li class="">
							<a href="?cateCd=001010"><span>2주 식단 <em>(5)</em></span></a>
						</li>
						<li class="">
							<a href="?cateCd=001011"><span>4주 식단 <em>(8)</em></span></a>
						</li>
						<li class="">
							<a href="?cateCd=001012"><span>6주+식단 <em>(8)</em></span></a>
						</li>
						<li class="">
							<a href="?cateCd=001013"><span>짜여진 식단 <em>(4)</em></span></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
        
        <!-- 상단 꾸미기 영역 -->
        <div class="addition_zone">
            <p style="text-align: center;" align="center"><a href="https://www.pocketsalad.co.kr/main/html.jsp?htmid=board/main.html&amp;__gd5_skin_preview=NjUyMDQwXnxeNjEuMTA1LjExMC40OV58XmZyb250Xnxea2FpbWVuX3BjX25efF4xNjY1NjMxMzEx"><img style="width: 100%;" src="https://atowertr6856.cdn-nhncommerce.com/data/editor/goods/220908/1_n_154233.jpg" title="1_n_154233.jpg" alt="1_n_154233.jpg" class="js-smart-img"></a><br style="clear:both;"> </p>
        </div>
       

        <!-- 설문조사 배너 --><!-- 설문조사 배너 -->


        <div class="goods_pick_list">
            
            <form name="frmList" action="">
                <input type="hidden" name="cateCd" value="001"/>
                <div class="pick_list_box">
					<span class="pick_list_num">상품 <strong>25</strong>개</span>
					<div class="choice_num_view">
                        <select class="chosen-select" name="sort" id="sort" style="width:168px; ">
							<option value="" selected>추천순</option>
							<option value="sellcnt" >인기상품순</option>
							<option value="date" >신상품순</option>
							<option value="price_asc" >낮은가격순</option>
							<option value="price_dsc" >높은가격순</option>
						</select>
                    </div>
                    <!-- //choice_num_view -->
                </div>
                <!-- //pick_list_box -->
            </form>
        </div>
        <!-- //goods_pick_list -->

        <div class="goods_list">
            <div class="goods_list_cont">
                <!-- 상품 리스트 -->
<!-- 장바구니형 -->
<!-- 그냥일때 -->




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

		<div class="item_basket_type">
    <ul>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000239" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/1000000239_main_080.jpg" width="570" alt="4주 정기배송 샐러드 주 5일" title="4주 정기배송 샐러드 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000239"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000239">
                            <strong class="item_name">4주 정기배송 샐러드 주 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								92,400<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							124,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 1265</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000240" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000240/1000000240_main_028.jpg" width="570" alt="4주 정기배송 샐러드 주 3일" title="4주 정기배송 샐러드 주 3일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000240"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000240">
                            <strong class="item_name">4주 정기배송 샐러드 주 3일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								55,800<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							74,400원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 156</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000376" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000376/1000000376_main_086.jpg" width="570" alt="하루에 한 끼를 샐러드로 5일" title="하루에 한 끼를 샐러드로 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000376"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000376">
                            <strong class="item_name">하루에 한 끼를 샐러드로 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								23,350<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							31,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 14</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=260" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/10/15/260/260_main_029.jpg" width="570" alt="2주 정기배송 샐러드 주 5일" title="2주 정기배송 샐러드 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="260"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=260">
                            <strong class="item_name">2주 정기배송 샐러드 주 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								46,500<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							62,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 81</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000388" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000388/1000000388_main_048.jpg" width="570" alt="4주 정기배송 샐러드 주 4일" title="4주 정기배송 샐러드 주 4일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000388"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000388">
                            <strong class="item_name">4주 정기배송 샐러드 주 4일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								74,400<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							99,200원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 5</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000382" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000382/1000000382_main_062.jpg" width="570" alt="2주 정기배송 샐러드 주 6일" title="2주 정기배송 샐러드 주 6일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000382"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000382">
                            <strong class="item_name">2주 정기배송 샐러드 주 6일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								55,800<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							74,400원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 7</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000238" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000238/1000000238_main_073.jpg" width="570" alt="4주 정기배송 간편식 주 5일" title="4주 정기배송 간편식 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000238"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000238">
                            <strong class="item_name">4주 정기배송 간편식 주 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>22%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								92,400<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							118,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 86</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=243" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/06/05/243/243_main_049.png" width="570" alt="샐러드와 간편식으로 5일" title="샐러드와 간편식으로 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="243"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=243">
                            <strong class="item_name">샐러드와 간편식으로 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>27%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								40,750<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							56,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 16</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=109" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/109/109_main_061.jpg" width="570" alt="하루에 두 끼를 샐러드로 5일" title="하루에 두 끼를 샐러드로 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="109"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=109">
                            <strong class="item_name">하루에 두 끼를 샐러드로 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								46,500<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							62,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 133</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000234" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/05/1000000234/1000000234_main_011.jpg" width="570" alt="4주 정기배송 샐러드+간편식 주 5일" title="4주 정기배송 샐러드+간편식 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000234"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000234">
                            <strong class="item_name">4주 정기배송 샐러드+간편식 주 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>24%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								184,800<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							242,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 48</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000391" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000391/1000000391_main_02.jpg" width="570" alt="6주 정기배송 샐러드 주 3일" title="6주 정기배송 샐러드 주 3일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000391"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000391">
                            <strong class="item_name">6주 정기배송 샐러드 주 3일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								83,700<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							111,600원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 0</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000392" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000392/1000000392_main_075.jpg" width="570" alt="8주 정기배송 샐러드 주 5일" title="8주 정기배송 샐러드 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000392"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000392">
                            <strong class="item_name">8주 정기배송 샐러드 주 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>28%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								178,400<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							248,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 5</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000385" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000385/1000000385_main_017.jpg" width="570" alt="2주 정기배송 샐러드+간편식 주 5일" title="2주 정기배송 샐러드+간편식 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000385"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000385">
                            <strong class="item_name">2주 정기배송 샐러드+간편식 주 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>28%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								81,100<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							112,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 5</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000247" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/08/1000000247/1000000247_main_038.jpg" width="570" alt="4주 정기배송 샐러드+닭가슴살&amp;간식 주 5일" title="4주 정기배송 샐러드+닭가슴살&amp;간식 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000247"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000247">
                            <strong class="item_name">4주 정기배송 샐러드+닭가슴살&간식 주 ..</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>26%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								114,000<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							155,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 54</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000389" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000389/1000000389_main_028.jpg" width="570" alt="6주 정기배송 샐러드 주 5일" title="6주 정기배송 샐러드 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000389"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000389">
                            <strong class="item_name">6주 정기배송 샐러드 주 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>27%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								135,900<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							186,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 0</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000394" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000394/1000000394_main_065.jpg" width="570" alt="8주 정기배송 샐러드 주 3일" title="8주 정기배송 샐러드 주 3일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000394"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000394">
                            <strong class="item_name">8주 정기배송 샐러드 주 3일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								110,880<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							148,800원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 1</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000236" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000236/1000000236_main_021.jpg" width="570" alt="4주 정기배송 샐러드+미니컵밥 주 5일" title="4주 정기배송 샐러드+미니컵밥 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000236"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000236">
                            <strong class="item_name">4주 정기배송 샐러드+미니컵밥 주 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>28%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								161,200<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							224,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 9</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=111" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/111/111_main_028.jpg" width="570" alt="2주 정기배송 샐러드+닭가슴살&amp;간식 주 5일" title="2주 정기배송 샐러드+닭가슴살&amp;간식 주 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="111"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=111">
                            <strong class="item_name">2주 정기배송 샐러드+닭가슴살&간식 주 ..</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>26%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								57,300<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							77,500원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 28</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000379" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000379/1000000379_main_011.jpg" width="570" alt="샐러드와 닭가슴살로 5일" title="샐러드와 닭가슴살로 5일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000379"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000379">
                            <strong class="item_name">샐러드와 닭가슴살로 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>31%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								35,250<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							51,000원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 0</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000393" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000393/1000000393_main_067.jpg" width="570" alt="8주 정기배송 샐러드 주 4일" title="8주 정기배송 샐러드 주 4일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000393"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000393">
                            <strong class="item_name">8주 정기배송 샐러드 주 4일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>27%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								144,960<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							198,400원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 0</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000390" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000390/1000000390_main_023.jpg" width="570" alt="6주 정기배송 샐러드 주 4일" title="6주 정기배송 샐러드 주 4일" class="middle"  />
                    </a>

					<span class="best-icon">
                        
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000390"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000390">
                            <strong class="item_name">6주 정기배송 샐러드 주 4일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>25%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								110,880<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							148,800원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 0</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000411" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/06/26/1000000411/1000000411_main_03.jpg" width="570" alt="4주 정기배송 짜여진 식단" title="4주 정기배송 짜여진 식단" class="middle"  />
                    </a>

					<span class="best-icon">
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000411"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000411">
                            <strong class="item_name">4주 정기배송 짜여진 식단</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>11%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								101,000<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							113,400원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 2</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000412" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/06/26/1000000412/1000000412_main_047.jpg" width="570" alt="2주 정기배송 짜여진 식단" title="2주 정기배송 짜여진 식단" class="middle"  />
                    </a>

					<span class="best-icon">
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000412"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000412">
                            <strong class="item_name">2주 정기배송 짜여진 식단</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>15%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								80,300<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							94,600원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 2</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000413" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/06/26/1000000413/1000000413_main_026.jpg" width="570" alt="6주 정기배송 짜여진 식단" title="6주 정기배송 짜여진 식단" class="middle"  />
                    </a>

					<span class="best-icon">
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000413"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000413">
                            <strong class="item_name">6주 정기배송 짜여진 식단</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>11%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								150,100<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							169,200원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 0</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:33.333333333333%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000414" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/06/26/1000000414/1000000414_main_089.jpg" width="570" alt="8주 정기배송 짜여진 식단" title="8주 정기배송 짜여진 식단" class="middle"  />
                    </a>

					<span class="best-icon">
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
					</span>

					<div class="item_link">

                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000414"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000414">
                            <strong class="item_name">8주 정기배송 짜여진 식단</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					<div class="all_price">
						<div class="per_wrap">

								<span class="item_discount"><em>11%</em></span>

						</div>

                        <strong class="item_price">
                            <span  style="">
								201,400<i class="won">원</i></span>
                        </strong>
                        <span class="d_price" style="">
							227,400원 </span>
                    </div>
					</div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 1</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
    </ul>
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
<!-- wish template -->
<form id="frmWishTemplateView" method="post">
    <input type="hidden" name="mode" value="wishIn">
    <input type="hidden" name="cartMode" value="">
    <input type="hidden" name="optionFl" value="">
</form>
<!-- //cart template -->
<script type="text/javascript">
    <!--
    $(document).ready(function(){
        $('.item_photo_box').on('click', '.btn_add_wish_', function(){
            alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
            document.location.href = "../member/login.jsp";
            return false;
        });

        $('.item_photo_box').on('click', '.btn_add_cart_', function(){
            if($(this).data('mode') == 'cartIn') {
                var params = {
                    page: 'goods',
                    type: 'goods',
                    goodsNo: $(this).data('goods-no'),
                    mainSno : '',
                };

                $.ajax({
                    method: "POST",
                    cache: false,
                    url: "../goods/layer_option.jsp",
                    data: params,
                    success: function (data) {
                        
                        $('#optionViewLayer').empty().append(data);
                        $('#optionViewLayer').find('>div').center();
                    },
                    error: function (data) {
                        alert(data.message);
                    }
                });
            }
        });

        $('.layer-cartaddconfirm').click(function(){
            location.href = '../order/cart.jsp';
        });

        $('.btn_move_cart').click(function() {
            location.href = '../order/cart.jsp';
        });

        $('.btn_move_wish').click(function() {
            location.href = '../mypage/wish_list.jsp';
        });

    });

    function gd_goods_option_view_result(params) {
        params += "&mode=cartIn";
        $.ajax({
            method: "POST",
            cache: false,
            url: "../order/cart_ps.jsp",
            data: params,
            success: function (data) {
                $("#optionViewLayer").addClass('dn');
                $("#addCartLayer").removeClass('dn');
                $('#layerDim').removeClass('dn');
                $("#addCartLayer").find('> div').center();
            },
            error: function (data) {
                alert(data.message);
            }
        });
    }
    //-->
</script>




                <!-- //상품 리스트 -->
            </div>
        </div>

        <div class="pagination">
            <div class="pagination"><ul><li class="on"><span>1</span></li></ul></div>
        </div>

    </div>
    <!-- //goods_list_item -->
	<script type="text/javascript">
		$(document).ready(function () {

			$('form[name=frmList] select[name=pageNum]').change(function() {
				$('form[name=frmList]').get(0).submit();
			});

			$('form[name=frmList] select[name=sort]').change(function() {
				$('form[name=frmList]').get(0).submit();
			});

			//$(':radio[name="sort"][value=""]').prop("checked","checked")
			//$(':radio[name="sort"][value=""]').next().addClass('on');

		setTimeout(function() {
				$('.gds_top_bx').addClass('in');
		}, 10);

		});
	</script>
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


        <!-- 우측 스크롤 배너 -->
        <div id="scroll_right">
<div class="qmenu_wrap">
	<ul class="qm qm1">
		<li><a href="http://localhost/salad_mvc/resources/user/mypage/order_list.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_deli.png" alt=""></a></li>
		<li class="cart"><span><a href="../order/cart.jsp"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_cart.png" alt=""></a>
			<strong><a href="../order/cart.jsp" class="z">0</a></strong>

		</span></li>

	</ul>


<div class="bg_scroll_right_cont"></div>
<div class="scroll_right_cont">
 <div class="scr_paging">
        <button type="button" class="bnt_scroll_prev" title="최근본 이전 상품"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_top.png" alt=""></button>

    </div>
   <!--  <h4>TODAY VIEW</h4> -->
    <ul>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=68">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/68/68_main_094.jpg">
                </span>
                <span class="src_box">
                    <em>닭가슴살 샐러드</em>
                        <strong>6,700<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000261">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/04/15/1000000261/1000000261_main_04.jpg">
                </span>
                <span class="src_box">
                    <em>시즌3 곤약 라이스 6종 혼합</em>
                        <strong>28,700<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000390">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000390/1000000390_main_023.jpg">
                </span>
                <span class="src_box">
                    <em>6주 정기배송 샐러드 주 4일</em>
                        <strong>110,880<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>

    </ul>
    <ul>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000420">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/07/27/1000000420/1000000420_main_047.jpg">
                </span>
                <span class="src_box">
                    <em>단기집중 식단관리 2주 패키지</em>
                        <strong>175,600<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=540">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/09/14/540/540_main_021.jpg">
                </span>
                <span class="src_box">
                    <em>베스트 샐러드 6종 맛보기</em>
                        <strong>38,400<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=1000000405">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/05/19/1000000405/1000000405_main_010.jpg">
                </span>
                <span class="src_box">
                    <em>레드칠리 로스트 닭가슴살 샐러드</em>
                        <strong>8,300<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>

    </ul>
    <ul>
        <li>
            <a href="../goods/goods_view.jsp?goodsNo=250">
                <span class="photo">
                    <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/07/24/250/250_main_020.jpg">
                </span>
                <span class="src_box">
                    <em>미니컵밥 5종&두부파스타 4종 맛보기</em>
                        <strong>37,600<b>원</b></strong>
                </span>
                <!-- //src_box -->
            </a>
        </li>

    </ul>

    <div class="scr_paging scr_paging2">

        <!-- <span><strong class="js_current">0</strong>/<span class="js_total" style="float:none;width:auto;">2</span></span> -->
        <button type="button" class="bnt_scroll_next" title="최근본 다음 상품"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/q_menu_bottom.png" alt=""></button>
    </div>
    <!-- //scr_paging -->
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