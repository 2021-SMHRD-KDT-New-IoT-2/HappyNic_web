<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="stylesheet" href="css1/따오기.css">
    <script src="js1/jquery-3.4.1.js"></script>
    <script src="js1/swiper.min.js"></script>
        <script type="application/ld+json">
          
        </script>
        <title>우리들의 바구니 BaguNic</title>
        <meta charset="utf-8" />
       
   
        <!-- favicons -->
        <link rel="shortcut icon" href="images/favicon.ico" />

        <link rel="stylesheet" type="text/css" href="css1/base.css" />
        <link rel="stylesheet" type="text/css" href="css1/common.css" />
        <link rel="stylesheet" type="text/css" href="css1/style.css" />

        <script src="js/init.js"></script>
        <script src="js1/init.js"></script>

    </head>
    <body>
       

        <!--위 대시보드-->
        <div id="root">
            <div class="wrap-header">
                <div class="boxes">
                    <div class="logo-box">
                        <a href="메인페이지.jsp">
                            <img
                                src="images/logo/LOGO.gif"width="70px"/>
                        </a>
                    </div>
                    <div class="link-box">
                        <div>
                            <a href="">이벤트</a>
                        </div>
                        <div>
                            <a href="">이용안내</a>
                        </div>
                        <div>
                            <a href="">공원현황</a>
                        </div>
                        <div>
                            <a href="로그인.jsp">관리자</a>
                        </div>

                    </div>
                </div>
            </div>
            <div id="videoSection" class="wrap-full">
                <div class="fullscreen-bg">
                    <!-- poster 동영상 받을 때 같이 받기 -->
                    <!-- poster="../images/gcooter-app-large.png" -->
                    <video
                        loop
                        muted
                        playsinline
                        autoplay
                        poster="images/img_main.png"
                        class="fullscreen-bg__video"
                        id="myVideo"
                    >
                        <source src="영상.mp4" type="video/mp4" />
                    </video>
                </div>
                <div class="overlap-layout">
                    <div class="main-container">
                        <div class="title-box">
                            <h1>우리들의 바구니 <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp BaguNic</h1>
                        </div>



                        <div class="appDownload-box">
                            <div>
                                <a
                                    href=""
                                    target="_blank"
                                    onclick="callAnalytics('ios_app_download_click', 'app_download',''); return false;"
                                >
                                    <img
                                        src="images/badge_appstore.png"
                                        alt=""
                                    />
                                </a>
                            </div>
                            <div>
                                <a
                                    href=""
                                    target="_blank"
                                    onclick="callAnalytics('aos_app_download_click', 'app_download', ''); return false;"
                                >
                                    <img
                                        src="images/badge_googleplay.png"
                                        alt=""
                                    />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
