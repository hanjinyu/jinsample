<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
   <head>
       <script src="js/jquery.min_1.12.4.js"></script>
      <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abel&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <link rel="stylesheet" href="css/slick.css">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dahlson Sensing</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/index/styles.css" rel="stylesheet" />
        <style>
table {
    width: 100%;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  margin: auto;
    border-collapse: collapse;
    margin-top: 10px;
}

caption {
	font-size: 18px;
    font-weight: bold;
    padding-bottom: 5px;
}

table td {
    padding: 10px;
    background-color: #fff;
      border: 1px solid #38678f;
}

table th {
  border: 1px solid #38678f;
    background-color: #050099;
    color: #fff;
    padding: 10px;
}

img {
    width: 100px;
    height: 100px;
}


.tablefoot {
    padding: 0;
    border-bottom: 3px solid #009688;
}
         section#container { }
		 section#content ul li { display:inline-block; margin:10px; }
		 img { width:100px; height:100px; }
		 section#content div.productName { padding:10px 0; text-align:center; }
 		 section#content div.productName a { color:#000; }

        <style data-jss="" data-meta="makeStyles">
.jss101 {
  margin: 15px 0;
  padding-bottom: 8px;
}
.jss101::-webkit-scrollbar-track {
  border-radius: 4px;
}
.jss101:hover::-webkit-scrollbar-track {
  border-radius: 6px;
}
.jss104 {
  width: 100%;
}
.jss103 {
  border: 1px solid #CCCCCC;
  margin: 0;
  position: relative;
  box-shadow: 0 0 6px 0 rgba(0,0,0,0.08);
  border-radius: 6px;
  background-color: #FFFFFF;
}
.jss105 {
  height: 100px;
}
.jss105:not(:last-child) > div {
  padding-bottom: 24px;
}
.jss106 {
  color: #222222;
  padding: 12px;
  font-size: 12px;
  font-weight: bold;
  line-height: 14px;
  border-bottom: 1px solid #CCCCCC;
}
.jss107 {
  flex-shrink: 0;
}
.jss107:last-child {
  padding-right: 0;
}
.jss107:not(:last-child) {
  padding-right: 2px;
}
.jss108 {
  width: 100%;
  overflow: hidden;
}
.jss108:focus {
  outline: none;
}
.jss109 {
  color: #000000;
  cursor: pointer;
  padding: 2px 0px 0px 12px;
  overflow: hidden;
  font-size: 12px;
  white-space: nowrap;
  text-overflow: ellipsis;
}
</style>
<style data-jss="" data-meta="Category">
.Category-container {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  box-sizing: border-box;
}
.Category-item {
  margin: 0;
  box-sizing: border-box;
}
.Category-wrap-xs-nowrap {
  flex-wrap: nowrap;
}

