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
    <meta name="csrf-token" content="MTY2NjgwMzE2OTE5NTU2NDY2MDk3ODA3OTI3NDE5NjY4NTA1NjQ3MDE1" />


    <meta property="og:type" content="website">
    <meta property="og:title" content="포켓샐러드">
    <meta property="og:image" content="https://www.pocketsalad.co.kr/data/common/snsRepresentImage.jpg">
    <meta property="og:url" content="https://www.pocketsalad.co.kr/board/list.jsp?bdId=qa&amp;noheader=y&amp;memNo=85754&amp;mypageFl=y">
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
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/button.css?ts=1644979979" />
    <link type="text/css" rel="stylesheet" href="http://localhost/salad_mvc/resources/css/board/board.css?ts=1666743613" />
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
    <script type="text/javascript" src="/admin/gd_share/script/visit/gd_visit.js?requestUrl=https%3A%2F%2Fcollector-statistics.nhn-commerce.com%2Fhttp.msg&requestData=%7B%22base_time%22%3A%222022-10-27T01%3A52%3A49%2B09%3A00%22%2C%22mall_id%22%3A%22652040%22%2C%22user_id%22%3A%2285754%22%2C%22refer%22%3A%22https%3A%5C%2F%5C%2Fwww.pocketsalad.co.kr%3A443%22%2C%22uri%22%3A%22list.jsp%22%2C%22domain%22%3A%22www.pocketsalad.co.kr%22%2C%22country%22%3A%22kr%22%2C%22solution%22%3A%22G5%22%7D&dummyData="></script>
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
	<!-- //시작 -->
<div class="board_zone_sec">
		<div class="board_zone_tit">
			<h2>1:1 문의</h2>
		</div>	

	<div class="board_zone_cont"  id="board_content">
		<div class="board_zone_list">
			<div class="date_check_box">
				<form name="frmSearch" method="get" action="list.jsp">
					<input type="hidden" name="bdId" value="qa"/>
					<input type="hidden" name="memNo" value="85754"/>
					<input type="hidden" name="noheader" value="y"/>
					<input type="hidden" name="mypageFl" value="y"/>

					<h3> 조회기간 </h3>
					<div class="date_check_list" data-target-name="rangDate[]">
						<button type="button" data-value="0">오늘</button>
						<button type="button" data-value="7">7일</button>
						<button type="button" data-value="15">15일</button>
						<button type="button" data-value="30">1개월</button>
						<button type="button" data-value="90">3개월</button>
						<button type="button" data-value="365">1년</button>
					</div>
					<!-- //date_check_list -->
					<div class="date_check_calendar">
						<input type="text" id="picker2" name="rangDate[]" class="anniversary js_datepicker" value="2022-10-21"> ~ <input type="text" name="rangDate[]" class="anniversary js_datepicker" value="2022-10-27">
					</div>
					<!-- //date_check_calendar -->

					<button type="submit" class="btn_date_check"><em>조회</em></button>
				</form>
			</div>
			<!-- //date_check_box -->


			<div class="board_list_qa" align="center">
				<table class="board_list_table" style="width:100%"">
					<colgroup>
						<col style="width:10%"> <!-- 문의날짜 -->
						<col style="width:15%"> <!-- 카테고리 -->
						<col><!-- 제목 -->
						<col style="width:10%"> <!-- 문의상태 -->

					</colgroup>
					<thead>
					<tr>
						<th>문의날짜</th>
						<th>카테고리</th>
						<th>제목</th>
						<th>문의상태</th>
					</tr>
					</thead>
					<tbody>


					<tr>
						<td colspan="5" align="center">게시글이 존재하지않습니다.</td>
					</tr>

					</tbody>
				</table>

			</div>
			<!-- //board_list_qa -->
			<div class="pagination"><ul></ul></div>
			<!-- //pagination -->
		</div>
		<!-- //board_zone_list -->

		<div class="btn_right_box">
			<button type="button" class="btn_write" onclick="gd_btn_write('qa')"><strong>1:1 문의하기</strong></button>
		</div>

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
<script>
	$(document).ready(function () {
		$('img.js_image_load').error(function () {
					$(this).css('background', 'url("http://localhost/salad_mvc/resources/board/skin/qa/img/etc/noimg.png") no-repeat center center');
					$(this).attr('src', '/data/skin/front/kaimen_pc_n/img/etc/blank.gif');
				})
				.each(function () {
					$(this).attr("src", $(this).attr("src"));
				})
	});
</script>
<script type="text/javascript">
	$(function(){
		// 인풋박스 선택 이벤트
		if ($('.js_datepicker').length) {
			$('.js_datepicker').datetimepicker({
				locale: 'ko',
				format: 'YYYY-MM-DD',
				dayViewHeaderFormat: 'YYYY MM',
				viewMode: 'days',
				ignoreReadonly: true,
				debug: false,
				keepOpen: false
			});
			//$('.check-cal img').click(function(e){
			//	$(this).prev('.js-datepicker').data('DateTimePicker').show();
			//});
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
        $('form[name="frmSearch"]').submit(function(e){
            $chekcInputDate = $('input[name="rangDate[]"]');
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
<script type="text/javascript" src="http://localhost/salad_mvc/resources/js/gd_board_list.js" charset="utf-8"></script>
<!-- //끝 -->

</div>
<!-- //content -->
<!-- 절대! 지우지마세요 : Start -->
<iframe name="ifrmProcess" src='/blank.jsp' style="display:none" width="900" height="500"></iframe>
<!-- 절대! 지우지마세요 : End -->

</body>
</html>