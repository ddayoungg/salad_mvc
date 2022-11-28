<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
    <title>샐러드월드 - 내가 찾던 식단관리!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="신선한 샐러드를 언제 어디서나 간편하게 즐기는 포켓샐러드! 라이스&포켓닭까지 함께 즐겨보세요" />
    <meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트도시락, 포켓닭, 탄단지, 다이어트, 다이어트식단, 식단관리" />
    <meta name="csrf-token" content="MTY2NjgwMTQxMTEyMDY0MzUwNzA5NTQzMTI4NjEzMDI3NDY3MzA2ODk4" />


    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/board/popup_goods_board_write.jsp?mode=write&amp;bdId=goodsqa&amp;goodsNo=68&amp;orderGoodsNo=0">
    <meta property="og:description" content="내가 찾던 식단관리!">
    <meta property="og:locale" content="ko_KR">
    <meta property="og:image:width" content="160">
    <meta property="og:image:height" content="160">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="포켓샐러드">
    <meta name="twitter:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta name="twitter:description" content="내가 찾던 식단관리!">

    <link rel="icon" href="/data/common/favicon.ico" type="image/x-icon" />

    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/reset.css?ts=1647562972">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/common/common.css?ts=1659591193">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/common/layer/layer.css?ts=1666243530">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/layout/layout.css?ts=1666735347">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/goods/list.css?ts=1662515260">
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/button.css?ts=1644979979" />
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/css/board/board.css?ts=1666743613" />
    <link type="text/css" rel="stylesheet" href="http://salad.sist.co.kr/resources/js/jquery/chosen/chosen.css?ts=1662105386" />


    <script type="text/javascript">
        var json_locale_data = {"domain":"messages","locale_data":{"messages":{"":{"lang":"ATF","plural-forms":"nplurals=1; plural=0"}}}}
    </script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/gd_gettext.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/jquery.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/underscore/underscore-min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/validation/jquery.validate.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/validation/additional-methods.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/numeral/numeral.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/global/accounting.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/global/money.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/chosen/chosen.jquery.min.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/placeholder/placeholders.jquery.min.js?ts=1610501674"></script>
    <![if gt IE 8]>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/copyclipboard/clipboard.min.js?ts=1610501674"></script>
    <![endif]>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/jquery/vticker/jquery.vticker.js?ts=1610501674"></script>
    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/gd_ui.js?ts=1610501674"></script>

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

    <script type="text/javascript" src="http://salad.sist.co.kr/resources/js/gd_common.js?ts=1610501674"></script>

    <!-- Add script : start -->
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-27T01%3A23%3A32%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285754%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22popup_goods_board_write.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData="></script>
    <!-- Add script : end -->
	
	<script type="text/javascript">
	$(function(){
		$("#saveBtn").click(function(){//등록 버튼 클릭 시
	    	nullChk();//내용 입력 확인
	    })//saveBtn
	    
	    $("#closeBtn").click(function(){//등록 버튼 클릭 시
	    	window.close()//팝업 닫기
	    })//closeBtn
	})//ready

function loginChk() {
		
		var loginFlag=true;
    	
		<c:if test="${ sessionScope.userId eq null }">
			alert("로그인을 해주세요.");
			window.close();
			//location.href="http://salad.sist.co.kr/login.do";
			loginFlag= false;
		</c:if>
		
		return loginFlag;
	}//loginChk
	
	function nullChk(){
		
		if(!loginChk()){
			return;
		}//end if
		
		if($("#qnaTitle").val().trim()=="") {
			alert("제목을 입력해주세요.");
			$("#qnaTitle").val("");//화이트 스페이스 초기화
			$("#qnaTitle").focus();//커서 이동
			return;
		}//end if
		
		if($("#qnaCont").val().trim()=="") {
			alert("내용을 입력해주세요.");
			$("#qnaCont").val("");//화이트 스페이스 초기화
			$("#qnaCont").focus();//커서 이동
			return;
		}//end if
		
		save();//DB에 등록
		
	}//nullChk
	
	function save() {
		
		var params = $("#writeFrm").serialize();
		$.ajax(
		{
			url : "add_qna_write_process.do",
			data : params,
			error:function( xhr ){
				console.log(xhr.status);
			},
			success : function(xh){
				alert("상품문의 글 등록이 완료 되었습니다.");
				opener.location.reload();
				window.close();
			}
		});
	}//save
	
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
    </style>

