/**
 * This is commercial software, only users who have purchased a valid license
 * and accept to the terms of the License Agreement can install and use this
 * program.
 *
 * Do not edit or add to this file if you wish to upgrade Godomall5 to newer
 * versions in the future.
 *
 * 怨듭슜 �ㅽ겕由쏀듃 諛� �꾨줈�좏��� �뺤쓽
 *
 * @copyright �� 2016, NHN godo: Corp.
 * @link http://www.godo.co.kr
 */


/**
 * �먮컮�ㅽ겕由쏀듃 Trim�⑥닔
 *
 * @deprecated �먮컮�ㅽ겕由쏀듃 湲곕낯 �⑥닔 �뱀� $.trim() �ъ슜
 * @return string 醫뚯슦 怨듬갚 �쒓굅�� 臾몄옄��
 */
//String.prototype.trim = function () {
//    return this.replace(/^\s+|\s+$/, '');
//};

/**
 * �먮컮�ㅽ겕由쏀듃 number_format �⑥닔
 *
 * @deprecated numeral濡� ��泥�
 * @return string 臾몄옄�댁쓣 �몄옄由� �⑥쐞濡� �쇳몴 李띻린
 */
//String.prototype.number_format = function()
//{
//    return this.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
//};

// 硫��곗긽�� 蹂��� 湲곕낯泥섎━
if (typeof gdCurrencyDecimalFormat === 'undefined') {
    gdCurrencyDecimal = 0;
    gdCurrencyDecimalFormat = 0;
}

// IE9�먯꽌 console 媛앹껜媛� �놁뼱 console 媛앹껜媛� �녿뒗 寃쎌슦 log濡� �ъ슜�섎룄濡� 泥섎━
if (!window.console) console = {
    log: function () {
    }
};

// IE8 �댄븯�먯꽌 Array.indexOf 吏��먰븯吏� �딅뒗 寃쎌슦�� ���� ����
if (typeof Array.prototype.indexOf !== 'function') {
    Array.prototype.indexOf = function (ele) {
        return $.inArray(ele, this);
    };
}

// IE8 �댄븯�먯꽌 String.trim 吏��먰븯吏� �딅뒗 寃쎌슦�� ���� ����
if (typeof String.prototype.trim !== 'function') {
    String.prototype.trim = function(){
        return $.trim(this);
    };
}

// @qnibus bugfix. toFixed �ъ슜�� 臾댁“嫄� 諛섏삱由� 泥섎━�섎뒗 遺�遺꾩쑝濡� �명빐 怨좊룄紐�5�� �뺤콉怨� 留욎� �딆븘�� toFixed ���� �ъ슜�댁빞 ��
if (typeof Number.prototype.toRealFixed !== 'function') {
    Number.prototype.toRealFixed = function (digits, format) {
        if (typeof digits === 'undefined') {
            digits = gdCurrencyDecimal;
        }
        if (typeof format === 'undefined') {
            format = gdCurrencyDecimalFormat;
        }

        return numeral(Math.floor(this.valueOf() * Math.pow(10, digits)) / Math.pow(10, digits)).format('0,' + format);
    };
}

/**
 * �ㅽ듃留� 移섑솚 硫붿냼��
 * @returns {String}
 */
String.prototype.format = function () {
    var formatted = this;
    for (var i = 0; i < arguments.length; i++) {
        formatted = formatted.replace("{" + i + "}", arguments[i]);
    }
    return formatted;
};

/**
 * DOM 濡쒕뱶
 */
