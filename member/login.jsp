    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
       <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abel&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
        <title>Dahlson Sensing</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/index/styles.css" rel="stylesheet" />
         <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
      <style>
    button,
[type=button],
[type=reset],
[type=submit] {
  -webkit-appearance: button;
}
button:not(:disabled),
[type=button]:not(:disabled),
[type=reset]:not(:disabled),
[type=submit]:not(:disabled) {
  cursor: pointer;
}
</style>
     <style>
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
        img, video {width: 100%;}

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
        body {background: repeat-x center top;}
        #header {}
        #nav {background-color: ##050099;}
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
        .container {position: relative; width: 1200px; margin: 0 auto; /* background: rgba(0,0,0,0.3); */}

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
            background-color: ##050099;
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

        /* 블로그1 */
        .blog1 img {width: 100%;}
        .blog1 .img-retina {display: none;}

        @media only screen and (-webkit-min-device-pixel-ratio: 1.5),
            only screen and (min-device-pixel-ratio: 1.5),
            only screen and (min-resolution: 1.5dppx) {
                .blog1 .img-retina {display: initial;}
                .blog1 .img-normal {display: none;}
        }

        /* 블로그2 */
        .blog2 h5 {color: #fff; text-align: center; padding: 30px 30px; text-transform: uppercase;}
        .blog2 p {padding-top: 5px;}
        .blog2 .img-retina {
            background-image: url(../img/blog4_@1.jpg);
            background-size: cover;
        }
        @media only screen and (-webkit-min-device-pixel-ratio: 2),
            only screen and (min-device-pixel-ratio: 2),
            only screen and (min-resolution: 2dppx) {
                .blog2 .img-retina {background-image: url(../img/blog4_@2.jpg);}
        }
        @media only screen and (-webkit-min-device-pixel-ratio: 3),
            only screen and (min-device-pixel-ratio: 3),
            only screen and (min-resolution: 3dppx) {
                .blog2 .img-retina {background-image: url(../img/blog4_@3.jpg);}
        }

        /* 이미지 슬라이드 */
        .slider figure {position: relative;}
        .slider figcaption {
            position: absolute; bottom: 0; left: 0; width: 100%; padding: 20px;
            box-sizing: border-box;
            background-color: rgba(0,0,0,0.5);
            color: #fff;
            font-size: 18px;
        }
        .slider figcaption em {
            display: block; font-weight: bold; font-size: 28px;
            text-transform: uppercase; font-family: 'Abel', sans-serif;
            opacity: 0;
            transition: all .84s ease;
            transform: translateX(50px);
        }
        .slider figcaption span {
            display: block;
            overflow: hidden; text-overflow: ellipsis; white-space: nowrap;
            opacity: 0;
            transition: all .84s .2s ease;
            transform: translateX(50px);
        }
        .slider .slick-active figcaption em {opacity: 1; transform: translateX(0);}
        .slider .slick-active figcaption span {opacity: 1; transform: translateX(0);}

        .slider .slick-dots {display: block; width: 100%; text-align: center;}
        .slider .slick-dots li {display: inline-block; width: 15px; height: 15px; margin: 5px;}
        .slider .slick-dots li button {
            font-size: 0; line-height: 0;
            display: block; width: 15px; height: 15px;
            cursor: pointer;
            background: #5dbfeb;
            border-radius: 50%;
        }
        .slider .slick-dots li.slick-active button {background: #2b91c8;}
        .slider .slick-prev {
            position: absolute; left: 0; bottom: 0; z-index: 1000;
            width: 30px; height: 30px;
            display: inline-block;
            text-indent: -9999px;
            font: normal normal normal 14px/1 FontAwesome;
        }
        .slider .slick-prev::before {
            content:"\f053";
            color: #5dbfeb;
            text-indent: 0;
            position: absolute; left: 9px; top: 8px;
        }
        .slider .slick-next {position: absolute; right: 0; bottom: 0; z-index: 1000;
            width: 30px; height: 30px;
            display: inline-block;
            text-indent: -9999px;
            font: normal normal normal 14px/1 FontAwesome;
        }
        .slider .slick-next::before { 
            content:"\f054";
            color: #5dbfeb;
            text-indent: 0;
            position: absolute; left: 11px; top: 8px;
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
        .footer {text-align: center; padding: 30px 50px;} 
        .footer li {position: relative; display: inline; padding: 0 7px 0 10px; white-space: nowrap;}
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

            .slider figcaption {padding: 10px;}
            .slider figcaption em {font-size: 18px;}
            .slider figcaption span {font-size: 14px;}

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
        
#container > #content {
    display: table-cell;
    width: 100%;
    padding: 0 0 100px;
    vertical-align: top;
}

.member {
    width: 579px;
    margin: 0 auto;
    padding: 60px 0;
}
.member .box {
    margin: 17px 0 0;
    padding: 53px 54px 59px;
    border: 1px solid #dcdcdc;
}

.member .box .login_wrap {
    overflow: hidden;
}

.member .box .login_wrap .input-info {
    float: left;
}

.member .box .login_wrap .input-info div .text {
    width: 275px;
    height: 40px;
    padding: 0 13px;
    border: 1px solid #ccc;
    color: #8c8c8c;
    font-size: 13px;
    line-height: 36px;
    margin-bottom: 5px;
}

.member .box .login_wrap button {
    float: right;

}

.skinbtn.point1.l-confirm, .skinbtn.point2.l-login, .skinbtn.point2.fi-id {
    width: 158px;
    height: 87px;
    font-size: 16px;
    font-weight: bold;
    line-height: 85px;
}

.skinbtn.point2 {
    background: #3e3d3c;
    border: 1px solid #3e3d3c;
    color: #fff;
    font-weight: bold;
}
.skinbtn {
    display: inline-block;
    *display: inline;
    *zoom: 1;
    height: 40px;
    padding: 0 5px;
    text-align: center;
    vertical-align: top;
    box-sizing: border-box;
    cursor: pointer;
    font-size: 12px;
}

button {
    cursor: pointer;
    background: none;
    border: none;
    outline: none;
    font-family: Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
}

.member h2 {
    color: #222;
    font-size: 28px;
}
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

<div id="content">
	<div class="member">
	<h2>Login</h2>
	<div class="box">
	<form id="login_form" method="post">
	<div class="login_wrap">
	<div class="input-info">
	<div>
	<input type="text" class="text" id="userid" name="userid" value placeholder="ID" required="true" aria-required="true">
	</div>
	<div>
	<input type="password" class="text" id="userpw" name="userpw" value placeholder="PW" required="true" aria-required="true">
	</div>

	</div>
		<button type="submit" class="skinbtn point2 l-login member_login_order_btn">
	<em>Login</em>
	</button>
	</div>
	</form>
	</div>
	</div>
	</div>


<script type="text/javascript">	

	/* 로그인 버튼 클릭 메서드 */
	$("#login_button").click(function(){
		
		//alert("로그인 버튼 작동");
		
		/* 로그인 메서드 서버 요청 */
		$("#login_form").attr("action", "/member/login.do");
		$("#login_form").submit();
		
	});

</script>

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