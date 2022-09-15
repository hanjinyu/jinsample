<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dahlson Shop - Solution for you!</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/index/styles.css" rel="stylesheet" />
        <style>
        #container_box table td {width:100px;}
        #container_box table img {width:150px; height:auto;}
        </style>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">Dahlson</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Photo Micro Sensor</a></li>
                                <li><a class="dropdown-item" href="#!">Interrupter Transmissive Type</a></li>
                                <li><a class="dropdown-item" href="#!">Interrupter Reflective Type</a></li>
                                <li><a class="dropdown-item" href="#!">Interrupter Reflective Type</a></li>
                            </ul>
                        </li>
                    </ul>
             <ul>       
               <c:if test = "${member == null}">
                    <form class="d-flex">
                        <button type="button" class="btn btn-outline-dark" onclick="location.href='/member/login'">
                            Login
                        </button>
                        <button type="button" class="btn btn-outline-dark" onclick="location.href='/member/join'"> 
                            Join
                        </button>
                        <button type="button" class="btn btn-outline-dark" onclick="location.href='/cart'"> 
                            cart
                        </button>
                    </form>
                 </c:if>
   				<c:if test="${member != null }">
   				<c:if test="${adminCK == 1 }">	<!-- 관리자 계정 -->
   					<li><a href="/admin/main">관리자 페이지</a></li>
				</c:if>
                        <button type="submit" class="btn btn-outline-dark" onclick="location.href='/logout'">
                            Logout
                        </button>
                        <button class="btn btn-outline-dark" type="submit">
                            My page
                        </button>
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button> 
                    </c:if>  
                    </ul>   
                </div>
            </div>
        </nav>
        <!-- Header-->
        
        
        <!-- 헤더 부분 사진 추가 필요 -->
        
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Dahlson Shop</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Solution for you</p>
                </div>
            </div>
        </header>
        
        
                                            <h5 align="center" class="fw-bolder">PRODUCT MANAGE</h5>
                                            <div align="center">
                                <button type="submit" class="btn btn-outline-dark" onclick="location.href='/admin/productinsert'">제품 등록</button>
                                <button type="submit" class="btn btn-outline-dark" onclick="location.href='/admin/productupdate'">제품 수정</button>
        </div>
        <div id="container_box">
        <table>
 		<thead>
 			 <tr>
 			   <th>사진</th>
			   <th>번호</th>
			   <th>이름</th>
			   <th>카테고리</th>
			   <th>가격</th>
			   <th>수량</th>
			   <th>등록날짜</th>
		  	</tr>
		</thead>
		 <tbody>
			  <c:forEach items="${list}" var="list">
			  <tr>
			  	  <td>
			  	  	<img src="${list.productThumbImg}">
			  	  </td>
 				  <td>${list.productId}</td>
 				  <td>
 				  <a href="/admin/productView?n=${list.productId}">${list.productName}</a>
 				  </td>
				  <td>${list.cateCode}</td>
 				  <td>${list.productPrice}</td>
 				  <td>${list.productStock}</td>
 				  <td>${list.regDate}</td>
			  </tr>   
			 </c:forEach>
 </tbody>
</table>
</div>
        
        
               <footer class="py-5 bg-dark">
            <div class="container">
            <p class="m-0 text-center text-white">Addr.(54852)Rm 407 Jeonju Innovation Startup Hub 67 Yusang-ro Deokjin-gu Jeonju-si Jeollabuk-do Korea</p>
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/resources/js/scripts.js"></script>
    </body>
</html>