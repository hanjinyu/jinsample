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
		.oriImg { width:500px; height:auto; }
		.thumbImg {}
        </style>
    </head>
     <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
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
        
        <form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
        <input type="hidden" name="userid" value="${uservo.userid}"/>
        
		<div class="inputArea">
 			<label for="username">상품명</label>
 			<input type="text" id="username" name="username" value="${productvo.productName}"/>
		</div>

		<div class="inputArea">
 			<label for="productPrice">상품가격</label>
 			<input type="text" id="productPrice" name="productPrice" value="${productvo.productPrice}"/>
		</div>

		<div class="inputArea">
			 <label for="productStock">상품수량</label>
			 <input type="text" id="productStock" name="productStock" value="${productvo.productStock}"/>
		</div>
		
		<div class="inputArea">
 			<label for="productIntro">상품요약</label>
 			<textarea rows="2" cols="50" id="productIntro" name="productIntro">${productvo.productIntro}</textarea>
		</div>

		<div class="inputArea">
 			<label for="productContents">상품설명</label>
 			<textarea rows="5" cols="50" id="productContents" name="productContents">${productvo.productContents}</textarea>
		</div>
		
		<div class="inputArea">
 			<label for="productImage">이미지</label>
			<input type="file" id="productImage" name="file" />
 		<div class="select_img">
  			<img src="${productvo.productImage}" />
  			<input type="hidden" name="productImage" value="${productvo.productImage}" />
  			<input type="hidden" name="productThumbImg" value="${productvo.productThumbImg}" /> 
 		</div>

 			<%=request.getRealPath("/") %>
		</div>

		<div class="inputArea">
 			<button type="submit" id="endupdate_Btn" class="btn btn-primary">완료</button>
 			<button type="button" id="back_Btn" class="btn btn-primary">취소</button>
 			
		</div>

</form>

              
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