$(document).ready(function () {

    // IE 9 �댄븯 placeholder 泥섎━
    if (gd_is_ie() < 10) {
        $("input, textarea").placeholder();

        $('form').submit(function(e){
            $(this).find("input, textarea").each(function(){
                var _name = this.name;
                var _placeholder = this.getAttribute('placeholder');

                if (_name && _placeholder) {
                    var _target = document.getElementsByName(_name)[0];
                    if (_target.value == _placeholder) {
                        _target.value = '';
                    }
                }
            });
        });
    }

	// jQuery Validator 湲곕낯媛� �ㅼ젙
    $.validator.setDefaults({
        onfocusout: false,
        onclick: false,
        onkeyup: false,
        errorPlacement: function (error, element) {
            // do nothing
        },
        invalidHandler: function (form, validator) {
            var errors = validator.numberOfInvalids();
            if (errors) {
                alert(validator.errorList[0].message);
                validator.errorList[0].element.focus();
            }
        },
        submitHandler: function (form) {
            form.submit();
        }
    });

    // jQuery Validator 湲곕낯 硫붿떆吏� �ㅼ젙
    jQuery.extend(jQuery.validator.messages, {
        required: __("�꾩닔��ぉ �낅땲��."),
        remote: __("�� �꾨뱶瑜� �섏젙�댁＜�몄슂."),
        email: __("�대찓�쇱쓣 �뺥솗�섍쾶 �낅젰�댁＜�몄슂."),
        url: __("�좏슚�섏� �딆� URL�� �낅젰�섏뿀�듬땲��."),
        date: __("�좎쭨�뺤떇�� 留욎� �딆뒿�덈떎."),
        dateISO: __("�좏슚�� ISO ���낆쓽 �좎쭨濡� �ㅼ떆 �낅젰�댁＜�몄슂."),
        number: __("�レ옄留� �낅젰�섏떎 �� �덉뒿�덈떎."),
        digits: __("�レ옄留� �낅젰�섏떎 �� �덉뒿�덈떎."),
        creditcard: __("�좏슚�� �좎슜移대뱶 踰덊샇濡� �ㅼ떆 �낅젰�댁＜�몄슂."),
        equalTo: __("�숈씪�� 媛믪쓣 �낅젰�댁＜�몄슂."),
        accept: "Please enter a value with a valid extension.",
        maxlength: jQuery.validator.format(__("理쒕� %i �댄븯 �낅젰�� 二쇱꽭��.", "{0}")),
        minlength: jQuery.validator.format(__("理쒖냼 %i �댁긽 �낅젰�� 二쇱꽭��.", "{0}")),
        rangelength: jQuery.validator.format(__("%1$i�먯뿉�� %2$i源뚯� �낅젰媛��ν빀�덈떎.", ["{0}", "{1}"])),
        range: jQuery.validator.format(__("%1$i�� %2$i�ъ씠�� �レ옄瑜� �낅젰�댁＜�몄슂.", ["{0}", "{1}"])),
        max: jQuery.validator.format(__("理쒕� %i �댁긽 �낅젰�섏떎 �� �놁뒿�덈떎.", "{0}")),
        min: jQuery.validator.format(__("理쒖냼 %i �댄븯 �낅젰�섏떎 �� �놁뒿�덈떎.", "{0}"))
    });

    //寃��됱뼱
    $("#frmSearchTop").validate({
        submitHandler: function (form) {
            if ($("#frmSearchTop input[name='adUrl']").val() && $("#frmSearchTop input[name='keyword']").val() == '') document.location.href = $("#frmSearchTop input[name='adUrl']").val();
            else form.submit();
        },
        rules: {
            keyword: {
                required: function () {

                    if ($("#frmSearchTop input[name='adUrl']").val()) {
                        return false;o
                    }
                    else {
                        return true;
                    }
                }
            }
        },
        messages: {
            keyword: {
                required: __('寃��됱뼱瑜� �낅젰�섏꽭��.')
            }
        }
    });

    // 理쒓렐 寃��됱뼱 ��젣
    $('.btn_top_search_del').click(function(e){
        e.stopPropagation();
        $self = $(this);
        $.post('../goods/goods_ps.php', {
            'mode': 'delete_recent_keyword',
            'keyword': $(this).data('recent-keyword')
        }, function (data, status) {
            // 媛믪씠 �녿뒗 寃쎌슦 �깃났
            if (status == 'success' && data == '') {
                if ($self.closest('ul').find('li').length == 1) {
                    $self.closest('li').remove();
                    $('.btn_top_search_all_del').remove();
                    $('.js_recent_area').append('<dd>' + __('理쒓렐 寃��됱뼱媛� �놁뒿�덈떎.') + '</dd>');
                } else {
                    $self.closest('li').remove();
                }
            } else {
                console.log('request fail. ajax status (' + status + ')');
            }
        });
    });

    // 理쒓렐 寃��됱뼱 �꾩껜 ��젣
    $('.btn_top_search_all_del').click(function(e){
        $.post('../goods/goods_ps.php', {
            'mode': 'delete_recent_all_keyword'
        }, function (data, status) {
            // 媛믪씠 �녿뒗 寃쎌슦 �깃났
            if (status == 'success' && data == '') {
                $('.js_recent_list').find('li').remove()
                $('.btn_top_search_all_del').remove();
                $('.js_recent_area').append('<dd>' + __('理쒓렐 寃��됱뼱媛� �놁뒿�덈떎.') + '</dd>');
            } else {
                console.log('request fail. ajax status (' + status + ')');
            }
        });
    });

    // Ajax �먮윭 諛� 泥섎━ 湲곕낯媛� �ㅼ젙
    $.ajaxSetup({
        beforeSend: function (xhr, settings) {
            xhr.url = settings.url;
            xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
        },
        complete: function () {
            gd_trigger_checkbox_ui();
            gd_select_remodeling();
            gd_checkbox_all();

            //�대�吏� 濡쒕뵫 �μ긽 �ъ슜 �� �몄텧.
            if ($.isFunction($.fn.lazyload) === true) {
                setTimeout(function() {
                    $("img.gd_image_lazy").lazyload({threshold:200});
                }, 1);
            }
        },
        error: function (xhr, textStatus, error) {
            if (xhr.status == '404' && error == 'Not Found') {
                console.log('[404 Not Found]\nThe requested URL was not found.');
            }
            else if (xhr.status == '500' && error == 'Internal Server Error' && xhr.responseText != '') {
                console.log(xhr.responseText);
            }
            gd_close_layer();
            console.log('Ajax Error URL: ' + xhr.url, xhr.responseText);
        }
    });

    $(document).on('click', '.btn_alert_login', function (e) {
        var target = $(this).attr('id');
        e.preventDefault();
        alert(__('濡쒓렇�명븯�붿빞 蹂� �쒕퉬�ㅻ� �댁슜�섏떎 �� �덉뒿�덈떎.'));
        document.location.href = target == undefined ?  "../member/login.php" : "../member/login.php?id=" + target;
        return false;
    });

    // 誘명솗�� �낃툑�� �앹뾽
    $('#ghostDepositorBanner').click(function () {
        var url = '/service/popup_ghost_depositor.php';
        var win = gd_popup({
            url: url
            , target: 'ghostDepositorPopup'
            , width: 630
            , height: 560
            , resizable: 'no'
            , scrollbars: 'no'
        });
        win.focus();
        return win;
    });

    if ($('.btn_prev').length > 0) {
        $('.btn_prev').click(function (e) {
            e.preventDefault();
            history.go(-1);
        });
    }

    // 蹂듭궗 湲곕뒫
    // https://github.com/zeroclipboard/zeroclipboard/blob/master/docs/api/ZeroClipboard.md
    if ($('.gd_clipboard').length) {
        if (navigator.userAgent.match(/MSIE 8/) !== null) {
            $('.gd_clipboard').each(function () {
                $(this).click(function () {
                    alert(__("二쇱냼瑜� �쒕옒洹� �댁꽌 蹂듭궗�댁＜�몄슂"));
                    return false;
                });
            });
        } else {
            var clipboard = new Clipboard('.gd_clipboard');
            clipboard.on('success', function (e) {
                var title = $(e.trigger).attr('title') == undefined ? '' : $(e.trigger).attr('title');
                alert('[' + title + '] '+__('�뺣낫瑜� �대┰蹂대뱶�� 蹂듭궗�덉뒿�덈떎.\nCtrl+V瑜� �댁슜�댁꽌 �ъ슜�섏꽭��.'));
                e.clearSelection();
            });
            clipboard.on('error', function (e) {
                console.error('Action:', e.action);
                console.error('Trigger:', e.trigger);
            });
        }
    }
});

