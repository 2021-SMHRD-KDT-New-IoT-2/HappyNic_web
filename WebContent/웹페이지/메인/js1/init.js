// const changeGoogleAnalysisUrl = () => {
var currentUrl = window.location.href;
var urlComfirm = currentUrl.indexOf("https://gbike.io") !== -1;
var analysisTid = "";

if (urlComfirm) {
    //url이 실도메인이면
    var newScript = document.createElement("script");
    newScript.type = "text/javascript";
    newScript.setAttribute("async", "true");
    newScript.setAttribute(
        "src",
        "https://www.googletagmanager.com/gtag/js?id=UA-110476319-2"
    );
    document.documentElement.firstChild.appendChild(newScript);
    analysisTid = "UA-110476319-2";
    // console.log(":::::product::::::");
} else {
    //다른 url이면
    var newScript = document.createElement("script");
    newScript.type = "text/javascript";
    newScript.setAttribute("async", "true");
    newScript.setAttribute(
        "src",
        "https://www.googletagmanager.com/gtag/js?id=UA-110476319-4"
    );
    document.documentElement.firstChild.appendChild(newScript);
    analysisTid = "UA-110476319-4";
    // console.log(":::::locals::::::");
}

//구글 애널리틱스 셋팅
window.dataLayer = window.dataLayer || [];
function gtag() {
    dataLayer.push(arguments);
}
gtag("js", new Date());
gtag("config", analysisTid);
