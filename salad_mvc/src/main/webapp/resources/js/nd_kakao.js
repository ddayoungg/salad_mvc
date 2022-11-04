/**
 * Create by onnomad
 */
var kkoReturnUrl = "https://pocketsalad.co.kr";
var kkoJsKey = "d04eefdf0a79c47f0efb77ac8f3a8d0c";

function getParam(sname) {

    var params = location.search.substr(location.search.indexOf("?") + 1);

    var sval = "";

    params = params.split("&");

    for (var i = 0; i < params.length; i++) {

        temp = params[i].split("=");

        if ([temp[0]] == sname) { sval = temp[1]; }

    }

    return sval;

}
// SDK瑜� 珥덇린�� �⑸땲��. �ъ슜�� �깆쓽 JavaScript �ㅻ� �ㅼ젙�� 二쇱꽭��.
Kakao.init(kkoJsKey);

$(".js_btn_kakao_login_app").off('click').click(function(){
    Kakao.Auth.authorize({
        redirectUri: kkoReturnUrl + '/member/kakao/kakao_login.php',
        state:'{"kakaoType":"' + $(this).data('kakao-type') + '", "returnUrl":"' + $(this).data('return-url') + '"}'
    })
});

$(".js_btn_kakao_login_app_pp").off('click').click(function(){
    window.open("/member/kakao/kakao_login.php?kakaoType=join_method&lmode=popup", "popupNaverLogin", "width=500,height=600");
});

getToken()
function getToken() {
    const token = getCookie('authorize-access-token')
    if(token) {
        Kakao.Auth.setAccessToken(token)
        document.getElementById('token-result').innerText = 'login success. token: ' + Kakao.Auth.getAccessToken()
    }
}
function getCookie(name) {
    const value = "; " + document.cookie;
    const parts = value.split("; " + name + "=");
    if (parts.length === 2) return parts.pop().split(";").shift();
}

var drkakao = getParam('drkakao');
if(drkakao == 'true') {
    Kakao.Auth.authorize({
        redirectUri: kkoReturnUrl + '/member/kakao/kakao_login.php',
        state:'{"kakaoType":"join_method", "returnUrl":"' + kkoReturnUrl + '"}'
    });
    // if(/KAKAOTALK/i.test(navigator.userAgent)) {
    //     Kakao.Auth.login({
    //         success: function(authObj) {
    //             location.href='https://justkorea.co.kr'
    //         },
    //         fail: function (error) {
    //             // �ъ슜�먭� �숈쓽 �붾㈃�먯꽌 痍⑥냼 踰꾪듉�� �대┃�� 寃쎌슦 ���묓븯�� 濡쒖쭅�� 援ы쁽�� �� �덉뒿�덈떎.
    //             location.href='https://justkorea.co.kr'
    //         }
    //     });
    // }
}