// @qnibus bugfix. toFixed �ъ슜�� 臾댁“嫄� 諛섏삱由� 泥섎━�섎뒗 遺�遺꾩쑝濡� �명빐 怨좊룄紐�5�� �뺤콉怨� 留욎� �딆븘�� toFixed ���� �ъ슜�댁빞 ��
if (typeof Number.prototype.toRealFixed !== 'function') {
    Number.prototype.toRealFixed = function (digits, format) {
        if (typeof digits === 'undefined') {
            digits = gdCurrencyDecimal;
        }
        if (typeof format === 'undefined') {
            format = gdCurrencyDecimalFormat;
        }

        return numeral(Math.floor(this.valueOf() * Math.pow(10, digits)) / Math.pow(10, digits)).format('0,' + format);
    };
}

/**
 * 湲곗��뷀룓 �섏쑉蹂���
 *
 * @param price 湲덉븸
 * @param isFormat �щ㎎�щ�
 * @returns {*}
 */
function gd_money_format(price, isFormat) {
    var convertPrice = fx.convert(price).toRealFixed();
    if (typeof isFormat !== 'undefined') {
        if (isFormat) {
            return numeral().unformat(convertPrice);
        }
    }

    return convertPrice;
}

/**
 * 異붽��뷀룓 �섏쑉蹂���
 *
 * @param price 湲덉븸
 * @param isFormat �щ㎎�щ�
 * @returns {*}
 */
