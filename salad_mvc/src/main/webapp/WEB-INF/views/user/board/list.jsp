<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info=""%>

<!doctype html>
<html>
<head>
    <title>포켓샐러드 - 내가 찾던 식단관리!</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="신선한 샐러드를 언제 어디서나 간편하게 즐기는 포켓샐러드! 라이스&포켓닭까지 함께 즐겨보세요" />
    <meta name="keywords" content="샐러드, 닭가슴살, 샐러드배달, 샐러드도시락, 다이어트도시락, 포켓닭, 탄단지, 다이어트, 다이어트식단, 식단관리" />
    <meta name="csrf-token" content="MTY2NjcwMzE1OTY3MDI1Njg1MDcyNDQzNjUyMzkxNTE5MzI0NTI3NjM3" />


    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/board/list.jsp?bdId=notice&amp;noheader=y">
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
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/layout/layout.css?ts=1666674309">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/goods/list.css?ts=1662515260">
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css?ts=1644979979" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/board/board.css?ts=1666243429" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/js/jquery/chosen/chosen.css?ts=1662105386" />

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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-25T22%3A05%3A59%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285762%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22list.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData="></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_common.js"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/moment.js"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/moment/locale/ko.js"></script>
    <script type="text/javascript" src="http://localhost/salad_mvc/resources/js/jquery/datetimepicker/bootstrap-datetimepicker.js"></script>
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

</head>

<body class="body-board body-list pc"  >
<div class="content">
<div class="board_zone_sec">
    <div  class="board_zone_tit" >


		<h2>공지사항</h2>
    </div>
    <div class="board_zone_cont" id="board_content">
        <div class="board_zone_list" align="center">
            <table class="board_list_table" style="width:100%"">
                <colgroup>
 <col   style="width:106px">
                   
                    <col style="width:auto;">
