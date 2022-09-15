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

        <title>Dahlson Sensing</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/index/main.css" rel="stylesheet" />

        

<style>
/*
 section#content ul li { display:inline-block; margin:10px; }
 section#content div.goodsThumb img { width:200px; height:200px; }
 section#content div.goodsName { padding:10px 0; text-align:center; }
 section#content div.goodsName a { color:#000; }
*/
 section#content ul li { border:5px solid #eee; padding:10px 20px; margin-bottom:20px; }
 section#content .orderList span { font-size:20px; font-weight:bold; display:inline-block; width:90px; margin-right:10px; }
</style>

    </head>
    <body>

        <!-- Navigation-->
     		<jsp:include page="/WEB-INF/views/include/header.jsp" />

            <section id="contents">
            <div class="container">
 		<section id="content">
 
		 <ul class="orderList">
			  <c:forEach items="${orderList}" var="orderList">
			  <li>
			  <div>
 			  <p><span>주문번호</span><a href="/product/orderview?n=${orderList.orderId}">${orderList.orderId}</a></p>
 			  <p><span>수령인</span>${orderList.orderRec}</p>
 			  <p><span>주소</span>(${orderList.useraddress1}) ${orderList.useraddress2} ${orderList.useraddress3}</p>
 			  <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${orderList.amount}" /> 원</p>
 			  <p><span>상태</span>${orderList.delivery}</p>
 			  </div>
			  </li>
			  </c:forEach>
 		</ul>

</section>
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
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
      </body>
</html>