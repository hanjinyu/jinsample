<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
    
<!DOCTYPE html>
<html>

   <head>
   		<meta http-equiv="Content-Type" content="text/html; sharset=UTF-8">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
              <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Abel&display=swap" rel="stylesheet">
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dahlson Shop - Solution for you!</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/index/styles.css" rel="stylesheet" />
        <link href="/css/index/main.css" rel="stylesheet" />
        <style type="text/css">
        table{
        text-align: center;
        border : 2px solid gray;
        }
        tr{
        text-align:center;
        border : 2px solid gray;
        }
        tr th{
        border : 1px solid gray;
        background-color : lightgreen;
        }
        td{
        border : 1px solid gray;
        width: 7%;
        }
        .cls1{
        font-size: 40px;
        text-align: center;
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
                        <a href="/product/cart">Cart</a>
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
            <h2 class="ir_su">반응형 사이트 컨텐츠</h2>
                <section id="cont_left">
                    <h3 class="ir_su">반응형 사이트 왼쪽 컨텐츠</h3>
                    <article class="column col1">
                        <h4 class="col_tit">Menu</h4>
<!--                         <p class="col_desc">box-shadow를 이용한 마우스 오버 효과입니다.</p> -->
                        <!-- 메뉴 -->
                        <div class="menu">
                            <ul>
                                <li><a href="/admin/memberManage">회원관리 <i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="/admin/orderList">주문관리<i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="/admin/productManage">제품관리<i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>
                                <li><a href="/admin/allQna">Q&A<i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>

                            </ul>
                        </div>
                    </article>
                </section>
    <p class="cls1">회원정보</p>
    <table>
        <tr>
            <th>아이디</th>

            <th>이름</th>
            <th>회사</th>
            <th>이메일</th>
            <th>가입일</th>
        </tr>
                <c:forEach var="member" items="${memberList}">
                    <tr>
                        <td>${member.userid}</td>
                        <td>${member.username}</td>
                        <td>${member.company}</td>
                        <td>${member.email}</td>
                        <td>${member.regDate}</td>
                         <td><a href="/">수정</a></td>
                        <td><a href="/">삭제</a></td>
                    </tr>
                </c:forEach>

    </table>
    </div>
    </section>
	
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
    </body>
</html>