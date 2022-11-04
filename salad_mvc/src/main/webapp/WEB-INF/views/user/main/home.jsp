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
    <meta name="csrf-token" content="MTY2NjU0MjkwMjQ1NDk4ODA5MjMyNzk4MzM2ODUyNzkyMTM4NTM5OTQ0" />
   <meta name="facebook-domain-verification" content="l8vlpgoyq5exc97dfww64gqzmnialy" />
	

    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/main/index.jsp">
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
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/main/main.css?ts=1659529952" />
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
            "USD" : 0.00070160667929558689,
            "CNY" : 0.00502335861757170844,
            "JPY" : 0.10269470916858363457,
            "EUR" : 0.00072140703227575062,
        }
    </script>

    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_common.js?ts=1610501674"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-24T01%3A35%3A02%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3Anull%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22index.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData=?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/jquery-cookie/jquery.cookie.js?v=2020120404"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_popup.js?v=2020120404"></script>
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
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/naver/naverCommonInflowScript.js?Path=/main/index.jsp&amp;Referer=https://www.pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
                { event: "viewHome"}
            );
        </script>
        <!-- End Criteo Script -->

        <script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
        <script type="text/javascript">
            kakaoPixel('5900620314493041185').pageView();
        </script>
        <span itemscope="" itemtype="http://schema.org/Organization">
<link itemprop="url" href="https://pocketsalad.co.kr:443/">
<a itemprop="sameAs" href="https://www.facebook.com/pocketsalad"></a>
<a itemprop="sameAs" href="https://www.instagram.com/pocketsalad_official/"></a>
</span><!-- AceCounter Log Gathering Script V.8.0.2019080601 -->
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
	
	
<body id="body" class="body-main body-index pc"  >
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
				<div class="logo_main"><a href="../main/index.jsp" ><img src="http://localhost/salad_mvc/resources/images/banner/1bb87d41d15fe27b500a4bfcde01bb0e_33003.png"  alt="상단 로고" title="상단 로고"   /></a></div>
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
					<li><a href="login.do">로그인</a></li>

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
					<li><a href="../mypage/index.jsp"><img src="http://localhost/salad_mvc/resources/images/main/top_cs_icn.png" alt="마이페이지"></a></li>
					<li class="cart"><a href="../order/cart.jsp"><img src="http://localhost/salad_mvc/resources/images/main/top_cart_icn.png" alt="장바구니"></a>

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
<a href="#void" id="allMenuToggle"><img src="http://localhost/pocket/images/common/btn/btn_allmenu_open.png" alt="전체메뉴보기"></a>
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
	.main_v{ position:relative;}
	#contents{ padding:0 0 0 0;}
	.pc_top_banner_in{ width:1200px;margin:0 auto;position:relative;}
	#popupCode_layer_2 .pc_top_banner{ overflow:hidden; }
</style>
<!--script type="text/javascript" src="http://localhost/salad_mvc/resources/js/slider/slick/slick.js"></script-->
<!-- <script src="http://localhost/salad_mvc/resources/css/slick.css"></script> -->


		<div class="main_v" style='visibility:hidden;'>
			<div class="slider slider-for">
				<div class="slider_bn">
				 <a href="https://www.pocketsalad.co.kr/board/view.jsp?period=current&bdId=event&sno=46" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/slider_511517418/0553b36db6d9587049ca37ff694f0ac5_25660.jpg"  alt="" title=""   /></a>
				</div>
				<div class="slider_bn">
				 <a href="https://www.pocketsalad.co.kr/goods/goods_list.jsp?cateCd=002004" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/slider_511517418/d1e43121cfdbf9c4062765a83153968e_59765.jpg"  alt="" title=""   /></a>
				</div>
				<div class="slider_bn">
				 <a href="https://www.pocketsalad.co.kr/goods/goods_list.jsp?cateCd=001" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/slider_511517418/38ddcdc0747013dc2cfc19f01590b933_53285.jpg"  alt="" title=""   /></a>
				</div>
				<div class="slider_bn">
				 <a href="https://www.pocketsalad.co.kr/goods/goods_list.jsp?cateCd=027" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/slider_511517418/2f6c7d91ad533a0cd04729d8c53dac0d_22618.jpg"  alt="" title=""   /></a>
				</div>
				<div class="slider_bn">
				 <a href="https://www.pocketsalad.co.kr/board/view.jsp?period=current&bdId=event&sno=23" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/slider_511517418/4ae78d8b0adbb6e9c322962a6d540e12_64293.jpg"  alt="" title=""   /></a>
				</div>
				<div class="slider_bn">
				 <a href="https://www.pocketsalad.co.kr/goods/goods_list.jsp?cateCd=002" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/slider_511517418/6f8f8f91331d91bd2144ccf9a11d108b_83859.jpg"  alt="" title=""   /></a>
				</div>
				<div class="slider_bn">
				 <a href="https://www.pocketsalad.co.kr/goods/goods_list.jsp?cateCd=002" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/slider_511517418/c568f4ede64f0ca71ccef503a757be93_12290.jpg"  alt="" title=""   /></a>
				</div>
				<div class="slider_bn">
				 <a href="https://www.pocketsalad.co.kr/goods/goods_list.jsp?cateCd=003" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/slider_511517418/f66a3032dbfd8c613b1438ef09dbdbdd_13563.jpg"  alt="" title=""   /></a>
				</div>
				<div class="slider_bn">
				 <a href="https://www.pocketsalad.co.kr/goods/goods_list.jsp?cateCd=004" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/slider_511517418/313a772751abebc21931f68c93dcac49_61198.jpg"  alt="" title=""   /></a>
				</div>
				
			</div>
			<div class="slider-nav-wrap">
				<button class="main_v_right_btn">next</button>
				<button class="main_v_left_btn">prev</button>
				<div class="auto-control-box"><a href="#none;" class="play-btn"></a></div>
				<div class="slider-nav-wrp">
					<div class="slider slider-nav">
						
						<div class="nav_title">
							<span>
							
							</span>
						</div>
					
						
						<div class="nav_title">
							<span>
							
							</span>
						</div>
					
						
						<div class="nav_title">
							<span>
							
							</span>
						</div>
					
						
						<div class="nav_title">
							<span>
							
							</span>
						</div>
					
						
						<div class="nav_title">
							<span>
							
							</span>
						</div>
					
						
						<div class="nav_title">
							<span>
							
							</span>
						</div>
					
						
						<div class="nav_title">
							<span>
							
							</span>
						</div>
					
						
						<div class="nav_title">
							<span>
							
							</span>
						</div>
					
						
						<div class="nav_title">
							<span>
							
							</span>
						</div>
					
		
					</div>
				</div>
			</div>
		<script type="text/javascript">
			$(function(){
				$('.main_v .slider-for')
					.on('init', function(){}).slick({
		/*
					slidesToShow: 1,
					slidesToScroll: 1,
					arrows: false,
					fade: false,
					asNavFor: '.slider-nav',
					autoplay: true,
					autoplaySpeed :3000,
					speed:300,
					variableWidth: true,
					adaptiveHeight: true,
					draggable : false,
					dots: false,
					infinite:true*/
					
					 autoplay: true,
					dots: false,
					arrows: false,
					infinite: true,
					autoplaySpeed :4000,
					speed:300,
					slidesToShow: 1,
					centerMode:true,
					variableWidth: true,
					adaptiveHeight: true,
					draggable : false,
					asNavFor: '.slider-nav'
					});

					$('.main_v').css('visibility', 'visible').animate({opacity:1});
					
				$('.main_v .slider-nav')
				   .on('init', function(){}).slick({
				  slidesToShow: 7,
				  slidesToScroll: 1,
				  asNavFor: '.slider-for',
				  dots: false,
				arrows: false,
				  //centerMode: true,
				  focusOnSelect: true
				});


			   $('.main_v .auto-control-box a.play-btn').click(function() {
					$(this).toggleClass('stop');
					if($(this).hasClass('stop')) {
						$('.main_v .slider').slick('slickPause');
					} else {
						$('.main_v .slider').slick('slickPlay');
					}
				});

				$('.main_v .main_v_left_btn').on('click', function() {
					$('.main_v .slider').slick('slickPrev');

				});

				$('.main_v .main_v_right_btn').on('click', function() {
					$('.main_v .slider').slick('slickNext');
				});

			});
		</script>
	</div>


<!-- //main_visual -->


<!--script src="http://localhost/salad_mvc/resources/js/swiper.js"></script-->
<!--link rel="stylesheet" href="http://localhost/salad_mvc/resources/css/swiper.css"-->


