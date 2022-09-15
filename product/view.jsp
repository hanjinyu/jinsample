<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
   <head>
         <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
      <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abel&display=swap" rel="stylesheet">
    <script
 src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
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
<!--         <link href="/css/index/styles.css" rel="stylesheet" /> -->
        <style>
        body { padding: 50px;}
        .product_view { position: relative;padding: 100px 0 0 500px; width: 1000px; box-sizing: border-box;}
.product_view .img { position: absolute; left: 50px; top: 100px;}
.product_view .img > img { width: 368px; height: 370px; border:1px solid #e8e8e8; }
.product_view .img li:after { content: ""; display: block; clear: both;}
.product_view .img li { float: left; padding: 10px 10px 0 0;}
.product_view .img li.on img { border-color:#0a56a9;}
.product_view .img li img { width: 68px; height: 68px; border:1px solid #e8e8e8;}
.product_view h2 { margin: 0 0 15px; padding: 0 0 20px; border-bottom:2px solid #333; font-size:24px; color:#232323; line-height: 26px;}
.product_view table th,
.product_view table td { padding:14px 0; font-size: 15px; color:#444; text-align: left;}
.product_view table td.price { font-size: 22px;}
.product_view table td.total { font-size:19px; color:#0a56a9;}
.product_view table td.total b { font-size: 22px;}
.product_view table .length { position: relative; width: 71px; height: 32px; border:1px solid #c6c6c6;}
.product_view table .length input { width:44px; height: 30px; border:none;border-right:1px solid #c6c6c6; text-align:center; }
.product_view table .length a { overflow: hidden;position: absolute; right: 0; width: 26px; height: 16px; color:transparent;}
.product_view table .length a:nth-of-type(1) {  top: 0;background: url("../images/ico_up.png") no-repeat center;}
.product_view table .length a:nth-of-type(2) { bottom:0; background: url("../images/ico_down.png") no-repeat center; border-top:1px solid #c6c6c6;}
.product_view table select { width:100%; border:1px solid #c6c6c6; box-sizing: border-box;  background: url("../images/ico_select.png") no-repeat right 11px center;appearance:none; -webkit-appearance:none; -moz-appearance:none;}
.product_view table select::-ms-expand { display: none;}
.product_view .btns { padding: 45px 0 0; text-align: center;}
.product_view .btns > a { display: inline-block; width: 136px; height: 42px;border-radius: 2px; font-size: 16px; color:#fff; line-height: 42px; }
.product_view .btns > a.btn1 { background: #666;}
.product_view .btns > a.btn2 { background: #0a56a9;}
        	#text_in_the_image{
		float: left;
		margin-top: 50px;
		margin-left: 130px;
		text-align: left;
	}
	
	#text_in_the_image h1{
		font-size: 5em;

	}
	
	#text_in_the_image h3{
		font-size: 3em;

	}	
	
	#text_in_the_image p{
		font-size: 8em;

	}	
	
	#text_in_the_image p span{
	
		text-align: center;

		color: red;
		text-shadow: 3px 4px 5px gray;
	}
	
	.container{
		margin-top: 50px;
	}
	
	.products li{
		list-style: none;
	}
	
	.products li .scale{
		text-align: center;

	}
	
	.nav li{
		cursor: pointer;
	}
	
	.about_product li{
		list-style: none;
	}
	.about_product li img{
		margin: 70px 0;
	}
        
         section#container { }
 		 aside#aside { float:left; width:180px; }
		 aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
		 aside#aside li { font-size:16px; text-align:center; }
		 aside#aside li a { color:#000; display:block; padding:10px 0; }
		 aside#aside li a:hover { text-decoration:none; background:#eee; }
		 section#content ul li { display:inline-block; margin:10px; }
		 section#content div.productThumb img { width:200px; height:200px; }
		 section#content div.productName { padding:10px 0; text-align:center; }
 		 section#content div.productName a { color:#000; }
 div.product div.productImg { float:center; width:350px; }
 div.product div.productImg img { width:350px; height:auto; }
 
 div.product div.productInfo { float:center; width:330px; font-size:22px; float: right; position: relative;}
 div.product div.productInfo p { margin:0 0 20px 0; }
 div.product div.productInfo p span { display:inline-block; width:100px; margin-right:15px; }
 
 div.product div.productInfo p.cartStock input { font-size:22px; width:50px; padding:5px; margin:0; border:1px solid #eee; }
 div.product div.productInfo p.cartStock button { font-size:26px; border:none; background:none; }
 div.product div.productInfo p.addToCart { text-align:center; }
 div.product div.productContents { font-size:18px; clear:both; padding-top:30px; }
  section.replyForm { padding:30px 0; }
 section.replyForm div.input_area { margin:10px 0; }
 section.replyForm textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:500px;; height:150px; }
 section.replyForm button { font-size:20px; padding:5px 10px; margin:10px 0; background:#fff; border:1px solid #ccc; }
 
 section.replyList { padding:30px 0; }
 section.replyList ol { padding:0; margin:0; }
 section.replyList ol li { padding:10px 0; border-bottom:2px solid #eee; }
 section.replyList div.userInfo { }
 section.replyList div.userInfo .username { font-size:24px; font-weight:bold; }
 section.replyList div.userInfo .date { color:#999; display:inline-block; margin-left:10px; }
 section.replyList div.replyContent { padding:10px; margin:20px 0; }

table, th, td {
border :1px solid #bcbcbc;
}
table {
width: 100%;
height: 200px;
}
         section#container { }
 		 aside#aside { float:left; width:180px; }
		 aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
		 aside#aside li { font-size:16px; text-align:center; }
		 aside#aside li a { color:#000; display:block; padding:10px 0; }
		 aside#aside li a:hover { text-decoration:none; background:#eee; }
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
  height: 240px;
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
  padding: 8px;
}

     .bottom {
    padding: 63px 0 70px;
    background: #f9f9f9;
    border-top: 1px solid #e8e8e8;
    margin-bottom: 30px;
}
     .bottom .container > div {
    float: left;
    width: 211px;
    margin: 0 0 0 52px;
}

.bottom .container > div h3 {
    margin: 0 0 7px;
    padding: 0 0 7px;
    border-bottom: 1px solid #ddd;
    color: #222;
    font-size: 14px;
}

.bottom .container > div > strong {
    color: #565656;
    font-family: arial;
    font-size: 26px;
}

.bottom .container > div h3 {
    margin: 0 0 7px;
    padding: 0 0 7px;
    border-bottom: 1px solid #ddd;
    color: #222;
    font-size: 14px;
}

.bottom {
    padding: 63px 0 70px;
    background: #f9f9f9;
    border-top: 1px solid #e8e8e8;
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
        
        .container_box .primary {width: 100%;}
        
        .productThumb .img {width :100px; height : 100px;}
        
        .container .product .productImg {
    display: table-cell;
    width: 398px;
    height: 398px;
    border: 1px solid #d1d1d1;
    text-align: center;
    vertical-align: middle;
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
    
         <section id="contents">
            <div class="container">
            
<%-- 		<form role="form" method="post">
			 <input type="hidden" name="productId" class="productId" value="${proview.productId}" />
		</form> --%>

	<div class="product_view">
		<h2>${proview.productName}</h2>
		<table>
			<caption>
<!-- 				<details class="hide">
					<summary>상품정보</summary>
					판매가, 상품코드, 옵션 및 결제금액 안내
				</details> -->
			</caption>
			<colgroup>
			<col style="width:173px;">
			<col>
			</colgroup>
			<tbody>
			<tr>
				<th>판매가</th>
				<td class="price">${proview.productPrice} 원</td>
			</tr>
			<tr>
				<th>상품코드</th>
				<td>DSC00- ${proview.productId}</td>
			</tr>
<!-- 			<tr>
				<th>제조사/공급사</th>
				<td>CONY / 자강정보통신</td>
			</tr> -->
			<tr>
				<th>구매수량</th>
				<td>
					<div class="length">
					<button type="button" class="plus">+</button>
						<input type="number" class="numBox" min="1" max="${proview.productStock}" value="1"/>
  					 <button type="button" class="minus">-</button>
  					   			 <script>
  			 $(".plus").click(function(){
  				 var num = $(".numBox").val();
  				 var plusNum = Number(num) + 1;
  				 
  				 if(plusNum >= ${proview.productStock}) {
  					 $(".numBox").val(num);
  				 } else {
  					 $(".numBox").val(plusNum);
  				 }
  			 });
  			 
  			 $(".minus").click(function(){
  				var num = $(".numBox").val();
  				var minusNum = Number(num) - 1;
  				
  				if(minusNum <= 0) {
  					$(".numBox").val(num);
  				} else {
  					$(".numBox").val(minusNum);
  				}
  			 });
  			 </script>
					</div>

				</td>
			</tr>
			<tr>
				<th>배송비</th>
				<td>무료배송</td>
			</tr>
			<tr>
				<th>결제금액</th>
				<td class="total">${proview.productPrice * 4} 원</td>
			</tr>
			</tbody>
		</table>
		<div class="img">
			<img src="${proview.productImage}" alt="">
		</div>
		<div class="btns">
			<a href="#a" class="btn1">장바구니</a>
			<script>
			 $(".btn1").click(function(){
 					
   				var productId = $(".productId").val();
   				var quantity = $(".numBox").val();
      
   				var data = {
   						productId : productId,
   						quantity : quantity
     			};
   
   				$.ajax({
    			url : "/product/view/addCart",
    				    type : "post",
    				    data : data,
    				    success : function(result){
    				        if(result == 1) {
    				            alert("카트 담기 성공");
    				            $(".numBox").val("1");
    				           } else {
    				            alert("회원만 사용할 수 있습니다.")
    				            $(".numBox").val("1");
    				           }
    				          },
    				          error : function(){
    				           alert("카트 담기 실패");
    				          }
    				         });
    				        });
    			   </script>
			<a href="#a" class="btn2">구매하기</a>
			  <script>
 				$(".btn1").click(function(){
 					
   				var productId = $(".productId").val();
   				var quantity = $(".numBox").val();
      
   				var data = {
   						productId : productId,
   						quantity : quantity
     			};
   
   				$.ajax({
    			url : "/product/orderpage",
    				    type : "post",
    				    data : data,
    				    success : function(){
    				    	location.href="/product/orderpage";

    				          },

    				         });
    				        });
    			   </script>
		</div>
		<div class="productContents">${proview.productContents}</div>
	</div>

		<div class="row reviews" style="margin-top: 100px;">
			<h1 class="page-header">QnA</h1>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>작성자</th>
						<th>내용</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${qna}" var="qna">
						<tr>
							<td>${qna.username}</td>
							<td>${qna.qnaCon}</td>
							<td><fmt:formatDate value="${qna.qnaDate}" type="date"
									pattern="yyyy-MM-dd" /></td>
						</tr>
						
					</c:forEach>
					
				</tbody>
			</table>

 			 </div>
 			<div id="reply">
			 <c:if test="${member == null }">
			  <p>소감을 남기시려면 <a href="/member/login">로그인</a>해주세요</p>
			 </c:if>
 
			 <c:if test="${member != null}">
			 <section class="replyForm">
			  <form role="form" method="post" autocomplete="off">
			  <input type="hidden" name="productId" value="${proview.productId}">
			   <div class="input_area">
			    <textarea name="qnaCon" id="qnaCon"></textarea>
			   </div>
   
			   <div class="input_area">
			    <button type="submit" id="reply_btn">소감 남기기</button>
			   </div>
			   
   
			  </form>
			 </section>
			 </c:if>
		</div>
		</div>
		</section>


	<hr>
	

<section>
 
 		<div class="productInfo">
 
			<section class="replyList">
<%-- 			 <ol>
			 <c:forEach items="${qna}" var="qna">

			  <li>
			      <div class="userInfo">
			       <span class="username">${qna.username}</span>
			       <span class="date"><fmt:formatDate value="${qna.qnaDate}" pattern="yyyy-MM-dd" /></span>
			      </div>
			      <div class="replyContent">${qna.qnaCon}</div>
			 <section class="replyqnaForm">
			  <form role="form" method="post" autocomplete="off">
			  <input type="hidden" name="productId" value="${proview.productId}">
			   <div class="input_area">
			    <textarea name="qnaCon" id="qnaCon"></textarea>
			   </div>
   
			   <div class="input_area">
			    <button type="submit" id="replyqna_btn">답글 남기기</button>
			   </div>
			  </form>
			 </section>
			  </li>
			   </c:forEach>
			  </ol> --%>
 		<script> 
		 function replyList() {
 			var productId = ${proview.productId};
			 $.getJSON("/product/view/qnaList" + "?n=" + productId, function(data){
			  var str = "";
  
			  $(data).each(function(){
   
			   console.log(data);
   
			   var qnaDate = new Date(this.qnaDate);
			   qnaDate = qnaDate.toLocaleDateString("ko-US")
   
			   str += "<li data-productId='" + this.productId + "'>"
			     + "<div class='userInfo'>"
			     + "<span class='username'>" + this.username + "</span>"
			     + "<span class='date'>" + qnaDate + "</span>"
			     + "</div>"
			     + "<div class='replyContent'>" + this.qnaCon + "</div>"
 			    + "</li>";           
			  });
  
			  $("section.replyList ol").html(str);
			 });
			 }
			</script>
			</section>
			</div>
			</section>
        <!-- Footer-->
        <footer id="footer">
            <div class="bottom">
    <div class="container">
    <div class="cs-center" style="width: 40%;">
    <h3>고객센터</h3>
    <strong>063-452-5357</strong>
    </div>
    <div class="bank-info" style="width: 40%;">
    <h3>계좌번호</h3>
    <strong>ㅇㅇㅇㅇㅇㅇㅇㅇ</strong>
    </div>
    </div></div>
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
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
      </body>
</html>