.Category-spacing-xs-2 {
  width: calc(100% + 16px);
  margin: -8px;
}
.Category-spacing-xs-2 > .Category-item {
  padding: 25px;
}

        /* 여백 초기화 */
        body, div, ul, li, dl, dd, dt, ol, h1, h2, h3, h4, h5, h6, input, fieldset, legend, p, select, table, th, td, tr, textarea, button, form, figure, figcaption {margin:0; padding:0;}

        /* a 링크 초기화 */
        a {color: #222; text-decoration: none;}
        a:hover {color: #2698cb;}

        /* 폰트 초기화 */
        body, input, textarea, select, button, table {font-family: 'Nanum Gothic', AppleSDGothicNeo-Regular,'Malgun Gothic','맑은 고딕',dotum,'돋움',sans-serif; color: #222; font-size: 13px; line-height: 1.5;}

        /* 폰트 스타일 초기화 */
        em, address {font-style: normal;}

        /* 블릿기호 초기화 */
        ul, li, ol {list-style: none;}

        /* 제목 태그 초기화 */
        h1, h2, h3, h4, h5, h6 {font-size: 13px; font-weight: normal;}

        /* 버튼 초기화*/
        button {border: 0;}

        /* 반응형 이미지 */
/*         img, video {width: 100%;} */

        /*반응형 이미지 */
        img {width: 100%;}

        /* clearfix */
        .clearfix {*zoom: 1;}
        .clearfix:before, .clearfix:after {display: block; content: ''; line-height: 0;}
        .clearfix:after {clear: both;}

        /* IR 효과 */
        .ir_pm {display:block; overflow:hidden; font-size:0; line-height:0; text-indent:-9999px;} /* 의미있는 이미지의 대체 텍스트를 제공하는 경우(Phark Method) */
        .ir_wa {display:block; overflow:hidden; position:relative; z-index:-1; width:100%; height: 100%;} /* 의미있는 이미지의 대체 텍스트로 이미지가 없어도 대체 텍스트를 보여주고자 할 때(WA IR) */
        .ir_su {overflow: hidden; position:absolute; width:0; height:0; line-height:0; text-indent:-9999px;} /* 대체 텍스트가 아닌 접근성을 위한 숨김 텍스트를 제공할 때 */

        /* margin, padding */
        .mt10 {margin-top: 10px !important;}
        .mt15 {margin-top: 15px !important;}
        .mt20 {margin-top: 20px !important;}
        .mt25 {margin-top: 25px !important;}
        .mt30 {margin-top: 30px !important;}
        .mt35 {margin-top: 35px !important;}
        .mt40 {margin-top: 40px !important;}
        .mt45 {margin-top: 45px !important;}
        .mt50 {margin-top: 50px !important;}
    </style>
    <style>
        /* 레이아웃 */
        body {background: url(../img/header_bg.jpg) repeat-x center top;}
        #header {}
        #nav {background-color: #4374D9;}
        #title {background-color: #4374D9;}
        #contents .container {border-right: 1px solid #dbdbdb; border-left: 1px solid #dbdbdb;}
        #cont_left {float: left; width: 250px;}
        #cont_center {
            overflow: hidden;;
            border-right: 1px solid #dbdbdb;
            border-left: 1px solid #dbdbdb;
        }
        #cont_right {position: absolute; right: 0; top: 0; width: 250px;}
        #footer {border-top: 1px solid #dbdbdb;} 

        /* 컨테이너 */
        .container {position: relative; width: 100%; margin: 0 auto; /* background: rgba(0,0,0,0.3); */}

		.table {text-align:center; width:100%; margin: 0 auto;}
		
        /* 헤더 */
        .header {height: 200px;}
        .header .header_menu {text-align: right;}
        .header .header_menu a {color: #000; padding: 8px 0 6px 10px; display: inline-block; transition: color 0.3s ease; font-family: 'Abel', sans-serif;}
        .header .header_menu a:hover {color: #ccc;}

        .header .header_tit {text-align: center; text-transform: uppercase; margin-top: 10px; }
        .header .header_tit h1 {
            font-size: 30px; 
            color: #fff; 
            background: #fff; 
            display: inline-block; 
            padding: 5px 30px 5px 30px; 
            letter-spacing: 2px; 
            font-weight: 900; 
            transition: box-shadow 0.25s ease-in-out;
        }
        .header .header_tit h1:hover {
            box-shadow: 
                inset -9em 0 0 0 #257fac, 
                inset 9em 0 0 0 #257fac;
            }
        .header .header_tit a {
            font-size: 16px; 
            color: #fff; 
            background: #fff; 
            display: inline-block; 
            padding: 10px 20px 10px 20px; 
            margin-top: -7px; 
            transition: box-shadow 0.25s ease-in-out;
        }
        .header .header_tit a:hover {
            box-shadow: 
                0 0 0 5px rgba(75,154,191,0.9) inset, 
                0 0 0 100px rgba(0,0,0,0.1) inset;
        }

        .header .header_icon {text-align: center; margin-top: 40px; padding-bottom: 45px;}
        .header .header_icon li {display: inline; margin: 0 2px;}
        .header .header_icon li a {
            position: relative; 
            background-color: #3192bf; 
            border-radius: 50%; 
            width: 60px; height: 60px; 
            color: #fff;  display: 
            inline-block; 
            font-size: 35px; 
            line-height: 60px; 
            transition: all 0.3s ease;
        }
        .header .header_icon li a span {
            position: absolute; 
            left: 50%; top: -40px; 
            transform: translateX(-50%); 
            font-size: 12px; 
            line-height: 1.6; 
            background: #3192bf; 
            padding: 3px 9px; 
            border-radius: 6px 0; 
            opacity: 0; 
            transition: all 0.3s ease;
        }
        .header .header_icon li a span:before {
            content:''; 
            position: absolute; 
            left: 50%; bottom: -5px; 
            margin-left: -5px; 
            border-top: 5px solid #3192bf; 
            border-left: 5px solid transparent; 
            border-right: 5px solid transparent;
        }
        .header .header_icon li a:hover span {
            opacity: 1; 
            top: -33px;
        }
        .header .header_icon li a:hover {
            box-shadow: 
                0 0 0 3px rgba(75,154,191,0.9) inset, 
                0 0 0 100px rgba(0,0,0,0.1) inset;
        }

		.td {width:100px; height:100px;}
        /* 전체 메뉴 */
        .nav {overflow: hidden; padding: 25px 0; display: none;}
        .nav > div {float: left; width: 40%;}
        .nav > div:last-child {width: 20%;}
        .nav > div ol {overflow: hidden;}
        .nav > div li {float: left; width: 50%; position: relative; padding-left: 8px; box-sizing: border-box;}
        .nav > div:last-child li {width: 100%;}
        .nav > div li:before {
            content: '';
            width: 3px; height: 3px;
            background-color: #25a2d0;
            border-radius: 50%;
            position: absolute; left: 0; top: 6px;
        }
        .nav > div h3 {font-size: 18px; color: #25a2d0; font-weight: bold; margin-bottom: 4px;}
        .nav > div li a {position: relative;}
        .nav > div li a:after {
            content: '';
            display: inline-block;
            width: 0; height: 1px;
            background: #25aad0;
            transition: all .2s ease-out;
            position: absolute; bottom: 0; left: 0;
        }
        .nav > div li:hover a:after {width: 100%;}

        /* 타이틀 */
        .title {position: relative; text-align: center;}
        .title h2 {font-family: 'Nanum Brush Script', cursive; font-size: 39px; color: #fff; padding: 5px 0;}
        .title .btn {
            position: absolute; right: 0; top: 5px;
            width: 60px; height: 60px;
            line-height: 60px;
            background: #3192bf; color: #fff;
            font-size: 35px;
            border-radius: 50%;
            transition: all 0.3s ease;
        }
        .title .btn:hover {
            box-shadow:
                0 0 0 3px rgba(71,154,191,0.9) inset,
                0 0 0 100px rgba(0,0,0,0.1) inset; 
        }

        /* 컨텐츠 영역 */
        .column {padding: 15px; border-bottom: 1px solid #dbdbdb;}
        .column .col_tit {font-size: 20px; color: #2f7fa6; padding-bottom: 5px;}
        .column .col_desc {
            border-bottom: 1px dashed #dbdbdb; 
            padding-bottom: 15px; margin-bottom: 15px; 
            color: #878787; line-height: 18px;
        }
        .column.col1 {}
        .column.col2 {}
        .column.col3 {border-bottom: 0;}
        .column.col4 {}
        .column.col5 {}
        .column.col6 {border-bottom: 0;}
        .column.col7 {}
        .column.col8 {}
        .column.col9 {border-bottom: 0;}

        /* 메뉴 */
        .menu {}
        .menu li {position: relative;}
        .menu li a {
            font-size: 16px; text-transform: uppercase;
            color: #878787;
            border-bottom: 1px solid #dbdbdb;
            padding: 10px; display: block;
            transition: box-shadow 0.34s ease, background 0.34s ease;
        }
        .menu li a i {
            position: absolute; right: 10px; top: 15px;
        }
        .menu li a:hover {
            box-shadow: inset 180px 0 0 0 rgba(36,130,174,0.7);
            color: #fff;
            background: rgba(36,130,174,0.9);
        }

        /* 게시판1 */
        .notice1 {position: relative;}
        .notice1 h5 {font-size: 14px; color: #2f7fa6; padding-bottom: 5px;}
        .notice1 li {position: relative; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; padding-left: 8px;}
        .notice1 li:before {
            content: '';
            width: 3px; height: 3px;
            border-radius: 50%;
            background: #449ce2;
            position: absolute; left: 0; top: 6px;
        }
        .notice1 .more {
            position: absolute; right: 0; top: 3px;
            color: #878787;
            text-transform: uppercase;
            font-size: 10px;
        }

        /* 게시판2 */
        .notice2 {position: relative;}
        .notice2 h5 {font-size: 14px; color: #2f7fa6; padding-bottom: 5px;}
        .notice2 li {
            position: relative;
            overflow: hidden; text-overflow: ellipsis;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp:2;
            padding-left: 8px;
            padding-bottom: 5px;
            max-height: 40px; /* ie */
        }
        .notice2 li:before {
            content: '';
            width: 3px; height: 3px;
            border-radius: 50%;
            background: #449ce2;
            position: absolute; left: 0; top: 6px;
        }
        .notice2 .more {
            position: absolute; right: 0; top: 3px;
            color: #878787;
            text-transform: uppercase;
            font-size: 10px;
        }




        /* 라이트 박스 */
        .square a {position: relative; overflow: hidden; float: left; width: 19%; margin: 0.5%;}
        .square a img {width: 100%; display: block;}
        .square a em {background: rgba(0,0,0,.77); color: #fff; width: 100%; text-align: center; 
            position: absolute; left: 0; bottom: -30px; opacity: 1; transition: all .3s ease;}
        .square a:hover em {bottom: 0; background: rgba(0,0,0,.57);}
        .square a:nth-child(1):hover img {filter: blur(2px);}
        .square a:nth-child(2):hover img {filter: brightness(50%);}
        .square a:nth-child(3):hover img {filter: contrast(10%);}
        .square a:nth-child(4):hover img {filter: grayscale(100%);}
        .square a:nth-child(5):hover img {filter: hue-rotate(120deg);}
        .square a:nth-child(6):hover img {filter: invert(100%);}
        .square a:nth-child(7):hover img {filter: opacity(10%);}
        .square a:nth-child(8):hover img {filter: saturate(10%);}
        .square a:nth-child(9):hover img {filter: sepia(120%);}
        .square a:nth-child(10):hover img {filter: sepia(120%) hue-rotate(120deg);}

        /* 비디오 */
        .video {position: relative; width: 100%; padding-bottom: 56.25%;}
        .video iframe {position: absolute; width: 100%; height: 100%;}

        /* 푸터 */
        .footer {text-align: center; padding: 50px 50px;} 
        .footer li {position: relative; display: inline; padding: 0 10px 0 10px; white-space: nowrap;}
        .footer li:before {content: ''; width: 1px; height: 12px; background-color: #dbdbdb; position: absolute; left: 0; top: 2px;}
        .footer li:first-child:before {width: 0;}
        .footer address {padding-top: 15px;}

        /* 사이드 이펙트1 */
        .side1 {position: relative; perspective: 600px; display: block;}
        .side1 .front {
            transform-style: preserve-3d;
            transform: rotateY(0deg);
            transition: all 0.5s ease-in-out;
            backface-visibility: hidden;
        }
        .side1 .back {
            position: absolute; top: 0; left: 0;
            width: 100%; height: 100%; z-index: -1;
            transform-style: preserve-3d;
            color: #fff;
            background: #4038dc;
            transform: rotateY(-180deg);
            transition: all 0.5s ease-in-out;
            backface-visibility: hidden;
        }
        .side1 .back i {position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); font-size: 60px;}
        .side1:hover .front {transform: rotateY(180deg)}
        .side1:hover .back {transform: rotateY(0deg); z-index: 1;}

        /* media query*/
        /* 화면 너비 0 ~ 1220px */
        @media (max-width: 1220px){
            .container {width: 100%;}
            .row {padding: 0 15px;}
            #contents .container {border: 0;}

            .title .btn {right: 5px;}
            .square a {width: 24%;}
            .square a:nth-child(5n) {display: none;}
        }

        /* 화면 너비 0 ~ 1024px */
        @media (max-width: 1024px){
            .square a {width: 32.3333%;}
            .square a:nth-child(5) {display: block;}
        }

        /* 화면 너비 0 ~ 960px */
        @media (max-width: 960px){
            #cont_right {position: static; width: 100%; border-top: 1px solid #dbdbdb;}
            #cont_center {margin-right: 0; border-right: 0;}

            .nav > div {float: none; width: 100%;}
            .nav > div:last-child {width: 100%;}
            .nav > div li {width: 33.33333%;}
            .nav > div:last-child li {width: 33.33333%;}
            .nav > div ol {margin-bottom: 10px;}

            #cont_right {overflow: hidden;}
            #cont_right .column {float: left; width: 33.3333%; box-sizing: border-box;}
            #cont_right .column.col7 {border-right: 1px solid #dbdbdb; border-bottom: 0;}
            #cont_right .column.col8 {border-right: 1px solid #dbdbdb; border-bottom: 0;}
        }

        /* 화면 너비 0 ~ 768px */
        @media (max-width: 768px){
            #cont_left {float: none; width: 100%;}
            #cont_center {border-left: 0;}
        }

        /* 화면 너비 0 ~ 600px */
        @media (max-width: 600px){
            .header {height: auto;}
            .header .header_tit {display: none;}
            .header .header_icon {display: none;}
            .title .btn {display: none;}

            .nav > div li {width: 50%;}
            .nav > div:last-child li {width: 50%;}

            .column.col1 .col_tit {display: none;}
            .column.col1 .col_desc {display: none;}
            .column.col1 .menu li a i {display: none;}
            .column.col1 {padding: 0; border-bottom: 0;}
            .column.col1 .menu ul {overflow: hidden;}
            .column.col1 .menu li {float: left; width: 33.3333%; border-right: 1px solid #dbdbdb; text-align: center; box-sizing: border-box;}
            .column.col1 .menu li:nth-child(3n) {border-right: 0;}
            .column.col1 .menu li a {color: #fff; text-shadow: 0 0 5px rgba(0,0,0,0.7);}
            .column.col1 .menu li a:hover { box-shadow: none; background: rgba(36,130,174,0.3);}
            .column.col2 {background: #fff;}
            .column.col4 {border-top: 1px solid #dbdbdb;}

            #cont_right .column {width: 50%;}
            #cont_right .column.col8 {border-right: 0;}
            #cont_right .column.col9 {display: none;}

            .square a {width: 49%;}
            .square a:nth-child(5) {display: none;}
        }

        /* 화면 너비 0 ~ 480px */
        @media (max-width: 480px){
            
        }

        /* 화면 너비 0 ~ 320px */
        @media (max-width: 320px){
            .nav > div li {width: 100%;}
            .nav > div:last-child li {width: 100%;}

            #cont_right .column {width: 100%;}
            #cont_right .column.col7 {border-right: 0; border-bottom: 1px solid #dbdbdb;}

            .square a {width: 100%; margin-right: 0; margin-left: 0;}
        }
        
        .container_box .primary {width: 100%;}
        
        .productThumb .img {width :100px; height : 100px;}
    </style>
    </head>
  <body>

    <header id="header">
        <div class="container">
            <div class="row">
                <div class="header">
                    <div class="header_menu">
                      <c:if test = "${member == null}">
                        <a href="/member/login">Login</a>
                        <a href="/member/join">Join</a>
                        <a href="/product/cart">Cart</a>
                        </c:if>
                     <c:if test="${member != null}">
                      <c:if test="${member.adminck == 1}">
                      <a href="/admin/main">Admin Page</a>
                      </c:if>
                        <a href="/logout">Logout</a>
                        <a href="#">Join</a>
                        <a href="#">Cart</a>
                     </c:if>
                    </div>
                    <!-- //header_menu -->
                    <div class="header_tit">
                        <a href="/"><img alt="로고" src="/img/Ci.png" style="width: 300px; min-width: 100px;"/></a><br>
                    </div>
                    <!-- //header_icon -->

                    <!-- 
                        https://developers.facebook.com/tools/debug/
                        https://cards-dev.twitter.com/validator
                    -->
                </div>
            </div>
        </div>
    </header>
    <!-- //header -->

    <nav id="nav">
        <div class="container">
            <div class="row">

            </div>
        </div>
    </nav>
    <!-- nav -->

    <article id="title">
        <div class="container">
            <div class="title">
                <h2>"Solution for you"</h2>

            </div>
        </div>
    </article>
    
    <main>
        <section id="contents">
            <div class="container">
              <section id="cont_left">
                    <h3 class="ir_su">반응형 사이트 왼쪽 컨텐츠</h3>
                    <article class="column col1">
                        <h4 class="col_tit">Menu</h4>
<!--                         <p class="col_desc">box-shadow를 이용한 마우스 오버 효과입니다.</p> -->
                        <!-- 메뉴 -->
                        <div class="menu">
                            <ul>
                                <li><a href="/product/productmain">All Product <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="/product/opticalsensor?c=100">Optical Sensor <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="/product/leds?c=200">LEDs <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="/product/detector?c=300">Detectors <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>

                            </ul>
                        </div>
                        <!-- //메뉴 -->
                    </article>
           </section>
                <section id="cont_center">
                    <h3 class="ir_su">반응형 사이트 가운데 컨텐츠</h3>
                    <article class="column col4">           
        <section>
<div class="jss101 jss102" data-testid="section-filters">
<div class="Category-root Category-container jss104 Category-spacing-xs-2 Category-wrap-xs-nowrap">


<div class="Category-root Category-item jss107">
<div class="jss103">
<div class="jss106">방식</div>
<div class="jss105">
<div class="jss376 jss393">
<div tabindex="0" class="jss108" data-testid="filter-box-outer-ref">
<fieldset class="MuiFormControl-root">
<div class="MuiFormGroup-root" data-testid="filter-box-group--4">
<div style="position: relative; height: 100px; width: 206.412px; overflow: auto; will-change: auto; direction: ltr;">
<div tabindex="0" data-testid="filter-box-inner-ref" style="height: 100px; width: 100%; outline: none;">
<span class="jss109" title="-" data-testid="filter--4-label-818" data-index="0" data-focused="false" data-filter-key="-4" data-filter-value="818" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 0px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-818"Onclick="location.href='/product/detectorlist?c=310&s=311&p=300'">Photo Diode</span></span>
<span class="jss109" title="*" data-testid="filter--4-label-0" data-index="1" data-focused="false" data-filter-key="-4" data-filter-value="0" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 20px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-0" Onclick="location.href='/product/detectorlist?c=320&s=321&p=300'">Photo IR</span></span>
<span class="jss109" title="0603" data-testid="filter--4-label-91606" data-index="2" data-focused="false" data-filter-key="-4" data-filter-value="91606" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 40px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-91606"Onclick="location.href='/product/detectorlist?c=300&s=310&p=300'">Photo IC</span></span>

</div></div></div></fieldset></div>

</div></div></div></div>
<div class="Category-root Category-item jss107">
<div class="jss103">
<div class="jss106">모양</div>
<div class="jss105">
<div tabindex="0" class="jss108" data-testid="filter-box-outer-ref">
<fieldset class="MuiFormControl-root">
<div class="MuiFormGroup-root" data-testid="filter-box-group--5">
<div style="position: relative; height: 100px; width: 158.494px; overflow: auto; will-change: auto; direction: ltr;">
<div tabindex="0" data-testid="filter-box-inner-ref" style="height: 100px; width: 100%; outline: none;">
<span class="jss109" title="-" data-testid="filter--5-label-8" data-index="0" data-focused="false" data-filter-key="-5" data-filter-value="8" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 0px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-8" Onclick="location.href='/product/opticalsensorlist?c=310&s=311&p=300'">Metal cam</span></span>
<span class="jss109" title="Digi-Reel®" data-testid="filter--5-label-243" data-index="1" data-focused="false" data-filter-key="-5" data-filter-value="243" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 20px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-243" Onclick="location.href='/product/opticalsensorlist?c=110&s=111&p=100'">Plastic</span></span>
<span class="jss109" title="0603" data-testid="filter--4-label-91606" data-index="2" data-focused="false" data-filter-key="-4" data-filter-value="91606" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 40px; height: 20px; width: 100%;">
<span data-testid="filter--4-option-91606"Onclick="location.href='/product/detectorlist?c=300&s=310&p=300'">COB</span></span>
</div></div></div></fieldset></div></div></div></div>

<div class="Category-root Category-item jss107">
<div class="jss103">
<div class="jss106">지향각</div>
<div class="jss105">
<div tabindex="0" class="jss108" data-testid="filter-box-outer-ref">
<fieldset class="MuiFormControl-root">
<div class="MuiFormGroup-root" data-testid="filter-box-group--5">
<div style="position: relative; height: 100px; width: 158.494px; overflow: auto; will-change: auto; direction: ltr;">
<div tabindex="0" data-testid="filter-box-inner-ref" style="height: 100px; width: 100%; outline: none;">
<span class="jss109" title="-" data-testid="filter--5-label-8" data-index="0" data-focused="false" data-filter-key="-5" data-filter-value="8" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 0px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-8">10</span></span>
<span class="jss109" title="Digi-Reel®" data-testid="filter--5-label-243" data-index="1" data-focused="false" data-filter-key="-5" data-filter-value="243" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 20px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-243">20</span></span>
<span class="jss109" title="박스" data-testid="filter--5-label-61" data-index="2" data-focused="false" data-filter-key="-5" data-filter-value="61" data-radio="false" data-common="false" data-disabled="false" style="position: absolute; left: 0px; top: 40px; height: 20px; width: 100%;">
<span data-testid="filter--5-option-61">30</span></span>

</div></div></div></fieldset></div></div></div></div>
</div>
</div>
</section>



        <!-- 네비게이션 추가  필요-->

<%--        <section id="container">
       	<div id="container_box">
       		<aside id="aside">
       		<%@ include file="include/aside.jsp" %>
       		</aside>
       	</div>
       </section> --%>
<%--        <section id="content">
		<ul>
		 <c:forEach items="${productmain}" var="productmain">
 		<li>
  			<div class="productThumb">
   			<img src="${productmain.productThumbImg}">
  			</div>
  			<div class="productName">
   			<a href="/product/view?n=${productmain.productId}">${productmain.productName}</a>
  			</div>
 		</li>
 		</c:forEach>
		</ul>
		</section> --%>

		<div id="container_box" role="region" aria-label="data table" class="primary">

        <table>
<%-- 		<caption>Optical Sensor</caption> --%>
 		<thead>
 			 <tr align = "center">
 			   <th>사진</th>
			   <th>이름</th>
			   <th>규격</th>
			   <th>가격</th>
			   <th>수량</th>

		  	</tr>
		</thead>
		 <tbody>
			  <c:forEach items="${detectormain}" var="detectormain">
			  <tr width="200px" height="100px">
			  	  <td width="200px" height="100px">
			  	  <div class="detectorThumb">
			  	  	<img src="${detectormain.productThumbImg}">
			  	  </div>
			  	  </td>
 				  <td>
 				  <a href="/product/view?n=${detectormain.productId}">${detectormain.productName}</a>
 				  </td>
				  <td>${detectormain.productIntro}</td>
 				  <td>${detectormain.productPrice}</td>
 				  <td>${detectormain.productStock}</td>
			  </tr>
			 </c:forEach>
 </tbody>
</table>
</div>

</article>
</section>
            </div>

        </section>

        <!-- //contents -->
    </main>

        <!-- Footer-->
        <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="footer">
                    <ul>
                        <li><a href="#"><strong>개인정보취급방침</strong></a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul>

                    <address>
                    <p class="m-0">Addr.(54852)Rm 407 Jeonju Innovation Startup Hub 67 Yusang-ro Deokjin-gu Jeonju-si Jeollabuk-do Korea</p>
                        Copyright ©
                        All Rights Reserved.
                    </address>
                </div>
            </div>
        </div>
    </footer>
    </body>
</html>