<!-- 메인 타임세일 -->
<!-- 타임세일 -->
<div class="m_t100">
	<div class="main_time_sale_wrap">
		<div class="main_time_sale">
			<div class="time_con">
				<dl>
					<dt>
						<img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/time_sale_tit.png" alt="타임세일">
					</dt>
					<dd class="time">
						<span>
							<em class="num-con dev_timesale_hour1">0</em>
							<em class="num-con dev_timesale_hour2">0</em>
							<em class="num-con dot-txt">:</em>
							<em class="num-con dev_timesale_minute1">0</em>
							<em class="num-con dev_timesale_minute2">0</em>
							<em class="num-con dot-txt">:</em>
							<em class="num-con dev_timesale_second1">0</em>
							<em class="num-con dev_timesale_second2">0</em>
						</span>
					</dd>
				</dl>
			</div>
			<!-- swiper s -->
			<div class="main_right_slider">
			  <div class="swiper-container-mainPdt">
				<div class="swiper-wrapper">
				<!-- slide con s -->
				  <div class="swiper-slide">
						<ul class="time_slider_in">
                            <li>
                                <div class="pdt_wrap">
                                    <div class="img item_photo_box">
                                        <span class="ts_top_msg">
                                            <i></i>
                                            <b><span class="dev_time_sale_short_hour">0</span>시 <span class="dev_time_sale_short_minute">0</span>분</b>
                                        </span>
                                        <a href="../goods/goods_view.jsp?goodsNo=117&mtn=%5E%7C%5E%5E%7C%5E" alt="">
                                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/70/01/01/117/117_add5_031.jpg" alt="">
                                            <!-- <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/70/01/01/117/117_main_026.jpg" width="570" alt="파스타 샐러드" title="파스타 샐러드" class="middle"  /> -->
                                        </a>
                                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="117">
                                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span>
                                        </button>
                                        <!-- <b class="cart_btn"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""></b> -->
                                    </div>
                                    <div class="info">
                                        <div class="txts">
                                            <p class="nm">파스타 샐러드</p>
                                            <!-- <p class="nm">117</p> -->
                                                 
                                            <div class="num">
                                                <p class="per">31%</p>
                                                <p class="all_price">
                                                    <span class="price">6,390<em>원</em></span>
                                                    <span class="dc_price">9,300<em>원</em></span>
                                                </p>                                                      
                                            </div>
                                                                                
                                            <div class="item_review_count">
                                                <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 288</span>
                                            </div>     
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="pdt_wrap">
                                    <div class="img item_photo_box">
                                        <span class="ts_top_msg">
                                            <i></i>
                                            <b><span class="dev_time_sale_short_hour">0</span>시 <span class="dev_time_sale_short_minute">0</span>분</b>
                                        </span>
                                        <a href="../goods/goods_view.jsp?goodsNo=1000000209&mtn=%5E%7C%5E%5E%7C%5E" alt="">
                                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/12/51/1000000209/1000000209_add5_066.jpg" alt="">
                                            <!-- <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/12/51/1000000209/1000000209_main_080.jpg" width="570" alt="[시즌1] 가벼운 탄단지 라이스 6종 혼합 6팩" title="[시즌1] 가벼운 탄단지 라이스 6종 혼합 6팩" class="middle"  /> -->
                                        </a>
                                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_ btn_open_layer" data-mode="cartIn" data-goods-no="1000000209">
                                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span>
                                        </button>
                                        <!-- <b class="cart_btn"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""></b> -->
                                    </div>
                                    <div class="info">
                                        <div class="txts">
                                            <p class="nm">[시즌1] 가벼운 탄단지 라이스 6종 혼합 6팩</p>
                                            <!-- <p class="nm">1000000209</p> -->
                                                 
                                            <div class="num">
                                                <p class="per">30%</p>
                                                <p class="all_price">
                                                    <span class="price">25,650<em>원</em></span>
                                                    <span class="dc_price">36,700<em>원</em></span>
                                                </p>                                                      
                                            </div>
                                                                                
                                            <div class="item_review_count">
                                                <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 21</span>
                                            </div>     
                                        </div>
                                    </div>
                                </div>
                            </li>
						</ul>
				  </div>

				  <!-- slide con e -->


				</div>
				<!--<button class="ts_leftbtn"></button>
				<button class="ts_rightbtn"></button>
				<div class="swiper-pagination-mainPdt"></div>-->
			  </div>
		  </div>
		  <script>
			var $timeSwiper = new Swiper('.swiper-container-mainPdt', {
			watchSlidesProgress: false,
			watchSlidesVisibility: false,
			slidesPerView:1,
			loop : false,
			autoplay: true,
			autoplaySpeed :5000,
			speed:500,
			  spaceBetween: 10,
			  pagination: {
				el: '.swiper-pagination-mainPdt',
				clickable: true,
				type: 'fraction'
			  },
			});
			var $ts_leftbtn = $('.ts_leftbtn');
			var $ts_rightbtn = $('.ts_rightbtn');
			$ts_leftbtn.click(function(){

				$timeSwiper.slidePrev();
			});
			$ts_rightbtn.click(function(){

				$timeSwiper.slideNext();
			});
		  </script>
		  <!-- swiper e -->
	</div>
	</div>
    <script type="text/javascript">
        $(document).ready(function(){
            gd_dailyMissionTimer('48298');
        });

        /**
         * 시간간격 카운트
         * @returns 
         */
        function gd_dailyMissionTimer(duration) {
            if (duration == 0) {
                $('.dev_timesale_on').addClass('dn');
                $('.dev_timesale_off').removeClass('dn');

    			$('.header_gnb').removeClass('on_time');

                return;
            } else {
                $('.dev_timesale_on').removeClass('dn');
                $('.dev_timesale_off').addClass('dn');
    			$('.header_gnb').addClass('on_time');

            }

            var timer = duration;
            var days,hours, minutes, seconds, wholeHours;

            var interval = setInterval(function(){
                days	= parseInt(timer / 86400, 10);
                hours	= parseInt(((timer % 86400 ) / 3600), 10);
                minutes = parseInt(((timer % 3600 ) / 60), 10);
                seconds = parseInt(timer % 60, 10);

				wholeHours = days*24+hours;
				console.log(wholeHours);

                if(days <= 0) {
                    $('.dev_timesale_day').hide();
                } else {
                    // // $('#timeDay').html("");
                    // $('.dev_timesale_day').html("");
                    //
                    // days 	= days < 10 ? "0" + days : days;
                    // for(i = 0; i < days.toString().length; i++) {
                    //     // $('#timeDay').append("<strong>"+days.toString().substr(i,1)+"</strong>");
                    //     $('.dev_timesale_day').append("<span class=\"numcon numcon"+(i+1)+"\"><b>"+days.toString().substr(i,1)+"</b></span>");
                    //     // <span class="numcon"><b>0</b></span>
                    // }
                    // $('.dev_timesale_day').append("<span class=\"numtxt numtxt1\"><b>일</b></span>");
                }

                hours 	= hours < 10 ? "0" + hours : hours;
                minutes = minutes < 10 ? "0" + minutes : minutes;
                seconds = seconds < 10 ? "0" + seconds : seconds;

                // $('#timeHour strong').eq(0).text(hours.toString().substr(0,1));
                // $('#timeHour strong').eq(1).text(hours.toString().substr(1,1));
                // $('.numcon.numcon3 b').text(hours.toString().substr(0,1));
                // $('.numcon.numcon4 b').text(hours.toString().substr(1,1));

                // $('.dev_timesale_hour1').text(hours.toString().substr(0,1));
                // $('.dev_timesale_hour2').text(hours.toString().substr(1,1));
				var hoursLength = wholeHours.toString().length;
				$('.dev_timesale_hour1').text(wholeHours.toString().substr(0,(hoursLength -1)));
                $('.dev_timesale_hour2').text(wholeHours.toString().substr((hoursLength -1),1));


                // $('#timeMin strong').eq(0).text(minutes.toString().substr(0,1));
                // $('#timeMin strong').eq(1).text(minutes.toString().substr(1,1));
                // $('.numcon.numcon5 b').text(minutes.toString().substr(0,1));
                // $('.numcon.numcon6 b').text(minutes.toString().substr(1,1));
                $('.dev_timesale_minute1').text(minutes.toString().substr(0,1));
                $('.dev_timesale_minute2').text(minutes.toString().substr(1,1));

                // $('#timeSec strong').eq(0).text(seconds.toString().substr(0,1));
                // $('#timeSec strong').eq(1).text(seconds.toString().substr(1,1));
                // $('.numcon.numcon7 b').text(seconds.toString().substr(0,1));
                // $('.numcon.numcon8 b').text(seconds.toString().substr(1,1));
                $('.dev_timesale_second1').text(seconds.toString().substr(0,1));
                $('.dev_timesale_second2').text(seconds.toString().substr(1,1));

				// $('.dev_time_sale_short_hour').text(hours.toString());
				$('.dev_time_sale_short_hour').text(wholeHours.toString());
				$('.dev_time_sale_short_minute').text(minutes.toString());

                $("#displayTimeSale").show();

                if (--timer < 0) {
                    timer = 0;
                    clearInterval(interval);
                }
            }, 1000);
        }
    </script>

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
                console.log(1234);
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

</div>

<!-- 메인 타임세일 -->