<style>
                * {margin:0;padding:0;box-sizing:border-box;}
                ul, li {list-style:none;}
                
                [name="slide"] {display:none;}
                .slidebox {max-width:100%;width:100%;margin:0 auto;text-align:center;}
                .slidebox img {max-width:100%;}
                .slidebox .slidelist {
                    white-space:nowrap;
                    font-size:0;
                    overflow:hidden;
                }
                .slidebox .slideitem {
                    position:relative;
                    display:inline-block;
                    vertical-align:middle;
                    width:120p;
                    transition:all .35s;
                }
                .slidebox .slideitem label {
                    position:absolute;
                    z-index:1;
                    top:50%;
                    transform:translateY(-50%);
                    padding:20px;
                    border-radius:50%;
                    cursor:pointer;
                }
                label.left {
                    left:20px;
                    background-color:#5F5F5F;
                    background-image:url('./img/left-arrow.png');
                    background-position:center center;
                    background-size:50%;
                    background-repeat:no-repeat;
                }
                label.right {
                    right:20px;
                    background-color:#5F5F5F;
                    background-image:url('./img/right-arrow.png');
                    background-position:center center;
                    background-size:50%;
                    background-repeat:no-repeat;
                }
                
                /* 페이징 스타일 */
                .paginglist {text-align:center;padding:30px 0;}
                .paginglist > li {display:inline-block;vertical-align:middle;margin:0 10px;}
                .paginglist > li > label {display:block;padding:10px 30px;border-radius:10px;background:#ccc;cursor:pointer;}
                .paginglist > li:hover > label {background:#333;}
                
                [id="slide01"]:checked ~ .slidelist .slideitem {transform:translateX(0);animation:slide01 20s infinite;}
                [id="slide02"]:checked ~ .slidelist .slideitem {transform:translateX(-100%);animation:slide02 20s infinite;}
                [id="slide03"]:checked ~ .slidelist .slideitem {transform:translateX(-200%);animation:slide03 20s infinite;}
                [id="slide04"]:checked ~ .slidelist .slideitem {transform:translateX(-300%);animation:slide04 20s infinite;}
                
                @keyframes slide01 {
                    0% {left:0%;}
                    23% {left:0%;}
                    25% {left:-100%;}
                    48% {left:-100%;}
                    50% {left:-200%;}
                    73% {left:-200%;}
                    75% {left:-300%;}
                    98% {left:-300%;}
                    100% {left:0%;}
                }
                @keyframes slide02 {
                    0% {left:0%;}
                    23% {left:0%;}
                    25% {left:-100%;}
                    48% {left:-100%;}
                    50% {left:-200%;}
                    73% {left:-200%;}
                    75% {left:100%;}
                    98% {left:100%;}
                    100% {left:0%;}
                }
                @keyframes slide03 {
                    0% {left:0%;}
                    23% {left:0%;}
                    25% {left:-100%;}
                    48% {left:-100%;}
                    50% {left:200%;}
                    73% {left:200%;}
                    75% {left:100%;}
                    98% {left:100%;}
                    100% {left:0%;}
                }
                @keyframes slide04 {
                    0% {left:0%;}
                    23% {left:0%;}
                    25% {left:300%;}
                    48% {left:300%;}
                    50% {left:200%;}
                    73% {left:200%;}
                    75% {left:100%;}
                    98% {left:100%;}
                    100% {left:0%;}
                }
                </style>
                
                <div class="slidebox">
                    <input type="radio" name="slide" id="slide01" checked>
                    <input type="radio" name="slide" id="slide02">
                    <input type="radio" name="slide" id="slide03">
                    <input type="radio" name="slide" id="slide04">
                    <ul class="slidelist">
                        <li class="slideitem">
                            <div>
                                <label for="slide04" class="left"></label>
                                <label for="slide02" class="right"></label>
                                <a><img src="img/슬라이드1.png"></a>
                            </div>
                        </li>
                        <li class="slideitem">
                            <div>
                                <label for="slide01" class="left"></label>
                                <label for="slide03" class="right"></label>
                                <a><img src="img/슬라이드2.png"></a>
                            </div>
                        </li>
                        <li class="slideitem">
                            <div>
                                <label for="slide02" class="left"></label>
                                <label for="slide04" class="right"></label>
                                <a><img src="img/슬라이드3.png"></a>
                            </div>
                        </li>
                        <li class="slideitem">
                            <div>
                                <label for="slide03" class="left"></label>
                                <label for="slide01" class="right"></label>
                                <a><img src="img/슬라이드2.png"></a>
                            </div>
                        </li>
                    </ul>
                    <!-- <ul class="paginglist">
                        <li>
                            <label for="slide01"></label>
                        </li>
                        <li>
                            <label for="slide02"></label>
                        </li>
                        <li>
                            <label for="slide03"></label>
                        </li>
                        <li>
                            <label for="slide04"></label>
                        </li>
                    </ul> -->
                </div>
                
                
            <!-- <div id="useSection" class="wrap-content phoneTab">
                <div class="main-container">
                    <div class="boxes">
                        <div class="mo-title m768-ohus">
                            <h2>BaguNic<br />이용할 수 있어요!</h2>
                        </div>
                        <div class="phone-box">
                            <div class="phone-content">
                                <div class="phone-frame">
                                    <img
                                        src="img/어플사진변경.JPG"
                                        alt="phone frame"/>
                                </div>
                            </div>
                        </div>
                        <div class="tab-box">
                            <div class="title m768-osuh">
                                <h2>
                                    우리들의 BaguNic<br />
                                    이용해 보세요
                                </h2>
                            </div>
                            <div class="tabs">
                                <div class="menu">
                                    <div class="active">BaguNic</div>
                                    
                                </div>
                                <div class="content">
                                    <div class="active">
                                        언제 어디서든 공원 내 설치된 사물함에서<br />
                                        피크닉 바구니를 대여 할 수 있습니다.
                                    </div>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->
            
             <section class="sec">
                    <div class="바구니-howto">
                        <div class="sec-tit-area">
                            <h4 class="sec-tit" style="color: aquamarine;"> BaguNic</h4>
                            <br><br><br><br>
                            <a style="font-size: 25px;">공원 내 설치된 사물함에서 <br><br>피크닉 바구니를 대여하여 <br><br>즐거운 추억을 쌓아보세요</a>            
                        </div>
                        <div class="slide-wrap howto-slide" >
                            <div class="howto-slide-contents2">
                                <div class="swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <img src="img/내용물.JPG" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <ul class="indicator">
                            </ul>
                        </div>
                    </div>
                </section>
         

            <section class="sec" >
                <div class="바구니-howto">
                    <div class="sec-tit-area">
                        <h3 class="sec-tit">BAGUNIC<br><span class="font-red">어떻게?</span><br class="br-none">이용방법</h3>
                        <p>두 손 가볍게 <br>피크닉을 즐겨보세요.</p>
                    </div>
                    <div class="slide-wrap howto-slide">
                        <div class="howto-slide-contents">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <img src="img/img_howto01.jpg" alt="">
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="img/img_howto02.jpg" alt="">
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="img/img_howto03.jpg" alt="">
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="img/img_howto04.jpg" alt="">
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="img/img_howto05.jpg" alt="">
                                    </div>
                                    <div class="swiper-slide">
                                        <img src="img/img_howto06.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button class="slide-prev"></button>
                        <button class="slide-next"></button>
                        <ul class="indicator">
                            <li class="active">
                                <a href="#">
                                    <svg viewBox="0 0 36 35" class="icon-howto01">
                                        <g fill="none" fill-rule="evenodd">
                                            <path d="M-2-2h40v40H-2z" />
                                            <path d="M27.587 21.007c2.275-4.95 1.375-11.002-2.704-15.081-5.235-5.235-13.722-5.235-18.957 0-5.235 5.235-5.235 13.722 0 18.957 5.235 5.235 13.722 5.235 18.957 0L34.313 34" class="stroke" stroke="#757575" stroke-width="2.6" />
                                        </g>
                                    </svg>
                                    <span>공원 찾기</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <svg viewBox="0 0 35 35" class="icon-howto02">
                                        <g class="stroke" stroke="#757575" stroke-width="2.3" fill="none" fill-rule="evenodd">
                                            <path d="M1.17 12.233h10.11V2.123H1.17zM1.17 33.494h10.11v-10.11H1.17zM22.943 12.233h10.11V2.123h-10.11zM22.942 28.358v-10.11h10.11v10.11" />
                                            <path d="M0 18.248h16.813v15.144h17.252M17.111 1V13.41" />
                                        </g>
                                    </svg>
                                    <span>바구니 결제</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <svg viewBox="0 0 37 37" class="icon-howto03">
                                        <g fill="none" fill-rule="evenodd">
                                            <path class="fill" fill="#757575" d="M29.612 19.263L9.298 19.2l.005-2 15.686.048-4.63-4.95 1.46-1.365zM21.828 25.657l-1.48-1.348 3.636-3.99h2.707z" />
                                            <path d="M31.702 7.84A16.925 16.925 0 0 1 35.3 18.3c0 9.39-7.612 17-17 17-9.39 0-17-7.61-17-17 0-9.389 7.61-17 17-17 3.814 0 7.335 1.256 10.17 3.378" class="stroke" stroke="#757575" stroke-width="2.3" />
                                        </g>
                                    </svg>
                                    <span>바구니 대여</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <svg viewBox="0 0 44 36" class="icon-howto04">
                                        <g fill="none" fill-rule="evenodd">
                                            <path d="M9.788 30.212a3.975 3.975 0 1 1-7.953 0 3.975 3.975 0 0 1 7.953 0zM42.12 30.212a3.975 3.975 0 1 1-7.953 0 3.975 3.975 0 0 1 7.953 0zM13.142 29.722h13.674l9.264-9.772M37.283 26.236L33.803 7.37" class="stroke" stroke="#757575" stroke-width="2.3" />
                                            <path d="M27.007 1l4.659 2.987" />
                                            <path d="M27.007 1l4.659 2.987M30.999 25.31H12.122" class="stroke" stroke="#757575" stroke-width="2.3" />
                                        </g>
                                    </svg>
                                    <span>바구니 인증샷</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <svg viewBox="0 0 37 37" class="icon-howto05">
                                        <g class="stroke" stroke="#757575" fill="none" fill-rule="evenodd">
                                            <path d="M15.267 20.148h5.876a4.302 4.302 0 0 0 0-8.605H14.897v16.453" stroke-width="3" />
                                            <path d="M29.125 31.236a16.47 16.47 0 0 1-10.59 3.835C9.406 35.071 2 27.667 2 18.536 2 9.403 9.404 2 18.536 2 27.669 2 35.07 9.403 35.07 18.536c0 3.555-1.121 6.85-3.03 9.546" stroke-width="2.3" />
                                        </g>
                                    </svg>
                                    <span>바구니 반납</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <svg viewBox="0 0 43 37" class="icon-howto06">
                                        <g class="stroke" stroke="#757575" fill="none" fill-rule="evenodd">
                                            <path stroke-width="2.3" d="M34.261 13.903v19.452H4.893V8.882h30.024M20.082 24.16v-6.922M2 8.88h35.81V2H2z" />
                                            <path stroke-width="2" class="fill" fill="#FFF" d="M27.817 35.03h14.178v-4.596H27.817z" />
                                            <path stroke-width="2" class="fill" fill="#FFF" d="M25.987 31.38h14.178v-4.595H25.987z" />
                                            <path stroke-width="2" class="fill" fill="#FFF" d="M27.816 23.136h14.178v4.596H27.816v-2.851" />
                                        </g>
                                    </svg>
                                    <span>바구니 반납</span>
                                </a>
                            </li>
                        </ul>
                        <ul class="howto-txt">
                            <li class="active">바구니설명1</li>
                            <li>바구니설명2.</li>
                            <li>바구니설명3.</li>
                            <li>바구니설명4.</li>
                            <li>바구니설명5</li>
                            <li>바구니설명6.</li>
                        </ul>
                    </div>
                </div>
            </section>

            <div style="background-color: #FFF464; text-align: center;">
                
                <img src="img/바구니내용.JPG"width="60%" height="350px">
    
             </div>


  <!-- caution -->
  <section class="sec" >
    <div class="바구니-caution">
        <div class="sec-tit-area">
            <h3 class="sec-tit">바구니<br> <span class="font-red">이용 수칙</span></h3>
            <p>바구니 이용 시, 안전을 위해 이것만은<br>꼭 지켜주세요!</p>
        </div>
        <div class="slide-wrap caution-slide">
            <div class="caution-tab">
                <a href="#" class="바구니-btn" data-slide="caution-geton">탑승 전 확인하세요</a>
                <a href="#" class="바구니-btn" data-slide="caution-go">주행 중 유의하세요</a>
            </div>
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="slide-item swiper-slide" data-slide-name="caution-geton">
                        <ul class="caution-list">
                            <li>
                                <img src="img/img_caution01.png" alt="">
                                <p>탑승 정원은 바구니 1대당 1명씩</p>
                            </li>
                            <li>
                                <img src="img/img_caution02.png" alt="">
                                <p>인도에서는 타면 안되요!</p>
                            </li>
                            <li>
                                <img src="img/img_caution03.png" alt="">
                                <p>킥보드 사용은 운전면허가 필수!</p>
                            </li>
                        </ul>
                        <div class="mobile-indicator"></div>
                    </div>
                    <div class="slide-item swiper-slide" data-slide-name="caution-go">
                        <ul class="caution-list">
                            <li>
                                <img src="img/img_caution04.png" alt="">
                                <p>헬멧은 반드시 착용</p>
                            </li>
                            <li>
                                <img src="img/img_caution05.png" alt="">
                                <p>음주 상태에서 이용 금지</p>
                            </li>
                            <li>
                                <img src="img/img_caution06.png" alt="">
                                <p>주행 중 이어폰 사용 금지</p>
                            </li>
                        </ul>
                        <div class="mobile-indicator"></div>
                    </div>
                </div>
                <div class="indicator"></div>
            </div>
            <button class="slide-prev"></button>
            <button class="slide-next"></button>
        </div>
    </div>
</section>
<!-- //caution -->

 






<section>
            
            <div id="locationSection" class="wrap-content mapRegion" style="background-color: #fFD93A;">
                <h1 class="sec-tit">현재 운영중인 공원<br> <span class="font-red">이용 수칙</span></h1>
                <div class="main-container">
                    <div class="boxes">
                        <div class="region-box">
                            <div class="title">
                            </div>
                            <div class="region">
                                <div class="list">
                                    <ul>
                                        <li style="color: #fFD93A;">안산,</li>
                                        <li>일산,</li>
                                        <li>춘천,</li>
                                        <li>인천,</li>
                                        <li>서울,</li>
                                    </ul>
                                </div>
                                <h1>ddafa</h1>
                            </div>
                        </div>


                        <div class="map-box">
                            <div class="map-area">
                                <img
                                src="images/map_gray.svg"
                                alt="phone frame"
                                />
                            </div>
                            <div class="dot-area">
                                <div class="dots">
                                    <div>1</div>
                                    <div>2</div>
                                    <div>3</div>
                                    <div>4</div>
                                    
                                    <div>7</div>
                                    <div>8</div>
                                    <div>9</div>
                                    <div>10</div>
                                    <div>11</div>
                                    <div>12</div>
                                    <div>13</div>
                        
                                    <div>43</div>
                                    <div>44</div>
                                    <div>45</div>
                                    <div>46</div>
                                    <div>47</div>
                                    <div>48</div>
                                    <div>49</div>
                                    <div>50</div>
                                    <div>51</div>
                                </div>
                                <div class="dot-group">
                                    <div>1</div>
                                    <div>2</div>
                                    <div>3</div>
                                    <div>4</div>
                                    <div>5</div>
                                    <div>6</div>
                                    <div>7</div>
                                    <div>8</div>
                                    <div>9</div>
                                    <div>11</div>
                                    <div>12</div>
                                    <div>13</div>
                                    <div>14</div>
                                    <div>16</div>
                                    <div>17</div>
                                    <div>20</div>
                                    <div>17</div>
                                    <div>15</div>
                                    <div>17</div>

                                    <div>17</div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

            <div style="background-color: #F5F5F9; text-align: center; ">
                
                <img src="img/바구니요금.JPG"width="60%" height="500px">
    
             </div>


        

            <div style="background-color: #fFD93A; text-align: center;">
                
            <img src="img/캡처4.JPG"width="60%" height="700px">

         </div>







         <div class="wrap-content partners">
            <div class="main-container">
                <div class="title">
                    <h2>바구니와 함께하고 있습니다</h2>
                </div>
               
            </div>
        </div>




            <div class="wrap-footer">
                <div class="main-container">
                    <div class="boxes">
                        <div class="logoSns-box">
                            <div class="logo">
                                <!-- <img
                                    src="images/logo/logo_gray.svg"
                                    alt="GCOOTER"
                                /> -->
                            </div>
                            <div class="sns">
                                <div>
                                    <a
                                        href="https://www.instagram.com/gcooter_official"
                                        target="_blank"
                                        onclick="callAnalytics('IG_icon_click','sns_link', 'https://www.instagram.com/gcooter_official'); return false"
                                    >
                                        <!-- <img
                                            src="./images/icon/icon_instagram.svg"
                                            alt="instagram"
                                        /> -->
                                    </a>
                                </div>
                                <div>
                                    <a
                                        href="https://www.facebook.com/GbikeKR"
                                        target="_blank"
                                        onclick="callAnalytics('FB_icon_click','sns_link', 'https://www.facebook.com/GbikeKR'); return false"
                                    >
                                        <!-- <img
                                            src="./images/icon/icon_facebook.svg"
                                            alt="facebook"
                                        /> -->
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="siteMap-boxes">                                
                            <div class="terms-box">
                                <div class="title m768-ohus">
                                    <h2>약관</h2>
                                </div>
                                <div class="terms-list">
                                    <div>
                                        <a
                                            href="policy/service.html"
                                            target="_blank"
                                            >서비스 이용약관</a
                                        >
                                    </div>
                                    <div>
                                        <a
                                            href="policy/privacy.html"
                                            target="_blank"
                                            >개인정보 처리방침</a
                                        >
                                    </div>
                                </div>
                            </div>
                            <div class="companyInfo">
                                <p>
                                    <span>바구닉</span> |
                                  
                                    <span
                                        >서울특별시 한강대로 한강한강</span
                                    >
                                    | <span>대표: 라탄</span> |
                                    <span>사업자번호: 111-111-1111</span> |
                                    ><br />Copyright  2021 BaguNic All rights
                                    Reserved.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="csChat-wrap">
            <div class="button-box">
                <div class="button">
                    <!-- <a onclick="Twc.Chat.open()" -->
                    <a onclick="openTwcChat(Twc)"
                        ><img src="images/icon/chat_twc.svg" alt=""
                    /></a>
                </div>
            </div>
        </div>
        <div class="appDown-bottom-wrap">
            <a heef="#" target="_blank" class="button-box">
                <span class="button">앱 다운로드</span>
            </a>
        </div>

        <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
        <!-- <script type="text/javascript" src="/js/numscroller-1.0.js"></script> -->
        <script
            type="text/javascript"
            src="js/intersection-observer.js"
        ></script>
        <script src="../storage.googleapis.com/cloud-gate-cdn/sdk/Twc.plugin.js"></script>
        <script type="text/javascript" src="js/common.js"></script>
        <script>
            $(document).ready(function () {
                console.log("ready!");
                // alert("ready!");
                // $("#root > div").each((index, box) => {
                //     console.log("::observe box::", box, index);
                //     intersectionObserver.observe(box);
                // });

                chageScrollTop();

                $(".tab-box .tabs .menu > div").each(function (idx) {
                    $(this).click(function () {
                        // console.log("::::::::", idx);
                        let trackerName = "none";
                        if (idx == 0) {
                            trackerName = "find";
                        } else if (idx == 1) {
                            trackerName = "use";
                        } else if (idx == 2) {
                            trackerName = "parking";
                        }
                        gtag("event", "click", {
                            clickType: "guideTabClick",
                            trackerName: trackerName,
                        });
                        $(this)
                            .addClass("active")
                            .siblings()
                            .removeClass("active");
                        $(".tab-box .tabs .content > div")
                            .eq(idx)
                            .addClass("active")
                            .siblings()
                            .removeClass("active");
                        $(".tab-box .tabs .indicator > div")
                            .eq(idx)
                            .addClass("active")
                            .siblings()
                            .removeClass("active");
                        $(".phone-box .phone-bg > div")
                            .eq(idx)
                            .addClass("active")
                            .siblings()
                            .removeClass("active");
                        setTimeout(
                            function () {
                                // console.log("test");
                                $(".phone-box .phone-bg > div")
                                    .eq(idx)
                                    .addClass("top")
                                    .siblings()
                                    .removeClass("top");
                            }.bind(undefined, 10),
                            250
                        );
                    });
                });
            });

            Array.from(document.querySelectorAll("#root > div")).forEach(
                (box) => {
                    intersectionObserver.observe(box);
                }
            );

            var mobileType = getUserAgent();
            if (mobileType != "etc") {
                // 모바일이면
                // console.log("::isMobile::");
                $(".appDownload-box").hide();
                $(".appDown-bottom-wrap").show();
                $(".csChat-wrap").addClass("isMobile");
            } else {
                // 그 외 라면
                // console.log("::notMobile::");
            }
            $(".appDown-bottom-wrap a").on("click", function () {
                if (mobileType == "ios") {
                    callAnalytics(
                        "ios_app_download_click",
                        "app_download",
                        "https://apps.apple.com/kr/app/id1501264071"
                    );
                } else if (mobileType == "android") {
                    callAnalytics(
                        "aos_app_download_click",
                        "app_download",
                        "https://play.google.com/store/apps/details?id=io.gbike.gcooter"
                    );
                }
            });
        </script>
    <script>
        (function($) {
            $(function() {
                // common
                var windowWidth = $(window).outerWidth(),
                    windowHeight = $(window).height(),
                    windowScrollTop = $(window).scrollTop(),
                    $header = $('header');
    
                var $mainInfo = $('.main-first'),
                    $bgWrap = $('.bg-wrap');
                $mainInfo.css('height', windowHeight);
                var bgSet = setTimeout(function() {
                    $bgWrap.css({
                        'height': $('#wrap').height() - windowHeight,
                        'top': windowHeight
                    });
                }, 200);
    
                // howto slide
                var $howtoSlideWrap = $('.howto-slide'),
                    $howtoSlidePaging = $howtoSlideWrap.find('.indicator'),
                    $howtoTxt = $howtoSlideWrap.find('.howto-txt');
                var howtoSwiper = new Swiper($howtoSlideWrap.find('.swiper-container'), {
                    speed: 400,
                    autoplay: {
                        delay: 2000
                    },
                    navigation: {
                        nextEl: $howtoSlideWrap.find('.slide-next'),
                        prevEl: $howtoSlideWrap.find('.slide-prev')
                    },
                    on: {
                        slideChange: function() {
                            var _activeIdx = $(this)[0].realIndex;
                            $howtoSlidePaging.find('li').removeClass('active').eq(_activeIdx).addClass('active');
                            $howtoTxt.find('li').removeClass('active').eq(_activeIdx).addClass('active');
                        }
                    }
                });
    
                $howtoSlidePaging.find('a').on('click', function(e) {
                    var _idx = $(this).parent().index();
                    e.preventDefault();
                    $(this).parent().addClass('active').siblings().removeClass('active');
                    howtoSwiper.slideTo(_idx);
                });
    
                // caution slide
                var $cautionSlideWrap = $('.caution-slide'),
                    $cautionContainer = $cautionSlideWrap.find('> .swiper-container'),
                    setSlide = false,
                    setMobileSlide = false,
                    mobileSlideMove = [false, false],
                    cautionSwiper,
                    cautionMobileSwiper = [],
                    mobileSlideAuto;
    
                function cautionSwiperSet() {
                    if (windowWidth <= 767) {
                        setSlide = false;
                        if (cautionSwiper != undefined) {
                            cautionSwiper.destroy();
                            cautionSwiper = undefined;
                        }
                        if (!setMobileSlide) {
                            setMobileSlide = true;
                            $cautionSlideWrap.find('.swiper-slide').removeClass('swiper-slide');
                            $cautionSlideWrap.find('.caution-list').addClass('swiper-wrapper').each(function(i) {
                                var _this = $(this);
                                _this.wrap('<div class="swiper-container mobile-container">');
                                _this.find('li').addClass('swiper-slide');
                                cautionMobileSwiper[i] = new Swiper(_this.parent('.mobile-container'), {
                                    init: false,
                                    on: {
                                        slideChangeTransitionStart: function() {
                                            mobileSlideMove[i] = true;
                                        },
                                        slideChangeTransitionEnd: function() {
                                            var _activeIdx = $(this)[0].realIndex;
                                            if (_activeIdx >= 2) {
                                                mobileSlideAuto = setTimeout(function() {
                                                    $('.caution-tab > a.active').siblings().click();
                                                }, 2000);
                                            }
                                        }
                                    },
                                    loop: true,
                                    speed: 500,
                                    autoplay: {
                                        delay: 2000
                                    },
                                    pagination: {
                                        el: _this.parents('.slide-item').find('.mobile-indicator'),
                                        clickable: true
                                    }
                                });
                            });
    
                            $('.caution-tab > a').on('click', function(e) {
                                e.preventDefault();
                                var _getData = $(this).data('slide'),
                                    _slideIdx = $(this).index();
                                clearTimeout(mobileSlideAuto);
                                $(this).addClass('active').siblings().removeClass('active');
                                $('div[data-slide-name="' + _getData + '"]').addClass('active').siblings().removeClass('active');
    
                                if (!mobileSlideMove[_slideIdx]) {
                                    cautionMobileSwiper[_slideIdx].init();
                                    cautionMobileSwiper[_slideIdx].autoplay.stop();
                                }
                                if ($('.바구니-caution').parent('.sec').hasClass('show')) {
                                    if (_slideIdx == 0) {
                                        cautionMobileSwiper[1].autoplay.stop();
                                        cautionMobileSwiper[0].autoplay.start();
                                    } else {
                                        cautionMobileSwiper[0].autoplay.stop();
                                        cautionMobileSwiper[1].autoplay.start();
                                    }
                                }
    
                            }).eq(0).click();
                        }
                    } else {
                        setMobileSlide = false;
    
                        if (cautionMobileSwiper != undefined) {
                            $.each(cautionMobileSwiper, function(i) {
                                cautionMobileSwiper[i].init(function() {
                                    return false;
                                });
    
                                cautionMobileSwiper[i].destroy();
                            });
                            cautionMobileSwiper = [];
                        }
                        if (!setSlide) {
                            setSlide = true;
    
                            if ($cautionSlideWrap.find('.mobile-container').length != 0) {
                                $cautionSlideWrap.find('.caution-list').removeClass('swiper-wrapper').unwrap();
                                $cautionSlideWrap.find('.caution-list li').removeClass('swiper-slide');
                            }
                            $cautionContainer.find('> .swiper-wrapper > div').addClass('swiper-slide');
                            cautionSwiper = new Swiper($cautionSlideWrap.find('.swiper-container'), {
                                loop: true,
                                speed: 500,
                                autoplay: {
                                    delay: 2000
                                },
                                navigation: {
                                    nextEl: $cautionSlideWrap.find('.slide-next'),
                                    prevEl: $cautionSlideWrap.find('.slide-prev')
                                },
                                pagination: {
                                    el: $cautionSlideWrap.find('.indicator'),
                                    clickable: true
                                }
                            });
                        }
                    }
                }
                cautionSwiperSet();
    
                // map
                var $mapWrap = $('.바구니-where .map-wrap'),
                    $mapLocationBtn = $mapWrap.find('.indicator li'),
                    mapLength = $mapLocationBtn.length,
                    $mapLocation = $mapWrap.find('.map > div'),
                    mapIndex = 0,
                    onInterval;
    
                $mapLocationBtn.find('a').on('click', function(e) {
                    e.preventDefault();
                    var _dataWhere = $(this).data('location');
                    clearInterval(onInterval);
                    $(this).parent().addClass('active').siblings().removeClass('active');
                    $mapLocation.removeClass('active').filter('.' + _dataWhere).addClass('active');
                    mapIndex = $(this).parent().index();
                });
                $mapLocation.find('a').on('click', function(e) {
                    e.preventDefault();
                    var _dataWhere = $(this).parent().attr('class');
                    clearInterval(onInterval);
                    if (!$(this).parent().hasClass('active')) {
                        $(this).parent().addClass('active').siblings().removeClass('active');
                        $mapLocationBtn.removeClass('active');
                        $mapLocationBtn.find('a[data-location=' + _dataWhere + ']').parent().addClass('active');
                    }
                    mapIndex = $(this).parent().index();
                });
    
                function mapAutoActive() {
                    onInterval = setInterval(function() {
                        (mapIndex >= mapLength - 1) ? mapIndex = 0: mapIndex++;
                        $mapLocation.find('a').eq(mapIndex).parent().addClass('active').siblings().removeClass('active');
                        $mapLocationBtn.find('a').eq(mapIndex).parent().addClass('active').siblings().removeClass('active');
                    }, 1500);
                }
    
    
                // section show
                var $mainSec = $('.main section.sec > div[class*="바구니-"]');
                var sectionShow = function(_st) {
                    $mainSec.each(function() {
                        var _secTop = $(this).offset().top,
                            _secH = $(this).outerHeight(),
                            _secBottom = _secTop + _secH;
                        if (prevScroll > _st) {
                            if (_st < _secTop + (_secH / 2) + $header.height() && _st > _secTop) {
                                $(this).parent().addClass('show');
                            }
                            if (_st < _secTop - (_secH / 2) - $header.height()) {
                                $(this).parent().removeClass('show');
                            }
                        } else {
                            if (_st >= (_secTop - $header.height())) {
                                $(this).parent().addClass('show');
                            }
                            if (_st > _secBottom) {
                                $(this).parent().removeClass('show');
                            }
                        }
    
                    });
                    prevScroll = _st;
                }
    
    
                // resize
                $(window).resize(function() {
                    windowHeight = $(this).height();
                    windowWidth = $(window).outerWidth();
    
                    // main
                    $mainInfo.css('height', windowHeight);
                    $bgWrap.css('top', windowHeight);
                    cautionSwiperSet();
                });
    
                // load
                var startCheck = [false, false, false],
                    stopCheck = [false, false, false];
                $(window).on('load', function() {
                    sectionShow(windowScrollTop);
                    slideAutoPlay();
                });
    
                // scroll
                var prevScroll = windowScrollTop;
                $(window).scroll(function() {
                    var scrollT = $(this).scrollTop();
    
                    sectionShow(scrollT);
                    slideAutoPlay();
    
                });
    
                function slideAutoPlay() {
                    if ($howtoSlideWrap.parents('.sec').hasClass('show')) {
                        stopCheck[0] = false;
                        if (!startCheck[0]) {
                            startCheck[0] = true;
                            howtoSwiper.autoplay.start();
                        }
                    } else {
                        startCheck[0] = false;
                        if (!stopCheck[0]) {
                            stopCheck[0] = true;
                            howtoSwiper.autoplay.stop();
                        }
    
                    }
                    if ($cautionSlideWrap.parents('.sec').hasClass('show')) {
                        stopCheck[1] = false;
                        if (!startCheck[1]) {
                            startCheck[1] = true;
                            if (cautionSwiper) cautionSwiper.autoplay.start();
                            if (cautionMobileSwiper.length > 0) {
                                var tabIndex = $('.caution-tab').find('a.active').index();
                                cautionMobileSwiper[tabIndex].autoplay.start();
                            }
                        }
                    } else {
                        startCheck[1] = false;
                        if (!stopCheck[1]) {
                            stopCheck[1] = true;
                            if (cautionSwiper) cautionSwiper.autoplay.stop();
                            if (cautionMobileSwiper.length > 0) {
                                var tabIndex = $('.caution-tab').find('a.active').index();
                                cautionMobileSwiper[tabIndex].autoplay.stop();
                            }
                        }
                    }
                    // map auto
                    // if ( $mapWrap.parents('.sec').hasClass('show') ) {
                    //    stopCheck[2] = false;
                    //    if ( !startCheck[2] ) {
                    //       startCheck[2] = true;
                    //       mapAutoActive();
                    //    }
                    // } else {
                    //    startCheck[2] = false;
                    //    if ( !stopCheck[2] ) {
                    //       stopCheck[2] = true;
                    //       clearInterval(onInterval);
                    //    }
                    // }
                }
            });
        })(window.jQuery);
        </script>
    </body>

<!-- Mirrored from gbike.io/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 17 Dec 2021 04:29:15 GMT -->
</html>