function gd_add_money_format(price, isFormat) {
    var convertPrice = fx.convert(price, {to: gdCurrencyAddCode}).toRealFixed(gdCurrencyAddDecimal, gdCurrencyAddDecimalFormat);
    if (typeof isFormat !== 'undefined') {
        if (isFormat) {
            return numeral().unformat(convertPrice);
        }
    }

    return convertPrice;
}

/**
 * �덈룄�고뙘�� �몄텧
 * @param array options 李쎌젙蹂�
 * @return object Window 媛쒖껜
 */
function gd_popup(options) {
    if (!options.width) options.width = 500;
    if (!options.height) options.height = 415;
    var status = new Array();
    $.each(options, function (i, v) {
        if ($.inArray(i, ['url', 'target']) == '-1') {
            status.push(i + '=' + v);
        }
    });
    var status = status.join(',');
    var win = window.open(options.url, options.target, status);
    return win;
}

/**
 * �듭떊�먮ℓ�ъ뾽�� �곸꽭議고쉶李�
 * @param string businessNo �ъ뾽�� 踰덊샇
 * @return
 */
function gd_popup_bizInfo(businessNo) {
    var url = 'http://www.ftc.go.kr/info/bizinfo/communicationViewPopup.jsp?wrkr_no=' + businessNo;
    var win = gd_popup({
        url: url
        , target: 'communicationViewPopup'
        , width: 750
        , height: 700
        , resizable: 'no'
        , scrollbars: 'yes'
    });
    win.focus();
    return win;
}
/**
 * 荑좏궎 �앹꽦
 */
function createCookie(name, value, days) {
    var expires;
    if (days) {
        var date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toGMTString();
    } else {
        expires = "";
    }
    document.cookie = name + "=" + value  + "; path=/; expires=" + expires + ";";
}
/**
 * �앹뾽李� Cookie 而⑦듃濡�
 * @param string name �앹뾽李� �대쫫 (肄붾뱶_李쎌쥌瑜�)
 * @param object elemnt elemnt
 * @return
 */
function gd_popup_cookie(name, elemnt) {
    if (elemnt.checked === true) {
        createCookie(name,'true',1);
        var popupKind = name.split('_');
        if (popupKind[1] == 'window') {
            setTimeout('self.close()');
        } else {
            setTimeout("$('#" + name + "').hide()");
        }
    } else {
       createCookie(name, null);
    }
    return;
}

/**
 * 硫붿씪 �꾨찓�� �좏깮
 */
function gd_select_email_domain(name,select) {
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
                $email.val(emailValue + '@');
            } else {
                $email.val(emailValue + '@' + $emailDomain.val());
            }
            $email.trigger('focusout');
        } else {
            if ($emailDomain.val() === 'self') {
                $email.val(emailValue.substring(0, indexOf + 1));
                $email.focus();
            } else {
                $email.val(emailValue.substring(0, indexOf + 1) + $emailDomain.val());
                $email.trigger('focusout');
            }
        }
    });
}

/**
 * �꾨줈紐� 二쇱냼 李얘린 (�앹뾽)
 *
 * @author artherot
 * @param string zoneCodeID zonecode input ID
 * @param string addrID address input ID
 * @param string zipCodeID zipcode input ID
 */
function gd_postcode_search(zoneCodeID, addrID, zipCodeID) {
    var win = gd_popup({
        url: '../share/postcode_search.php?zoneCodeID=' + zoneCodeID + '&addrID=' + addrID + '&zipCodeID=' + zipCodeID,
        target: 'postcode',
        width: 540,
        height: 700,
        resizable: 'yes',
        scrollbars: 'yes'
    });
    win.focus();
    return win;
}