<div class="main_best">
	<div class="in">
	<!-- 메인 상품 노출 --><!-- [위젯] 메인 상품 출력 -->

<div class="goods_list main_wrap_1">
    <div class="goods_list_tit">
        <h3>가장 핫한 샐러드</h3>
    </div>
    <div class="goods_list_cont goods_content_1">
<!-- 장바구니형 -->
<!-- 메인일때 -->


		<div class="item_basket_type">
    <ul>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000239&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En" >
								<img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/1000000239_add3_078.jpg">

                    </a>

					<span class="best-icon">
					
					</span>

                    <div class="item_link">
                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_1 btn_open_layer" data-mode="cartIn" data-goods-no="1000000239"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000239&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En">
                            <strong class="item_name">4주 정기배송 샐러드 주 5일</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
						<div class="per_wrap">
								<span class="item_discount"><em>25%</em></span>
						</div>
                        <strong class="item_price">
                            <span  style="">
								92,400<i class="won">원</i>
							</span>
                        </strong>
                        <span  class="dc_price"  style="">124,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 1263</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=68&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En" >
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/68/68_main_094.jpg" width="570" alt="닭가슴살 샐러드" title="닭가슴살 샐러드" class="middle"  />

                    </a>

					<span class="best-icon">
					
					</span>

                    <div class="item_link">
                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_1 btn_open_layer" data-mode="cartIn" data-goods-no="68"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=68&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En">
                            <strong class="item_name">닭가슴살 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
						<div class="per_wrap">
								<span class="item_discount"><em>19%</em></span>
						</div>
                        <strong class="item_price">
                            <span  style="">
								6,700<i class="won">원</i>
							</span>
                        </strong>
                        <span  class="dc_price"  style="">8,300원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 467</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=69&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En" >
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/69/69_main_028.jpg" width="570" alt="크래미 샐러드" title="크래미 샐러드" class="middle"  />

                    </a>

					<span class="best-icon">
					
					</span>

                    <div class="item_link">
                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_1 btn_open_layer" data-mode="cartIn" data-goods-no="69"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=69&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En">
                            <strong class="item_name">크래미 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
						<div class="per_wrap">
								<span class="item_discount"><em>23%</em></span>
						</div>
                        <strong class="item_price">
                            <span  style="">
								6,900<i class="won">원</i>
							</span>
                        </strong>
                        <span  class="dc_price"  style="">9,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 835</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000061&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En" >
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/10/43/1000000061/1000000061_main_023.jpg" width="570" alt="채소만 샐러드" title="채소만 샐러드" class="middle"  />

                    </a>

					<span class="best-icon">
					
					</span>

                    <div class="item_link">
                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_1 btn_open_layer" data-mode="cartIn" data-goods-no="1000000061"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000061&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En">
                            <strong class="item_name">채소만 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
						<div class="per_wrap">
								<span class="item_discount"><em>37%</em></span>
						</div>
                        <strong class="item_price">
                            <span  style="">
								3,400<i class="won">원</i>
							</span>
                        </strong>
                        <span  class="dc_price"  style="">5,400원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 103</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=245&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En" >
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/07/18/245/245_main_041.jpg" width="570" alt="그린 샐러드" title="그린 샐러드" class="middle"  />

                    </a>

					<span class="best-icon">
					
					</span>

                    <div class="item_link">
                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_1 btn_open_layer" data-mode="cartIn" data-goods-no="245"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=245&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En">
                            <strong class="item_name">그린 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
						<div class="per_wrap">
								<span class="item_discount"><em>24%</em></span>
						</div>
                        <strong class="item_price">
                            <span  style="">
								4,700<i class="won">원</i>
							</span>
                        </strong>
                        <span  class="dc_price"  style="">6,200원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 450</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=116&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En" >
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/70/01/01/116/116_main_033.jpg" width="570" alt="훈제오리 샐러드" title="훈제오리 샐러드" class="middle"  />

                    </a>

					<span class="best-icon">
					
					</span>

                    <div class="item_link">
                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_1 btn_open_layer" data-mode="cartIn" data-goods-no="116"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=116&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En">
                            <strong class="item_name">훈제오리 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
						<div class="per_wrap">
								<span class="item_discount"><em>21%</em></span>
						</div>
                        <strong class="item_price">
                            <span  style="">
								7,100<i class="won">원</i>
							</span>
                        </strong>
                        <span  class="dc_price"  style="">9,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 623</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:25%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=70&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En" >
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/70/70_main_024.jpg" width="570" alt="닭가슴살볼 숯불갈비맛 샐러드" title="닭가슴살볼 숯불갈비맛 샐러드" class="middle"  />

                    </a>

					<span class="best-icon">
					
					</span>

                    <div class="item_link">
                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_1 btn_open_layer" data-mode="cartIn" data-goods-no="70"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=70&mtn=1%5E%7C%5E%EA%B0%80%EC%9E%A5+%ED%95%AB%ED%95%9C+%EC%83%90%EB%9F%AC%EB%93%9C%5E%7C%5En">
                            <strong class="item_name">닭가슴살볼 숯불갈비맛 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
						<div class="per_wrap">
								<span class="item_discount"><em>23%</em></span>
						</div>
                        <strong class="item_price">
                            <span  style="">
								6,900<i class="won">원</i>
							</span>
                        </strong>
                        <span  class="dc_price"  style="">9,000원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 353</span>
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
        $('.item_photo_box').on('click', '.btn_add_wish_1', function(){
            alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
            document.location.href = "../member/login.jsp";
            return false;
        });

        $('.item_photo_box').on('click', '.btn_add_cart_1', function(){
            if($(this).data('mode') == 'cartIn') {
                var params = {
                    page: 'goods',
                    type: 'goods',
                    goodsNo: $(this).data('goods-no'),
                    mainSno : '1',
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




    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue1 = '1';
    var key1 = {
        html: 'html' + keyValue1,
        page: 'page' + keyValue1
    };
    var gdStorage1 = loadSession(key1.html);
    var page1 = loadSession(key1.page);
    $(document).ready(function() {
        if (gdStorage1) {
            $('.goods_content_1').html(gdStorage1);
            if (page1) {
                $('.main_wrap_1 .btn_goods_view_down_more').attr('data-page',page1);
            }
        }
        $('.main_wrap_1 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_1($(this).data('page'));
        });
    });

    function gd_get_list_1(page) {
        $.get('../goods/goods_main.jsp', {'mode' : 'get_main', 'more' : page, 'sno' : '1', 'groupSno' : ''}, function (data) {
            $(".goods_content_1").html(data);
            saveSession(key1.html, data);
            if (parseInt(page) + 1 > 0) {
                $('.main_wrap_1 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key1.page, parseInt(page)+1);
                $('.main_wrap_1 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>
<!-- 메인 상품 노출 -->
	</div>
</div>

<div class="">
	<div class="main_cate_best">
		<div class="in">
				<!-- 메인 상품 노출 --><!-- [위젯] 메인 상품 출력 -->

<div class="goods_list main_wrap_3">
    <div class="goods_list_tit">
        <h3>나에게 맞는 정기배송은?</h3>
    </div>
    <div class="goods_list_cont goods_content_3">
<!-- 탭진열형 -->



	<!-- 메인 카테고리 베스트 시작-->

<div class="tab_goods_3 item_hl_tab_type">
    <div class="goods_tab_tit">
        <ul>
            <li class="on" style="width:25%;"><a href="#"><i></i>2주</a></li>
            <li class="" style="width:25%;"><a href="#"><i></i>4주</a></li>
            <li class="" style="width:25%;"><a href="#"><i></i>6주+</a></li>
            <li class="" style="width:25%;"><a href="#"><i></i>1주</a></li>
        </ul>
    </div>
    <!-- //goods_tab_tit -->
    <div class="goods_tab_cont">
        <div class="goods_tab_box on">
            <ul>
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=260&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/10/15/260/260_main_029.jpg" width="570" alt="2주 정기배송 샐러드 주 5일" title="2주 정기배송 샐러드 주 5일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="260"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=260&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">2주 정기배송 샐러드 주 5일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>25%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        46,500<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000382&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000382/1000000382_main_062.jpg" width="570" alt="2주 정기배송 샐러드 주 6일" title="2주 정기배송 샐러드 주 6일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000382"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000382&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">2주 정기배송 샐러드 주 6일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>25%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        55,800<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000412&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/06/26/1000000412/1000000412_main_047.jpg" width="570" alt="2주 정기배송 짜여진 식단" title="2주 정기배송 짜여진 식단" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000412"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000412&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">2주 정기배송 짜여진 식단</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
        								<span class="item_discount"><em>15%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        80,300<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000385&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000385/1000000385_main_017.jpg" width="570" alt="2주 정기배송 샐러드+간편식 주 5일" title="2주 정기배송 샐러드+간편식 주 5일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000385"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000385&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">2주 정기배송 샐러드+간편식 주 ..</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>28%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        81,100<i class="won">원</i>
                                    </span>
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
            </ul>

					<div class="main_deli_pdt_morebtn devMoreLink">
						<a href="../goods/goods_list.jsp?cateCd=001">정기배송 더보기</a>
					</div>

					<script type="text/javascript">
					<!--
					$(document).ready(function() {
						$('.tab_goods_3 .goods_tab_tit li').click(function(e){
							e.preventDefault();
							var cateCd = "006";
							switch ($(this).find("a").text()){
								case "정기배송" :
									cateCd = "006";
									break;
								case "포켓샐러드" :
									cateCd = "002";
									break;
								case "포켓라이스" :
									cateCd = "003";
									break;
								case "포켓닭" :
									cateCd = "004";
									break;
								case "음료&간식" :
									cateCd = "005";
									break;
								case "식단세트" :
									cateCd = "006";
									break;
								default :
									cateCd = "006";
							}
							$(".devMoreLink").html('<a href="../goods/goods_list.jsp?cateCd='+cateCd+'">'+$(this).find("a").text()+' 식단 보기</a>');

						});
					});
					//-->
				</script>
        </div>
        <div class="goods_tab_box ">
            <ul>
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000239&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000239/1000000239_main_080.jpg" width="570" alt="4주 정기배송 샐러드 주 5일" title="4주 정기배송 샐러드 주 5일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000239"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000239&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">4주 정기배송 샐러드 주 5일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>25%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        92,400<i class="won">원</i>
                                    </span>
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
                                <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 1263</span>
                            </div>

                        </div>
                        <!-- //item_info_cont -->
                    </div>
                    <!-- //item_cont -->
                </li>
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000240&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/02/07/1000000240/1000000240_main_028.jpg" width="570" alt="4주 정기배송 샐러드 주 3일" title="4주 정기배송 샐러드 주 3일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000240"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000240&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">4주 정기배송 샐러드 주 3일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>25%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        55,800<i class="won">원</i>
                                    </span>
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
                                <span class="review_count"><img src="https://localhost/pocket/images/icon/review_60x63_02.png"> 156</span>
                            </div>

                        </div>
                        <!-- //item_info_cont -->
                    </div>
                    <!-- //item_cont -->
                </li>
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000388&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000388/1000000388_main_048.jpg" width="570" alt="4주 정기배송 샐러드 주 4일" title="4주 정기배송 샐러드 주 4일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000388"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000388&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">4주 정기배송 샐러드 주 4일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>25%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        74,400<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000411&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/06/26/1000000411/1000000411_main_03.jpg" width="570" alt="4주 정기배송 짜여진 식단" title="4주 정기배송 짜여진 식단" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000411"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000411&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">4주 정기배송 짜여진 식단</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
        								<span class="item_discount"><em>11%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        101,000<i class="won">원</i>
                                    </span>
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
            </ul>

					<div class="main_deli_pdt_morebtn devMoreLink">
						<a href="../goods/goods_list.jsp?cateCd=001">정기배송 더보기</a>
					</div>

					<script type="text/javascript">
					<!--
					$(document).ready(function() {
						$('.tab_goods_3 .goods_tab_tit li').click(function(e){
							e.preventDefault();
							var cateCd = "006";
							switch ($(this).find("a").text()){
								case "정기배송" :
									cateCd = "006";
									break;
								case "포켓샐러드" :
									cateCd = "002";
									break;
								case "포켓라이스" :
									cateCd = "003";
									break;
								case "포켓닭" :
									cateCd = "004";
									break;
								case "음료&간식" :
									cateCd = "005";
									break;
								case "식단세트" :
									cateCd = "006";
									break;
								default :
									cateCd = "006";
							}
							$(".devMoreLink").html('<a href="../goods/goods_list.jsp?cateCd='+cateCd+'">'+$(this).find("a").text()+' 식단 보기</a>');

						});
					});
					//-->
				</script>
        </div>
        <div class="goods_tab_box ">
            <ul>
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000391&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000391/1000000391_main_02.jpg" width="570" alt="6주 정기배송 샐러드 주 3일" title="6주 정기배송 샐러드 주 3일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000391"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000391&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">6주 정기배송 샐러드 주 3일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>25%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        83,700<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000413&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/06/26/1000000413/1000000413_main_026.jpg" width="570" alt="6주 정기배송 짜여진 식단" title="6주 정기배송 짜여진 식단" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000413"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000413&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">6주 정기배송 짜여진 식단</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
        								<span class="item_discount"><em>11%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        150,100<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000392&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000392/1000000392_main_075.jpg" width="570" alt="8주 정기배송 샐러드 주 5일" title="8주 정기배송 샐러드 주 5일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000392"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000392&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">8주 정기배송 샐러드 주 5일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>28%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        178,400<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000414&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/06/26/1000000414/1000000414_main_089.jpg" width="570" alt="8주 정기배송 짜여진 식단" title="8주 정기배송 짜여진 식단" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000414"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000414&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">8주 정기배송 짜여진 식단</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
        								<span class="item_discount"><em>11%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        201,400<i class="won">원</i>
                                    </span>
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

					<div class="main_deli_pdt_morebtn devMoreLink">
						<a href="../goods/goods_list.jsp?cateCd=001">정기배송 더보기</a>
					</div>

					<script type="text/javascript">
					<!--
					$(document).ready(function() {
						$('.tab_goods_3 .goods_tab_tit li').click(function(e){
							e.preventDefault();
							var cateCd = "006";
							switch ($(this).find("a").text()){
								case "정기배송" :
									cateCd = "006";
									break;
								case "포켓샐러드" :
									cateCd = "002";
									break;
								case "포켓라이스" :
									cateCd = "003";
									break;
								case "포켓닭" :
									cateCd = "004";
									break;
								case "음료&간식" :
									cateCd = "005";
									break;
								case "식단세트" :
									cateCd = "006";
									break;
								default :
									cateCd = "006";
							}
							$(".devMoreLink").html('<a href="../goods/goods_list.jsp?cateCd='+cateCd+'">'+$(this).find("a").text()+' 식단 보기</a>');

						});
					});
					//-->
				</script>
        </div>
        <div class="goods_tab_box ">
            <ul>
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000376&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000376/1000000376_main_086.jpg" width="570" alt="하루에 한 끼를 샐러드로 5일" title="하루에 한 끼를 샐러드로 5일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000376"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000376&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">하루에 한 끼를 샐러드로 5일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>25%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        23,350<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=109&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/109/109_main_061.jpg" width="570" alt="하루에 두 끼를 샐러드로 5일" title="하루에 두 끼를 샐러드로 5일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="109"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=109&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">하루에 두 끼를 샐러드로 5일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>25%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        46,500<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=1000000379&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/03/10/1000000379/1000000379_main_011.jpg" width="570" alt="샐러드와 닭가슴살로 5일" title="샐러드와 닭가슴살로 5일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="1000000379"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=1000000379&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">샐러드와 닭가슴살로 5일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>31%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        35,250<i class="won">원</i>
                                    </span>
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
                <li  style="width:25%;">
                    <div class="item_cont">
                        <div class="item_photo_box" >
                            <a href="../goods/goods_view.jsp?goodsNo=243&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En" alt="">
                                <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/06/05/243/243_main_049.png" width="570" alt="샐러드와 간편식으로 5일" title="샐러드와 간편식으로 5일" class="middle"  />
                            </a>
							<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_3 btn_open_layer" data-mode="cartIn" data-goods-no="243"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                        </div>
						<span class="best-icon">
							
						</span>

                        <!-- //item_photo_box -->
                        <div class="item_info_cont">
                            <div class="item_tit_box">
                                <a href="../goods/goods_view.jsp?goodsNo=243&mtn=3%5E%7C%5E%EB%82%98%EC%97%90%EA%B2%8C+%EB%A7%9E%EB%8A%94+%EC%A0%95%EA%B8%B0%EB%B0%B0%EC%86%A1%EC%9D%80%3F%5E%7C%5En">
                                    <strong class="item_name">샐러드와 간편식으로 5일</strong>
                                </a>
                            </div>
                            <!-- //item_tit_box -->
                            <div class="item_money_box">
								<!-- 할인퍼센트 S-->
								<div class="per_wrap">
                                        <span class="item_discount"><em>27%</em></span>
								</div>
								<!-- 할인퍼센트 E-->
								<div class="all_price">


                                <strong class="item_price">
                                    <span  style="">
                                        40,750<i class="won">원</i>
                                    </span>
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
            </ul>

					<div class="main_deli_pdt_morebtn devMoreLink">
						<a href="../goods/goods_list.jsp?cateCd=001">정기배송 더보기</a>
					</div>

					<script type="text/javascript">
					<!--
					$(document).ready(function() {
						$('.tab_goods_3 .goods_tab_tit li').click(function(e){
							e.preventDefault();
							var cateCd = "006";
							switch ($(this).find("a").text()){
								case "정기배송" :
									cateCd = "006";
									break;
								case "포켓샐러드" :
									cateCd = "002";
									break;
								case "포켓라이스" :
									cateCd = "003";
									break;
								case "포켓닭" :
									cateCd = "004";
									break;
								case "음료&간식" :
									cateCd = "005";
									break;
								case "식단세트" :
									cateCd = "006";
									break;
								default :
									cateCd = "006";
							}
							$(".devMoreLink").html('<a href="../goods/goods_list.jsp?cateCd='+cateCd+'">'+$(this).find("a").text()+' 식단 보기</a>');

						});
					});
					//-->
				</script>
        </div>
    </div>
    <!-- //goods_tab_cont -->
</div>
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
<!-- //item_vl_tab_type -->
<script type="text/javascript">
    <!--
    $(document).ready(function() {
        $('.tab_goods_3 .goods_tab_tit li').click(function(e){
            e.preventDefault();
            $(this).addClass('on').siblings().removeClass('on');	//탭버튼에 on클래스 주기
//                if ($('.tab_goods_3 .goods_tab_cont > .goods_tab_box').eq($(this).index()).length == 0) {
//                    $('.tab_goods_3 .goods_tab_cont > .goods_tab_box').removeClass('on');
//                }
            $('.tab_goods_3 .goods_tab_cont > .goods_tab_box').eq($(this).index()).addClass('on').siblings().removeClass('on');	//해당 탭 내용 열고 나머지 닫기
        });
    });
    //-->
</script>




<!-- //cart template -->
<script type="text/javascript">
    <!--
    $(document).ready(function(){
        $('.item_photo_box').on('click', '.btn_add_wish_3', function(){
            alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
            document.location.href = "../member/login.jsp";
            return false;
        });

        $('.item_photo_box').on('click', '.btn_add_cart_3', function(){
            if($(this).data('mode') == 'cartIn') {
                var params = {
                    page: 'goods',
                    type: 'goods',
                    goodsNo: $(this).data('goods-no'),
                    mainSno : '3',
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


	<!-- 메인 카테고리 베스트 끝-->


    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue3 = '3';
    var key3 = {
        html: 'html' + keyValue3,
        page: 'page' + keyValue3
    };
    var gdStorage3 = loadSession(key3.html);
    var page3 = loadSession(key3.page);
    $(document).ready(function() {
        if (gdStorage3) {
            $('.goods_content_3').html(gdStorage3);
            if (page3) {
                $('.main_wrap_3 .btn_goods_view_down_more').attr('data-page',page3);
            }
        }
        $('.main_wrap_3 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_3($(this).data('page'));
        });
    });

    function gd_get_list_3(page) {
        $.get('../goods/goods_main.jsp', {'mode' : 'get_main', 'more' : page, 'sno' : '3', 'groupSno' : ''}, function (data) {
            $(".goods_content_3").html(data);
            saveSession(key3.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_3 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key3.page, parseInt(page)+1);
                $('.main_wrap_3 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>
<!-- 메인 상품 노출 -->
		</div>
	</div>
</div>

<div class="m_t100 a" >
	<div class="main_recommend">
		<div class="in">
			<!-- 메인 상품 노출 --><!-- [위젯] 메인 상품 출력 -->

<div class="goods_list main_wrap_2">
    <div class="goods_list_tit">
        <h3>처음이라면, 맛보기 어때요?</h3>
        <div class="btn_goods_more">


            <a href="../goods/goods_main.jsp?sno=2" class="btn_goods_view_more">더보기</a>

        </div>
    </div>
    <div class="goods_list_cont goods_content_2">
<!-- 상품이동형 -->


<!-- 메인 첫 구매추천 일 때 S -->
<div class="item_slide_horizontal" >
    <ul class="slide_horizontal_2">
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000129&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/11/46/1000000129/1000000129_main_082.jpg" width="570" alt="데일리 닭가슴살 샐러드 5종 맛보기" title="데일리 닭가슴살 샐러드 5종 맛보기" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="1000000129"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000129&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">데일리 닭가슴살 샐러드 5종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>23%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                34,100<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            44,300원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 185</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=540&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/09/14/540/540_main_021.jpg" width="570" alt="베스트 샐러드 6종 맛보기" title="베스트 샐러드 6종 맛보기" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="540"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=540&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">베스트 샐러드 6종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>23%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                38,400<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            49,600원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 451</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=222&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/02/13/222/222_main_090.jpg" width="570" alt="시즌1 가벼운 탄단지 라이스 6종 혼합" title="시즌1 가벼운 탄단지 라이스 6종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="222"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=222&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">시즌1 가벼운 탄단지 라이스 6종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>22%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                28,500<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            36,700원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 406</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=392&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/07/392/392_main_025.jpg" width="570" alt="닭가슴살 소시지 3종 혼합" title="닭가슴살 소시지 3종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="392"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=392&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">닭가슴살 소시지 3종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>27%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                7,700<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            10,500원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 59</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000408&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/05/19/1000000408/1000000408_main_053.jpg" width="570" alt="테이스티 샐러드 5종 맛보기" title="테이스티 샐러드 5종 맛보기" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="1000000408"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000408&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">테이스티 샐러드 5종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>21%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                42,300<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            53,400원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 59</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=481&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/25/481/481_main_077.jpg" width="570" alt="그릴 닭가슴살볼 3종 혼합" title="그릴 닭가슴살볼 3종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="481"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=481&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">그릴 닭가슴살볼 3종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>24%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                8,000<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            10,500원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 80</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=145&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/18/09/13/145/145_main_087.jpg" width="570" alt="미니컵밥 5종 혼합" title="미니컵밥 5종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="145"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=145&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">미니컵밥 5종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>34%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                18,300<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            27,700원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 208</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=75&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/16/07/14/75/75_main_077.jpg" width="570" alt="데일리 샐러드 10종 맛보기" title="데일리 샐러드 10종 맛보기" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="75"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=75&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">데일리 샐러드 10종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>23%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                69,300<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            89,500원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 684</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000271&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/04/17/1000000271/1000000271_main_034.jpg" width="570" alt="두부파스타 4종 혼합" title="두부파스타 4종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="1000000271"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000271&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">두부파스타 4종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>23%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                19,500<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            25,200원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 55</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000261&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/04/15/1000000261/1000000261_main_04.jpg" width="570" alt="시즌3 곤약 라이스 6종 혼합" title="시즌3 곤약 라이스 6종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="1000000261"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000261&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">시즌3 곤약 라이스 6종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>24%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                28,700<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            37,700원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 75</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=399&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/07/399/399_main_087.jpg" width="570" alt="닭가슴살 만두 2종 혼합" title="닭가슴살 만두 2종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="399"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=399&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">닭가슴살 만두 2종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>41%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                4,700<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            8,000원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 105</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=444&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/10/444/444_main_039.jpg" width="570" alt="닭가슴살 슬라이스 3종 혼합" title="닭가슴살 슬라이스 3종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_2 btn_open_layer" data-mode="cartIn" data-goods-no="444"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					<img src="/data/icon/goods_icon/icon_리뉴얼2.png"  alt="리뉴얼" title="리뉴얼" class="middle"  /> 
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=444&mtn=2%5E%7C%5E%EC%B2%98%EC%9D%8C%EC%9D%B4%EB%9D%BC%EB%A9%B4%2C+%EB%A7%9B%EB%B3%B4%EA%B8%B0+%EC%96%B4%EB%95%8C%EC%9A%94%3F%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">닭가슴살 슬라이스 3종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>26%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                8,000<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            10,800원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 24</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
    </ul>
</div>

<!-- //item_slide_horizontal -->
<script type="text/javascript">
    <!--
    $(document).ready(function(){

        $('.item_slide_horizontal .slide_horizontal_2')
            .on('init', function(){
            }).slick({
                draggable : false,
                autoplay: true,
                infinite: true,
				variableWidth:true,
                slidesToShow: 4,
                slidesToScroll: 1
            }).on('beforeChange', function(){
            });
    });
    //-->
</script>

<!-- 메인 첫 구매추천 일 때 E -->

    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue2 = '2';
    var key2 = {
        html: 'html' + keyValue2,
        page: 'page' + keyValue2
    };
    var gdStorage2 = loadSession(key2.html);
    var page2 = loadSession(key2.page);
    $(document).ready(function() {
        if (gdStorage2) {
            $('.goods_content_2').html(gdStorage2);
            if (page2) {
                $('.main_wrap_2 .btn_goods_view_down_more').attr('data-page',page2);
            }
        }
        $('.main_wrap_2 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_2($(this).data('page'));
        });
    });

    function gd_get_list_2(page) {
        $.get('../goods/goods_main.jsp', {'mode' : 'get_main', 'more' : page, 'sno' : '2', 'groupSno' : ''}, function (data) {
            $(".goods_content_2").html(data);
            saveSession(key2.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_2 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key2.page, parseInt(page)+1);
                $('.main_wrap_2 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>
<!-- 메인 상품 노출 -->
		</div>
	</div>
</div>

<div class="main_top_wrap m_t0">
	<div class="main_top">
		<div class="main_top_ban01">
<a href="https://www.pocketsalad.co.kr/board/view.jsp?period=current&bdId=event&sno=23" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/9a96392ec5849d37ce982123afdc0891_35268.jpg"  alt="메인 중간 배너1" title="메인 중간 배너1"   /></a>		</div>
		<div class="main_top_ban02">
<a href="/board/view.jsp?period=all&bdId=event&sno=6" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/dce1d220e8cbf61026328b7914e1875b_98321.jpg"  alt="메인중간배너2" title="메인중간배너2"   /></a>		</div>
	</div>
</div>


<div class="m_t100 a">
	<div class="main_recommend">
		<div class="in">
			<!-- 메인 상품 노출 --><!-- [위젯] 메인 상품 출력 -->

<div class="goods_list main_wrap_22">
    <div class="goods_list_tit">
        <h3>새로 나왔어요 !</h3>
        <div class="btn_goods_more">


            <a href="../goods/goods_main.jsp?sno=22" class="btn_goods_view_more">더보기</a>

        </div>
    </div>
    <div class="goods_list_cont goods_content_22">
<!-- 상품이동형 -->


<!-- 메인 첫 구매추천 일 때 S -->
<div class="item_slide_horizontal" >
    <ul class="slide_horizontal_22">
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000408&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/05/19/1000000408/1000000408_main_053.jpg" width="570" alt="테이스티 샐러드 5종 맛보기" title="테이스티 샐러드 5종 맛보기" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_22 btn_open_layer" data-mode="cartIn" data-goods-no="1000000408"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000408&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">테이스티 샐러드 5종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>21%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                42,300<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            53,400원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 59</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000403&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/05/19/1000000403/1000000403_main_082.jpg" width="570" alt="멕시칸 타코 샐러드" title="멕시칸 타코 샐러드" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_22 btn_open_layer" data-mode="cartIn" data-goods-no="1000000403"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					<img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000403&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">멕시칸 타코 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>21%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                8,500<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            10,700원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 19</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000404&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/05/19/1000000404/1000000404_main_023.jpg" width="570" alt="갈릭페퍼 로스트 닭다리살 샐러드" title="갈릭페퍼 로스트 닭다리살 샐러드" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_22 btn_open_layer" data-mode="cartIn" data-goods-no="1000000404"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					<img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000404&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">갈릭페퍼 로스트 닭다리살 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>19%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                8,900<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            11,000원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

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
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000405&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/05/19/1000000405/1000000405_main_010.jpg" width="570" alt="레드칠리 로스트 닭가슴살 샐러드" title="레드칠리 로스트 닭가슴살 샐러드" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_22 btn_open_layer" data-mode="cartIn" data-goods-no="1000000405"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					<img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000405&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">레드칠리 로스트 닭가슴살 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>19%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                8,300<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            10,300원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 13</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000406&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/05/19/1000000406/1000000406_main_035.jpg" width="570" alt="이탈리안 더블 햄 샐러드" title="이탈리안 더블 햄 샐러드" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_22 btn_open_layer" data-mode="cartIn" data-goods-no="1000000406"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					<img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000406&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">이탈리안 더블 햄 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>20%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                8,200<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            10,200원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 11</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000407&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/22/05/19/1000000407/1000000407_main_069.jpg" width="570" alt="페퍼콘 닭가슴살 샐러드" title="페퍼콘 닭가슴살 샐러드" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_22 btn_open_layer" data-mode="cartIn" data-goods-no="1000000407"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					<img src="https://atowertr6856.cdn-nhncommerce.com/data/icon/goods_icon/icon_16.png"  alt="NEW 테이스티 샐러드" title="NEW 테이스티 샐러드" class="middle"  /> 
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000407&mtn=22%5E%7C%5E%EC%83%88%EB%A1%9C+%EB%82%98%EC%99%94%EC%96%B4%EC%9A%94+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">페퍼콘 닭가슴살 샐러드</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>21%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                8,900<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            11,200원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

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
    </ul>
</div>

<!-- //item_slide_horizontal -->
<script type="text/javascript">
    <!--
    $(document).ready(function(){

        $('.item_slide_horizontal .slide_horizontal_22')
            .on('init', function(){
            }).slick({
                draggable : false,
                autoplay: true,
                infinite: true,
				variableWidth:true,
                slidesToShow: 4,
                slidesToScroll: 1
            }).on('beforeChange', function(){
            });
    });
    //-->
</script>

<!-- 메인 첫 구매추천 일 때 E -->

    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue22 = '22';
    var key22 = {
        html: 'html' + keyValue22,
        page: 'page' + keyValue22
    };
    var gdStorage22 = loadSession(key22.html);
    var page22 = loadSession(key22.page);
    $(document).ready(function() {
        if (gdStorage22) {
            $('.goods_content_22').html(gdStorage22);
            if (page22) {
                $('.main_wrap_22 .btn_goods_view_down_more').attr('data-page',page22);
            }
        }
        $('.main_wrap_22 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_22($(this).data('page'));
        });
    });

    function gd_get_list_22(page) {
        $.get('../goods/goods_main.jsp', {'mode' : 'get_main', 'more' : page, 'sno' : '22', 'groupSno' : ''}, function (data) {
            $(".goods_content_22").html(data);
            saveSession(key22.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_22 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key22.page, parseInt(page)+1);
                $('.main_wrap_22 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>
<!-- 메인 상품 노출 -->
		</div>
	</div>
</div>

<div class="m_t0">
	<div class="main_foodset">
		<div class="in">
			<!-- [위젯] 메인 상품 출력 -->

<div class="goods_list main_wrap_16">
    <div class="goods_list_tit">
        <h3>쏙쏙! 한 팩 골라담기</h3>
    </div>
    <div class="goods_list_cont goods_content_16">
<!-- 장바구니형 -->
<!-- 메인일때 -->


		<div class="item_basket_type">
    <ul>
        <li  style="width:100%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000140&mtn=16%5E%7C%5E%EC%8F%99%EC%8F%99%21+%ED%95%9C+%ED%8C%A9+%EA%B3%A8%EB%9D%BC%EB%8B%B4%EA%B8%B0%5E%7C%5En" >
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/11/47/1000000140/1000000140_add4_066.jpg" width="278" alt="샐러드 17종 골라담기" title="샐러드 17종 골라담기" class="middle"  />

                    </a>

					<span class="best-icon">
					
					</span>

                    <div class="item_link">
                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_16 btn_open_layer" data-mode="cartIn" data-goods-no="1000000140"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000140&mtn=16%5E%7C%5E%EC%8F%99%EC%8F%99%21+%ED%95%9C+%ED%8C%A9+%EA%B3%A8%EB%9D%BC%EB%8B%B4%EA%B8%B0%5E%7C%5En">
                            <strong class="item_name">샐러드 17종 골라담기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
						<div class="per_wrap">
								<span class="item_discount"><em>24%</em></span>
						</div>
                        <strong class="item_price">
                            <span  style="">
								4,700<i class="won">원</i>
							</span>
                        </strong>
                        <span  class="dc_price"  style="">6,200원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 1493</span>
                    </div>
                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li  style="width:100%;">
             <div class="item_cont">
                <div class="item_photo_box" >
                    <a href="../goods/goods_view.jsp?goodsNo=1000000285&mtn=16%5E%7C%5E%EC%8F%99%EC%8F%99%21+%ED%95%9C+%ED%8C%A9+%EA%B3%A8%EB%9D%BC%EB%8B%B4%EA%B8%B0%5E%7C%5En" >
							<img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/05/19/1000000285/1000000285_add4_016.jpg" width="278" alt="간편식 27종 골라담기" title="간편식 27종 골라담기" class="middle"  />

                    </a>

					<span class="best-icon">
					
					</span>

                    <div class="item_link">
                        <button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_16 btn_open_layer" data-mode="cartIn" data-goods-no="1000000285"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                    </div>
                    <!-- //item_link -->
                </div>
                <!-- //item_photo_box -->
                <div class="item_info_cont">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000285&mtn=16%5E%7C%5E%EC%8F%99%EC%8F%99%21+%ED%95%9C+%ED%8C%A9+%EA%B3%A8%EB%9D%BC%EB%8B%B4%EA%B8%B0%5E%7C%5En">
                            <strong class="item_name">간편식 27종 골라담기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
						<div class="per_wrap">
								<span class="item_discount"><em>36%</em></span>
						</div>
                        <strong class="item_price">
                            <span  style="">
								3,500<i class="won">원</i>
							</span>
                        </strong>
                        <span  class="dc_price"  style="">5,500원 </span>
                    </div>
                    <!-- //item_money_box -->
                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->

                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 518</span>
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
        $('.item_photo_box').on('click', '.btn_add_wish_16', function(){
            alert("로그인하셔야 본 서비스를 이용하실 수 있습니다.");
            document.location.href = "../member/login.jsp";
            return false;
        });

        $('.item_photo_box').on('click', '.btn_add_cart_16', function(){
            if($(this).data('mode') == 'cartIn') {
                var params = {
                    page: 'goods',
                    type: 'goods',
                    goodsNo: $(this).data('goods-no'),
                    mainSno : '16',
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




    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue16 = '16';
    var key16 = {
        html: 'html' + keyValue16,
        page: 'page' + keyValue16
    };
    var gdStorage16 = loadSession(key16.html);
    var page16 = loadSession(key16.page);
    $(document).ready(function() {
        if (gdStorage16) {
            $('.goods_content_16').html(gdStorage16);
            if (page16) {
                $('.main_wrap_16 .btn_goods_view_down_more').attr('data-page',page16);
            }
        }
        $('.main_wrap_16 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_16($(this).data('page'));
        });
    });

    function gd_get_list_16(page) {
        $.get('../goods/goods_main.jsp', {'mode' : 'get_main', 'more' : page, 'sno' : '16', 'groupSno' : ''}, function (data) {
            $(".goods_content_16").html(data);
            saveSession(key16.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_16 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key16.page, parseInt(page)+1);
                $('.main_wrap_16 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>

		</div>
	</div>
</div>

<!-- //main_goods_cont -->
<div class="m_t40 a">
	<div class="main_recommend">
		<div class="in">
				<!-- 메인 상품 노출 --><!-- [위젯] 메인 상품 출력 -->

<div class="goods_list main_wrap_10">
    <div class="goods_list_tit">
        <h3>간식도 건강하게 !</h3>
        <div class="btn_goods_more">


            <a href="../goods/goods_main.jsp?sno=10" class="btn_goods_view_more">더보기</a>

        </div>
    </div>
    <div class="goods_list_cont goods_content_10">
<!-- 상품이동형 -->


<!-- 메인 첫 구매추천 일 때 S -->
<div class="item_slide_horizontal" >
    <ul class="slide_horizontal_10">
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=239&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/05/08/239/239_main_085.jpg" width="570" alt="포켓 리얼요거트" title="포켓 리얼요거트" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_10 btn_open_layer" data-mode="cartIn" data-goods-no="239"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=239&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">포켓 리얼요거트</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>29%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                2,900<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            4,100원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 115</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=120&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/17/12/06/120/120_main_086.jpg" width="570" alt="한입 밤고구마" title="한입 밤고구마" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_10 btn_open_layer" data-mode="cartIn" data-goods-no="120"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=120&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">한입 밤고구마</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>27%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                2,900<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            4,000원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 112</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=129&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/18/04/24/129/129_main_092.jpg" width="570" alt="포켓 구운란" title="포켓 구운란" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_10 btn_open_layer" data-mode="cartIn" data-goods-no="129"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=129&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">포켓 구운란</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>30%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                1,900<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            2,700원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 51</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=304&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/12/04/304/304_main_024.jpg" width="570" alt="훈제 메추리알 1박스(10개)" title="훈제 메추리알 1박스(10개)" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_10 btn_open_layer" data-mode="cartIn" data-goods-no="304"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=304&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">훈제 메추리알 1박스(10개)</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>23%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                11,900<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            15,500원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 67</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000068&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/10/44/1000000068/1000000068_main_015.jpg" width="570" alt="매콤 메추리알 1박스(10개)" title="매콤 메추리알 1박스(10개)" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_10 btn_open_layer" data-mode="cartIn" data-goods-no="1000000068"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000068&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">매콤 메추리알 1박스(10개)</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>23%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                11,900<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            15,500원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 41</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=235&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/05/08/235/235_main_064.jpg" width="570" alt="포켓 감말랭이" title="포켓 감말랭이" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_10 btn_open_layer" data-mode="cartIn" data-goods-no="235"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=235&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">포켓 감말랭이</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>25%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                2,700<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            3,600원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 18</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=231&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/19/05/08/231/231_main_068.jpg" width="570" alt="포켓 아이스홍시" title="포켓 아이스홍시" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_10 btn_open_layer" data-mode="cartIn" data-goods-no="231"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=231&mtn=10%5E%7C%5E%EA%B0%84%EC%8B%9D%EB%8F%84+%EA%B1%B4%EA%B0%95%ED%95%98%EA%B2%8C+%21%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">포켓 아이스홍시</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>26%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                1,700<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            2,300원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 40</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
    </ul>
</div>

<!-- //item_slide_horizontal -->
<script type="text/javascript">
    <!--
    $(document).ready(function(){

        $('.item_slide_horizontal .slide_horizontal_10')
            .on('init', function(){
            }).slick({
                draggable : false,
                autoplay: true,
                infinite: true,
				variableWidth:true,
                slidesToShow: 4,
                slidesToScroll: 1
            }).on('beforeChange', function(){
            });
    });
    //-->
</script>

<!-- 메인 첫 구매추천 일 때 E -->

    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue10 = '10';
    var key10 = {
        html: 'html' + keyValue10,
        page: 'page' + keyValue10
    };
    var gdStorage10 = loadSession(key10.html);
    var page10 = loadSession(key10.page);
    $(document).ready(function() {
        if (gdStorage10) {
            $('.goods_content_10').html(gdStorage10);
            if (page10) {
                $('.main_wrap_10 .btn_goods_view_down_more').attr('data-page',page10);
            }
        }
        $('.main_wrap_10 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_10($(this).data('page'));
        });
    });

    function gd_get_list_10(page) {
        $.get('../goods/goods_main.jsp', {'mode' : 'get_main', 'more' : page, 'sno' : '10', 'groupSno' : ''}, function (data) {
            $(".goods_content_10").html(data);
            saveSession(key10.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_10 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key10.page, parseInt(page)+1);
                $('.main_wrap_10 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>
<!-- 메인 상품 노출 -->
		</div>
	</div>
</div>


<div class="m_t10 a">
	<div class="main_recommend">
		<div class="in">
			<!-- 메인 상품 노출 --><!-- [위젯] 메인 상품 출력 -->

<div class="goods_list main_wrap_25">
    <div class="goods_list_tit">
        <h3>닭가슴살로 든든함을 더해봐요</h3>
        <div class="btn_goods_more">


            <a href="../goods/goods_main.jsp?sno=25" class="btn_goods_view_more">더보기</a>

        </div>
    </div>
    <div class="goods_list_cont goods_content_25">
<!-- 상품이동형 -->


<!-- 메인 첫 구매추천 일 때 S -->
<div class="item_slide_horizontal" >
    <ul class="slide_horizontal_25">
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=444&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/10/444/444_main_039.jpg" width="570" alt="닭가슴살 슬라이스 3종 혼합" title="닭가슴살 슬라이스 3종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_25 btn_open_layer" data-mode="cartIn" data-goods-no="444"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					<img src="/data/icon/goods_icon/icon_리뉴얼2.png"  alt="리뉴얼" title="리뉴얼" class="middle"  /> 
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=444&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">닭가슴살 슬라이스 3종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>26%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                8,000<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            10,800원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 24</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=1000000286&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/21/05/20/1000000286/1000000286_main_029.jpg" width="570" alt="포켓닭 11종 골라담기" title="포켓닭 11종 골라담기" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_25 btn_open_layer" data-mode="cartIn" data-goods-no="1000000286"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=1000000286&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">포켓닭 11종 골라담기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>40%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                2,400<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            4,000원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 88</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=539&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/09/11/539/539_main_078.jpg" width="570" alt="포켓닭 11종 맛보기" title="포켓닭 11종 맛보기" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_25 btn_open_layer" data-mode="cartIn" data-goods-no="539"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=539&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">포켓닭 11종 맛보기</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>29%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                28,300<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            39,800원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 35</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=399&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/07/399/399_main_087.jpg" width="570" alt="닭가슴살 만두 2종 혼합" title="닭가슴살 만두 2종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_25 btn_open_layer" data-mode="cartIn" data-goods-no="399"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=399&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">닭가슴살 만두 2종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>41%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                4,700<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            8,000원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 105</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=392&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/07/392/392_main_025.jpg" width="570" alt="닭가슴살 소시지 3종 혼합" title="닭가슴살 소시지 3종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_25 btn_open_layer" data-mode="cartIn" data-goods-no="392"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=392&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">닭가슴살 소시지 3종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>27%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                7,700<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            10,500원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 59</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=481&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/08/25/481/481_main_077.jpg" width="570" alt="그릴 닭가슴살볼 3종 혼합" title="그릴 닭가슴살볼 3종 혼합" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_25 btn_open_layer" data-mode="cartIn" data-goods-no="481"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=481&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">그릴 닭가슴살볼 3종 혼합</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>24%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                8,000<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            10,500원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 80</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=371&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/07/28/371/371_main_090.jpg" width="570" alt="닭가슴살 소시지 구운마늘" title="닭가슴살 소시지 구운마늘" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_25 btn_open_layer" data-mode="cartIn" data-goods-no="371"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=371&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">닭가슴살 소시지 구운마늘</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>26%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                2,600<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            3,500원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

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
        <li >
            <div class="item_cont" style="text-align:center;">
                <div class="item_photo_box" >

                    <a href="../goods/goods_view.jsp?goodsNo=375&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                        <img src="https://atowertr6856.cdn-nhncommerce.com/data/goods/20/07/28/375/375_main_050.jpg" width="570" alt="닭가슴살 소시지 매콤치즈" title="닭가슴살 소시지 매콤치즈" class="middle"  />
                    </a>
					<button type="button" href="#optionViewLayer" class="btn_basket_cart btn_add_cart_25 btn_open_layer" data-mode="cartIn" data-goods-no="375"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/main/main_pdt_cart_icn.png" alt=""><span>장바구니</span></button>
                </div>

				<span class="best-icon">
					
				</span>


                <!-- //item_photo_box -->
                <div class="item_info_cont" style="display:block; text-align: center;">
                    <div class="item_tit_box">
                        <a href="../goods/goods_view.jsp?goodsNo=375&mtn=25%5E%7C%5E%EB%8B%AD%EA%B0%80%EC%8A%B4%EC%82%B4%EB%A1%9C+%EB%93%A0%EB%93%A0%ED%95%A8%EC%9D%84+%EB%8D%94%ED%95%B4%EB%B4%90%EC%9A%94%5E%7C%5En" >
                            <strong class="item_name" style="direction:ltr;">닭가슴살 소시지 매콤치즈</strong>
                        </a>
                    </div>
                    <!-- //item_tit_box -->
                    <div class="item_money_box">
					
						<!-- 할인퍼센트 S-->
							<div class="per_wrap">
    							<span class="item_discount"><em>26%</em></span>
							</div>
						<!-- 할인퍼센트 E-->

						<div class="all_price">

                        <strong class="item_price">
                            <span  style=''>
                                2,600<i class="won">원</i>
                            </span>
                            
                        </strong>
                        <span class="d_price" style=";">
                            3,500원 </span>

						<!-- //item_money_box -->
						</div>
                    </div>

                    <!-- //item_number_box -->
                    <div class="item_icon_box">
                    </div>
                    <!-- //item_icon_box -->


                    <div class="item_review_count">
                        <span class="review_count"><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/icon/review_60x63_02.png"> 23</span>
                    </div>

                </div>
                <!-- //item_info_cont -->
            </div>
            <!-- //item_cont -->
        </li>
    </ul>
</div>

<!-- //item_slide_horizontal -->
<script type="text/javascript">
    <!--
    $(document).ready(function(){

        $('.item_slide_horizontal .slide_horizontal_25')
            .on('init', function(){
            }).slick({
                draggable : false,
                autoplay: true,
                infinite: true,
				variableWidth:true,
                slidesToShow: 4,
                slidesToScroll: 1
            }).on('beforeChange', function(){
            });
    });
    //-->
</script>

<!-- 메인 첫 구매추천 일 때 E -->

    </div>
</div>


<script type="text/javascript">
    <!--
    var keyValue25 = '25';
    var key25 = {
        html: 'html' + keyValue25,
        page: 'page' + keyValue25
    };
    var gdStorage25 = loadSession(key25.html);
    var page25 = loadSession(key25.page);
    $(document).ready(function() {
        if (gdStorage25) {
            $('.goods_content_25').html(gdStorage25);
            if (page25) {
                $('.main_wrap_25 .btn_goods_view_down_more').attr('data-page',page25);
            }
        }
        $('.main_wrap_25 .btn_goods_view_down_more').on('click', function(e){
            gd_get_list_25($(this).data('page'));
        });
    });

    function gd_get_list_25(page) {
        $.get('../goods/goods_main.jsp', {'mode' : 'get_main', 'more' : page, 'sno' : '25', 'groupSno' : ''}, function (data) {
            $(".goods_content_25").html(data);
            saveSession(key25.html, data);
            if (parseInt(page) + 1 > 1) {
                $('.main_wrap_25 .btn_goods_view_down_more').hide();
            } else {
                saveSession(key25.page, parseInt(page)+1);
                $('.main_wrap_25 .btn_goods_view_down_more').data('page', parseInt(page) + 1);
            }
        });
    }
    //-->
</script>
<!-- 메인 상품 노출 -->
		</div>
	</div>
</div>

<div class="m_t0">
	<div class="main_long_bn">
		<div class="in">
<a href="http://pocketsalad.co.kr/board/view.jsp?&bdId=notice&sno=71" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/f38ff25bb009847898cab6c732fb8458_12349.jpg"  alt="새벽배송안내" title="새벽배송안내"   /></a>		</div>
	</div>
</div>
<div class="m_t40">
	<div class="main_long_bn">
		<div class="in">
<a href="http://atowertr6856.godomall.com/board/view.jsp?period=all&bdId=event&sno=5" ><img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/img/banner/febe7ba93d97b77be306ceb2aa250171_96342.jpg"  alt="메인 하단 긴배너" title="메인 하단 긴배너"   /></a>		</div>
	</div>
</div>


<!-- cs하단 -->
<div class="cs_bottom_con">
	<div class="cs_bottom_in">
		<div class="content_info_wrap">
			<div class="content_info">
				<div class="cs_center">
					<h3>고객센터</h3>
					<strong>1833-5722</strong>
					<p class="cs_center_day">월 ~ 금 : 오전 10시 ~ 오후 4시<br />
점심시간 : 오후 12시 30분 ~ 오후 1시 30분<br />
토요일/일요일/공휴일은 휴무 입니다.</p>
					<p class="under_etc">고객센터가 종료된 4시 이후와 토요일/일요일/공휴일에는 1:1 문의 게시판을 이용바랍니다.</p>
					<ul class="cs_right_btns">
						<li><a href="../mypage/mypage_qa.jsp"><i></i><span>1:1문의</span></a></li>
						<li><a href="../mypage/order_list.jsp"><i></i><span>배송조회</span></a></li>
					</ul>
				</div>
				<!-- //cs_center -->
				<div class="bank_info">
					<h3>입금 계좌 안내</h3>
					<p>예금주 : (주)에이타워</p>


<div><b>
			신한은행
</b><span>100031681034</span></div><div><b>
			농협은행
</b><span>3010197022371</span></div><div><b>
			국민은행
</b><span>43183701013928</span></div><div><b>
			우리은행
</b><span>1005003043705</span></div>
				</div>
				<!-- //bank_info -->

				<!-- //notice_list -->
				<div class="foot_notice_scroll">
					<h3>공지사항</h3><div class="more-btn"><a href="../board/list.jsp?&bdId=notice">더보기</a></div>
					<!--스크롤 게시글 시작-->
						<ul>
		<li>
			<a href="../board/view.jsp?bdId=notice&sno=98"><b>[결제관련이슈] 네이버 페이 결제 이슈 사항 건 <span></span></b>
		   <span class="wrt">관리자</span><em class="date">2022.10.19</em></a>
		</li>
		<li>
			<a href="../board/view.jsp?bdId=notice&sno=97"><b>닭가슴살 슬라이스 3종 리뉴얼 출시 <span></span></b>
		   <span class="wrt">관리자</span><em class="date">2022.10.09</em></a>
		</li>
		<li>
			<a href="../board/view.jsp?bdId=notice&sno=96"><b>포켓샐러드 메뉴 가격 인상 안내 <span></span></b>
		   <span class="wrt">관리자</span><em class="date">2022.10.04</em></a>
		</li>
		<li>
			<a href="../board/view.jsp?bdId=notice&sno=94"><b>2022 개천절&한글날 배송 일정 안내 <span></span></b>
		   <span class="wrt">관리자</span><em class="date">2022.09.28</em></a>
		</li>
	</ul>

					<!--스크롤 게시글 끝-->
				</div>
			</div>
			<!-- //content_info -->
		</div>
	</div>

</div>
<!-- cs하단 -->
<!-- //main_cont_slide_ban -->
<script>
	$(document).ready(function(){
		mainBanListLeftTop = $('.main_ban_list_right .goods_list_tit').innerHeight();

		$('.main_ban_list_left').css({'top': mainBanListLeftTop+40});
	})
</script>

<!-- Doyouad Start 삭제 하지 마세요. -->
<script type="text/javascript">
(function (w, d, s, n, t) {n = d.createElement(s);n.type = "text/javascript";n.setAttribute("id", "doyouadScript");n.setAttribute("data-user", "pocketsalad");n.setAttribute("data-page", "view");n.async = !0;n.defer = !0;n.src = "https://cdn.doyouad.com/js/dyadTracker.js?v=" + new Date().toISOString().slice(0, 10).replace(/-/g, "");t = d.getElementsByTagName(s)[0];t.parentNode.insertBefore(n, t);})(window, document, "script");
</script>
<!-- Doyouad End -->

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

</body>.
</html>