</head>

<body class="body-board body-popup-goods-board-write pc"  >
<div class="board_write_popup">
    <div class="ly_tit"><h4>상품문의 쓰기</h4></div>
    <div class="ly_cont">
        <form id="writeFrm" name="writeFrm" action="add_qna_write_process.do" method="post" >
            <div class="scroll_box">
                <div class="top_item_photo_info">
                    <div class="item_photo_box">
                    	<input type="hidden" id="prdNum" name="prdNum" value="${ prdData.prdNum }"/>
                        <img src="http://salad.sist.co.kr/common/images/product/${ prdData.thum }" width="570"  title="${ prdData.thum }" class="middle"  />
                    </div>
                    <!-- //item_photo_view -->
                    <div class="item_info_box">
                        <h5><c:out value="${ prdData.prdName }"/></h5>
                    </div>
                </div>
                <!-- //top_item_photo_info -->
                <div class="board_write_box">
                    <table class="board_write_table">
                        <colgroup>
                            <col style="width:15%" />
                            <col style="width:85%" />
                        </colgroup>
                        <tbody>
                        <tr>
                            <th scope="row">말머리</th>
                            <td>
                                <div class="category_select">
                                    <span>상품 문의</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">작성자</th>
                            <td>
                                <c:out value="${ sessionScope.userName }"/>
                                <input type="hidden" id="name" name="name" value="${ session.name }"/>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">제목</th>
                            <td>
                                <input type="text" id="qnaTitle" name="qnaTitle" class="write_title" placeholder="제목 입력" value="" maxlength="200"/>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">내용</th>
                            <td class="wirte_editor">
                                    <!-- 해당글은 비밀글로만 작성이 됩니다. -->
                                <textarea title="내용 입력" style="width:100%; min-width:510px;" id="qnaCont" name="qnaCont" cols="50" rows="3" maxlength="200" placeholder="(내용을 입력해주세요.)"></textarea>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- //board_wirte_box -->
            </div>
            <!-- //scroll_box -->
        </form>
        <div class="btn_center_box">
            <a href="#void" id="closeBtn"><button class="btn_ly_cancel"><strong>취소</strong></button></a>
            <a href="#void" id="saveBtn" class="btn_ly_write_ok"><strong>등록</strong></a>
        </div>
    </div>
    <!-- //ly_cont -->
</div>
<!-- //layer_wrap_cont -->

<script type="text/template" class="template">
    <div class="file_upload_sec">
        <label for="attach<%-- <%=idx%> --%>"><input type="text" class="file_text" title="파일 첨부하기" readonly="readonly" /></label>
        <div class="btn_upload_box">
            <button type="button" class="btn_upload" title="찾아보기"><em>찾아보기</em></button>
            <input type="file" id="attach<%-- <%=idx%> --%>" name="upfiles[]" class="file" title="찾아보기"/>
            <span class="btn_gray_list"><button type="button" class="btn_gray_big" onclick="gd_remove_upload(this)"><span>- 삭제</span></button></span>
        </div>
    </div>
</script>
<script type="text/javascript" src="http://salad.sist.co.kr/resources/js/gd_board_write.js" charset="utf-8"></script>
<script type="text/javascript">
    var editorPath = '/data/skin/front/kaimen_pc_n/js/smart';
</script>
<script type="text/javascript" src="http://salad.sist.co.kr/resources/js/smart/js/HuskyEZCreator.js"></script>
<script type="text/javascript" src="http://salad.sist.co.kr/resources/js/smart/js/editorLoad.js"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript" src="http://salad.sist.co.kr/resources/js/naver/naverCommonInflowScript.js?Path=/board/popup_goods_board_write.jsp&amp;Referer=https://www.pocketsalad.co.kr:443&amp;AccountID=s_2dc21239d6a&amp;Inflow=pocketsalad.co.kr" id="naver-common-inflow-script"></script>
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
        </body>
        </html>