/**
 * 鍮꾪쉶�� 媛쒖씤�뺣낫 �섏쭛��ぉ �숈쓽 留곹겕
 */
function gd_redirect_collection_agree() {
    window.open('/service/private.php');
}

/**
 * �뚯씪 �낅줈�� 媛앹껜
 */
var gdAjaxUpload = {
    upload : function(data) {
        var formData = new FormData();
        for (var k in data.params){
            if (data.params.hasOwnProperty(k)) {
                formData.append(k, data.params[k]);
            }
        }
        if(data.onbeforeunload){
            window.onbeforeunload = data.onbeforeunload;
            data.formObj.on("submit", function () {
                window.onbeforeunload = null;
            });
        }

        if(data.formObj.find('[name=uploadType][value=ajax]').length < 1) {
            data.formObj.append('<input type="hidden"  name="uploadType" value="ajax" >');
        }
        var index = data.thisObj.closest('form').find('input:file').index(data.thisObj);
        formData.append('uploadFile', data.thisObj[0].files[0]);

        $.ajax({
            url: data.actionUrl,
            type: 'POST',
            data: formData,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            dataType: 'json',
            success: function (returnData) {
                returnData['index'] = index;
                if(returnData.result == 'ok') {
                    if ($('input[name="uploadFileNm[' + index + ']"]').length == 0) {
                        data.formObj.append("<input type='hidden' name='uploadFileNm[" + index + "]' value='" + returnData.uploadFileNm + "'>");
                        data.formObj.append("<input type='hidden' name='saveFileNm[" + index + "]' value='" + returnData.saveFileNm + "'>");
                    }
                    else {
                        $("input[name='uploadFileNm[" + index + "]']").val(returnData.uploadFileNm);
                        $("input[name='saveFileNm[" + index + "]']").val(returnData.saveFileNm);
                    }
                    if(typeof data.successAfter == 'function') {
                        data.successAfter(returnData);
                    }
                }
                else if(returnData.result == 'cancel'){
                    if ($("input[name='uploadFileNm[" + index + "]']").length > 0) {
                        $("input[name='uploadFileNm[" + index + "]']").remove();
                        $("input[name='saveFileNm[" + index + "]']").remove();
                    }
                }
                else {
                    gdAjaxUpload.isSuccess = false;
                    $('label[for=attach' + (index + 1) + '] .text').val('');  //�뚯씪�쒖뒪�� �띿뒪�� 鍮덇컪 泥섎━
                    alert(returnData.errorMsg);
                    if(typeof data.failAfter == 'function') {
                        data.failAfter(returnData);
                    }
                }
            }
        });
    }
};

/**
 * �꾨젅�� 由ъ궗�댁쫰
 */
function gd_resize_frame(obj) {
    var iframeHeight = (obj).contentWindow.document.body.scrollHeight;
    (obj).height = iframeHeight + 100;
}

function gd_resize_frame_id(id) {
    var iframeHeight = document.getElementById(id).contentWindow.document.body.scrollHeight;	
    document.getElementById(id).height = 900;
}


/**
 * �뚯썝�ㅼ슫濡쒕뱶 荑좏룿 留곹겕 �ㅼ슫 諛쏄린
 *
 * @param couponNo
 */
function couponLinkDown(couponNo) {
    var params = {
        mode: "couponDownLink",
        couponCode: couponNo
    };
    $.ajax({
        method: "POST",
        cache: false,
        url: "/mypage/coupon_link_down.php",
        data: params,
        success: function (data) {
            result = JSON.parse(data);
            alert(result['msg']);
        },
        error: function (data) {
            alert(result['msg']);
        }
    });
}

/**
 * PG 愿��� �곸닔利� 蹂닿린
 *
 * @author artherot
 * @param string modeStr 移대뱶, �꾧툑�곸닔利� 醫낅쪟 (card, cash)
 * @param string orderNo 二쇰Ц 踰덊샇
 */