<col style="width:106px">
<col style="width:106px">
<col style="width:106px;">
                 
                    <col style="width:6%">
                </colgroup>
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>날짜</th>
                    <th>작성자</th>
                    <th>조회</th>
                </tr>
                </thead>
                <tbody>

                <tr data-sno="99" data-auth="y" style="height:10px">
                    <td>
                        69
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',99 ,'y')" >
                            <strong>일부 새벽배송 지역 변경 안내</strong>
                        </a>
                    </td>
                    <td> 2022.10.24 </td>
                    <td> 관리자 </td>
                    <td> 22 </td>
                </tr>
                <tr data-sno="98" data-auth="y" style="height:10px">
                    <td>
                        68
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',98 ,'y')" >
                            <strong>[결제관련이슈] 네이버 페이 결제 이슈 사항 건</strong>
                        </a>
                    </td>
                    <td> 2022.10.19 </td>
                    <td> 관리자 </td>
                    <td> 36 </td>
                </tr>
                <tr data-sno="97" data-auth="y" style="height:10px">
                    <td>
                        67
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',97 ,'y')" >
                            <strong>닭가슴살 슬라이스 3종 리뉴얼 출시</strong>
                        </a>
                    </td>
                    <td> 2022.10.09 </td>
                    <td> 관리자 </td>
                    <td> 50 </td>
                </tr>
                <tr data-sno="96" data-auth="y" style="height:10px">
                    <td>
                        66
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',96 ,'y')" >
                            <strong>포켓샐러드 메뉴 가격 인상 안내</strong>
                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/board/skin/default/img/icon/icon_board_attach_img.png" alt="이미지첨부 있음"/>
                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.10.04 </td>
                    <td> 관리자 </td>
                    <td> 277 </td>
                </tr>
                <tr data-sno="94" data-auth="y" style="height:10px">
                    <td>
                        65
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',94 ,'y')" >
                            <strong>2022 개천절&한글날 배송 일정 안내</strong>
                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.09.28 </td>
                    <td> 관리자 </td>
                    <td> 224 </td>
                </tr>
                <tr data-sno="92" data-auth="y" style="height:10px">
                    <td>
                        64
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',92 ,'y')" >
                            <strong>간편식, 닭가슴살&간식 제품 배송 안내</strong>
                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.09.14 </td>
                    <td> 관리자 </td>
                    <td> 218 </td>
                </tr>
                <tr data-sno="91" data-auth="y" style="height:10px">
                    <td>
                        63
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',91 ,'y')" >
                            <strong>정기구독 상품명 변경 안내</strong>
                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.09.08 </td>
                    <td> 관리자 </td>
                    <td> 141 </td>
                </tr>
                <tr data-sno="90" data-auth="y" style="height:10px">
                    <td>
                        62
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',90 ,'y')" >
                            <strong>2022 추석 연휴 배송 일정 안내</strong>
                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.09.02 </td>
                    <td> 관리자 </td>
                    <td> 387 </td>
                </tr>
                <tr data-sno="89" data-auth="y" style="height:10px">
                    <td>
                        61
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',89 ,'y')" >
                            <strong>2022 8월 휴무 배송 일정 안내</strong>
                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.08.04 </td>
                    <td> 관리자 </td>
                    <td> 656 </td>
                </tr>
                <tr data-sno="86" data-auth="y" style="height:10px">
                    <td>
                        60
                    </td>
                    <td class="board_tit">
                        
                        <a href="javascript:gd_btn_view('notice',86 ,'y')" >
                            <strong>2022 지방선거일&현충일 배송 일정 안내</strong>
                            <img src="https://atowertr6856.cdn-nhncommerce.com/data/skin/front/kaimen_pc_n/board/skin/default/img/icon/icon_board_hot.png" alt="인기글"/>
                        </a>
                    </td>
                    <td> 2022.05.26 </td>
                    <td> 관리자 </td>
                    <td> 787 </td>
                </tr>

                </tbody>
            </table>


            <div class="pagination"><ul><li class="on"><span>1</span></li><li><a href="./list.jsp?page=2&amp;bdId=notice&amp;noheader=y">2</a></li><li><a href="./list.jsp?page=3&amp;bdId=notice&amp;noheader=y">3</a></li><li><a href="./list.jsp?page=4&amp;bdId=notice&amp;noheader=y">4</a></li><li><a href="./list.jsp?page=5&amp;bdId=notice&amp;noheader=y">5</a></li><li><a href="./list.jsp?page=6&amp;bdId=notice&amp;noheader=y">6</a></li><li><a href="./list.jsp?page=7&amp;bdId=notice&amp;noheader=y">7</a></li></ul></div>

            <!-- //pagination -->

            <div class="board_search_box">
                <form name="frmList" id="frmList" action="list.jsp" method="get">
                    <input type="hidden" name="bdId" value="notice">
                    <input type="hidden" name="memNo" value=""/>
                    <input type="hidden" name="noheader" value="y"/>
					<input type="hidden" name="mypageFl" value=""/>

                    <select class="chosen-select" name="searchField">
                        <option value="subject"
 >제목</option>
                        <option value="contents"
 >내용</option>
                        <option value="writerNm"
 >작성자</option>
                    </select>

                    <input type="text" class="text" name="searchWord" value="">
                    <button class="btn_board_search"><em>검색</em></button>
                </form>
            </div>
            <!-- //board_search_box -->

        </div>
        <!-- //board_zone_list -->


    </div>
    <!-- //board_zone_cont -->
</div>
<!-- //board_zone_sec -->

<form id="frmWritePassword">
    <div id="lyPassword" class="dn layer_wrap password_layer" style="height: 226px">
        <div class="layer_wrap_cont">
            <div class="ly_tit">
                <h4>비밀번호 인증</h4>
            </div>
            <div class="ly_cont">
                <div class="scroll_box">
                    <p>비밀번호를 입력해 주세요.</p>
                    <input type="password" name="writerPw" class="text">
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
    <!-- //layer_wrap -->
</form>

<div id="layerDim" class="dn">&nbsp;</div>
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_list.js" charset="utf-8"></script>
<script>
    $(document).ready(function () {
        $('img.js_image_load').error(function () {
            $(this).css('background', 'url("http://localhost/salad_mvc/resources/board/skin/default/img/etc/noimg.png") no-repeat center center');
            $(this).attr('src', '/data/skin/front/kaimen_pc_n/img/etc/blank.gif');
        })
            .each(function () {
                $(this).attr("src", $(this).attr("src"));
            })
    });
</script>
</div>
<!-- //content -->
<!-- 절대! 지우지마세요 : Start -->
<iframe name="ifrmProcess" src='/blank.jsp' style="display:none" width="900" height="500"></iframe>
<!-- 절대! 지우지마세요 : End -->

</body>
</html>