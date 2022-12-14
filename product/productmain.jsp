<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
   <head>
      <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abel&display=swap" rel="stylesheet">
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
table {
    width: 100%;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  margin: auto;
    border-collapse: collapse;
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

        /* ?????? ????????? */
        body, div, ul, li, dl, dd, dt, ol, h1, h2, h3, h4, h5, h6, input, fieldset, legend, p, select, table, th, td, tr, textarea, button, form, figure, figcaption {margin:0; padding:0;}

        /* a ?????? ????????? */
        a {color: #222; text-decoration: none;}
        a:hover {color: #2698cb;}

        /* ?????? ????????? */
        body, input, textarea, select, button, table {font-family: 'Nanum Gothic', AppleSDGothicNeo-Regular,'Malgun Gothic','?????? ??????',dotum,'??????',sans-serif; color: #222; font-size: 13px; line-height: 1.5;}

        /* ?????? ????????? ????????? */
        em, address {font-style: normal;}

        /* ???????????? ????????? */
        ul, li, ol {list-style: none;}

        /* ?????? ?????? ????????? */
        h1, h2, h3, h4, h5, h6 {font-size: 13px; font-weight: normal;}

        /* ?????? ?????????*/
        button {border: 0;}

        /* ????????? ????????? */
/*         img, video {width: 100%;} */

        /*????????? ????????? */
        img {width: 100%;}

        /* clearfix */
        .clearfix {*zoom: 1;}
        .clearfix:before, .clearfix:after {display: block; content: ''; line-height: 0;}
        .clearfix:after {clear: both;}

        /* IR ?????? */
        .ir_pm {display:block; overflow:hidden; font-size:0; line-height:0; text-indent:-9999px;} /* ???????????? ???????????? ?????? ???????????? ???????????? ??????(Phark Method) */
        .ir_wa {display:block; overflow:hidden; position:relative; z-index:-1; width:100%; height: 100%;} /* ???????????? ???????????? ?????? ???????????? ???????????? ????????? ?????? ???????????? ??????????????? ??? ???(WA IR) */
        .ir_su {overflow: hidden; position:absolute; width:0; height:0; line-height:0; text-indent:-9999px;} /* ?????? ???????????? ?????? ???????????? ?????? ?????? ???????????? ????????? ??? */

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
        /* ???????????? */
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

        /* ???????????? */
        .container {position: relative; width: 1200px; margin: 0 auto; /* background: rgba(0,0,0,0.3); */}

		.table {text-align:center; width:100%; margin: 0 auto;}
		
        /* ?????? */
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
        /* ?????? ?????? */
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

        /* ????????? */
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

        /* ????????? ?????? */
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

        /* ?????? */
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

        /* ?????????1 */
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

        /* ?????????2 */
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


        /* ?????? */
        .footer {text-align: center; padding: 30px 50px;} 
        .footer li {position: relative; display: inline; padding: 0 7px 0 10px; white-space: nowrap;}
        .footer li:before {content: ''; width: 1px; height: 12px; background-color: #dbdbdb; position: absolute; left: 0; top: 2px;}
        .footer li:first-child:before {width: 0;}
        .footer address {padding-top: 15px;}

        /* ????????? ?????????1 */
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
        /* ?????? ?????? 0 ~ 1220px */
        @media (max-width: 1220px){
            .container {width: 100%;}
            .row {padding: 0 15px;}
            #contents .container {border: 0;}

            .title .btn {right: 5px;}
            .square a {width: 24%;}
            .square a:nth-child(5n) {display: none;}
        }

        /* ?????? ?????? 0 ~ 1024px */
        @media (max-width: 1024px){
            .square a {width: 32.3333%;}
            .square a:nth-child(5) {display: block;}
        }

        /* ?????? ?????? 0 ~ 960px */
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

        /* ?????? ?????? 0 ~ 768px */
        @media (max-width: 768px){
            #cont_left {float: none; width: 100%;}
            #cont_center {border-left: 0;}
        }

        /* ?????? ?????? 0 ~ 600px */
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

        /* ?????? ?????? 0 ~ 480px */
        @media (max-width: 480px){
            
        }

        /* ?????? ?????? 0 ~ 320px */
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
                        <a href="/"><img alt="??????" src="/img/Ci.png" style="width: 300px; min-width: 100px;"/></a><br>
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
                <h2 class="ir_su">????????? ????????? ?????????</h2>
                <section id="cont_left">
                    <h3 class="ir_su">????????? ????????? ?????? ?????????</h3>
                    <article class="column col1">
                        <h4 class="col_tit">Menu</h4>
<!--                         <p class="col_desc">box-shadow??? ????????? ????????? ?????? ???????????????.</p> -->
                        <!-- ?????? -->
                        <div class="menu">
                            <ul>
                                <li><a href="/product/productmain">All Product <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="/product/opticalsensor?c=100">Optical Sensor <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="/product/leds?c=200">LEDs <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="/product/detector?c=300">Detectors <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>

                            </ul>
                        </div>
                        <!-- //?????? -->
                    </article>
                    <!-- //col1 -->
                    <!-- //col -->
                    <!-- //col3 -->
                </section>
                <section id="cont_center">
                    <h3 class="ir_su">????????? ????????? ????????? ?????????</h3>
                    <article class="column col4">
		<div id="container_box" role="region" aria-label="data table" class="primary">

        <table>
		<caption>All Products</caption>
 		<thead>
 			 <tr align = "center">
 			   <th colspan="2">??????</th>
			   <th>??????</th>
			   <th>??????</th>
			   <th>??????</th>

		  	</tr>
		</thead>
		 <tbody>
			  <c:forEach items="${productmain}" var="productmain">
			  <tr width="200px" height="100px">
			  	  <td width="200px" height="100px">
			  	  <div class="productThumb">
			  	  	<a href="/product/view?n=${productmain.productId}"><img src="${productmain.productThumbImg}"></a>
			  	  </div>
			  	  </td>
 				  <td>
 				  <a href="/product/view?n=${productmain.productId}">${productmain.productName}</a>
 				  </td>
				  <td>${productmain.productIntro}</td>
 				  <td>${productmain.productPrice}</td>
 				  <td>${productmain.productStock}</td>
			  </tr>
			 </c:forEach>
 </tbody>
</table>
</div>
</article>

</section>
             
</div>
</section>

        <!-- Footer-->
        <footer id="footer">
        <div class="container">
            <div class="row">
                <div class="footer">
                    <ul>
                        <li><a href="#"><strong>????????????????????????</strong></a></li>
                        <li><a href="#">????????????</a></li>
                    </ul>

                    <address>
                    <p class="m-0">Addr.(54852)Rm 407 Jeonju Innovation Startup Hub 67 Yusang-ro Deokjin-gu Jeonju-si Jeollabuk-do Korea</p>
                        Copyright ??
                        All Rights Reserved.
                    </address>
                </div>
            </div>
        </div>
    </footer>
    </body>
</html>