function gd_pg_receipt_view(modeStr, orderNo) {
    // �ъ씠利덈� 誘몃━ �ㅼ젙 - �먮룞�쇰줈 李쎌씠 而ㅼ�吏� �딆븘 誘몃━ �ㅼ젙��
    var preWidth = 430;
    var preHeight = 700;

    // 誘몃━ �앹뾽李쎌쓣 �꾩슦湲�
    var prePopupData = {
        'url': 'about:blank',
        'target': 'show_receipt',
        'width': preWidth,
        'height': preHeight
    };
    var show_receipt = gd_popup(prePopupData);

    // 媛� PG蹂� �곸닔利� �앹뾽李�
    $.post('../share/show_receipt.php', {
        mode: modeStr,
        orderNo: orderNo
    }, function (data) {
        var infoData = data;
        if (typeof infoData['error'] == 'undefined') {
            gd_popup(infoData);
        }
        else {
            alert(infoData['error']);
            show_receipt.close();
        }
    }, 'json');
}

/*** IE 踰꾩쟾 泥댄겕 ***/
function gd_is_ie () {
    var nav = navigator.userAgent.toLowerCase();
    if (nav.indexOf('msie') != -1) {
        return parseInt(nav.split('msie')[1]);
    } else {
        return false;
    }
}

/**
 * 荑쇰━�ㅽ듃留곴컪 李얘린
 * @param query
 * @param variable
 * @returns {string}
 */
function gd_get_query_variable(query, variable) {
    var vars = query.split('&');
    for (var i = 0; i < vars.length; i++) {
        var pair = vars[i].split('=');
        if (decodeURIComponent(pair[0]) == variable) {
            return decodeURIComponent(pair[1]);
        }
    }
    console.log('Query variable %s not found', variable);
}

/**
 * �숈쟻 �ㅽ겕由쏀듃 諛붿씤�� (�ㅽ겕由쏀듃 濡쒕뵫 �� 硫붿꽌�� �ㅽ뻾�섎룄濡� 泥섎━)
 *
 * @author Jong-tae Ahn
 * @param number
 * @param places
 * @param symbol
 * @param thousand
 * @param decimal
 * @returns {string}
 */
function add_script(url, callback) {
    var done = false; // �ㅽ겕由쏀듃 濡쒕뵫 �щ�
    var head = document.getElementsByTagName("head")[0] || document.documentElement;
    var script = document.createElement("script");

    //script.charset = 'UTF-8';
    script.src = url;
    script.onload = script.onreadystatechange = function () {
        if (!done && (!this.readyState || this.readyState === "loaded" || this.readyState === "complete")) {
            done = true;
            callback();

            // IE�먯꽌 硫붾え由� �꾩닔 諛⑹�瑜� �꾪븳 泥섎━
            script.onload = script.onreadystatechange = null;
            if (head && script.parentNode) {
                head.removeChild(script);
            }
        }
    };

    // Use insertBefore instead of appendChild  to circumvent an IE6 bug.
    // This arises when a base node is used (#2709 and #4378).
    head.insertBefore(script, head.firstChild);
}




/*** �ㅽ넗由ъ� 吏��� �щ� ***/
function supports_html5_storage() {
    try {
        return 'localStorage' in window && window['localStorage'] !== null;
    } catch (e) {
        return false;
    }
}

/*** �몄뀡 �ㅽ넗由ъ� ���� ***/
function saveSession(control_key, control_value) {
    if (!supports_html5_storage()) {
        createCookie(control_key, control_value, 7);
    } else {
        sessionStorage[control_key] = control_value;
    }
};

/*** �몄뀡 �ㅽ넗由ъ� 濡쒕뱶 ***/
function loadSession(control_key) {
    var control_value;
    if (!supports_html5_storage()) {
        control_value = readCookie(control_key);
    } else {
        control_value = sessionStorage[control_key];
    }
    return control_value;
};

/*** 濡쒖뺄 �ㅽ넗由ъ� ���� ***/
function saveVal(control_key, control_value) {
    if (!supports_html5_storage()) {
        createCookie(control_key, control_value, 7);
    } else {
        localStorage.setItem(control_key, control_value);
    }
};

/*** 濡쒖뺄 �ㅽ넗由ъ� 濡쒕뱶 ***/
function loadVal(control_key) {
    var control_value;
    if (!supports_html5_storage()) {
        control_value = readCookie(control_key);
    } else {
        control_value = localStorage.getItem(control_key);
    }
    return control_value;
};