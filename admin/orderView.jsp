<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
   <head>
   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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
        <link href="/css/index/main.css" rel="stylesheet" />
<style>
/*
#container_box table { width:900px; }
#container_box table th { font-size:20px; font-weight:bold;
       text-align:center; padding:10px; border-bottom:2px solid #666; }
#container_box table tr:hover { background:#eee; }
#container_box table td { padding:10px; text-align:center; }
#container_box table img { width:150px; height:auto; }
*/
 .orderInfo { border:5px solid #eee; padding:10px 20px; margin:20px 0;}
 .orderInfo span { font-size:20px; font-weight:bold; display:inline-block; width:90px; }
 
 .orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
 .orderView li::after { content:""; display:block; clear:both; }
 
 .thumb { float:left; width:200px; }
 .thumb img { width:200px; height:200px; }
 .gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
 .gdsInfo span { font-size:20px; font-weight:bold; display:inline-block; width:100px; margin-right:10px; }
 .deliveryChange { text-align:right; }
.delivery1_btn,
.delivery2_btn { font-size:16px; background:#fff; border:1px solid #999; margin-left:10px; }
</style>
    </head>
    <body>
        <!-- Navigation-->
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

<div class="orderInfo">
  <c:forEach items="${orderView}" var="orderView" varStatus="status">
  
  <c:if test="${status.first}">
   <p><span>주문자</span>${orderView.userid}</p>
   <p><span>수령인</span>${orderView.orderRec}</p>
   <p><span>주소</span>(${orderView.useraddress1}) ${orderView.useraddress2} ${orderView.useraddress3}</p>
   <p><span>가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> 원</p>
   <p><span>상태</span>${orderView.delivery}</p>
		<div class="deliveryChange">
		 <form role="form" method="post" class="deliveryForm">
 
		  <input type="hidden" name="orderId" value="${orderView.orderId}" />
		  <input type="hidden" name="delivery" class="delivery" value="" />
  
		  <button type="button" class="delivery1_btn">배송 중</button>
		  <button type="button" class="delivery2_btn">배송 완료</button>
  
		  <script>
		   $(".delivery1_btn").click(function(){
		    $(".delivery").val("배송 중");
		    run();
		   });
   
		   $(".delivery2_btn").click(function(){
		    $(".delivery").val("배송 완료");
		    run();
 		   });
   
		   function run(){
 		   $(".deliveryForm").submit();
		   }
  
  </script>
 </form>
</div>
  </c:if>
  
 </c:forEach>
</div>

<ul class="orderView">
 <c:forEach items="${orderView}" var="orderView">     
 <li>
  <div class="thumb">
   <img src="${orderView.productThumbImg}" />
  </div>
  <div class="gdsInfo">
   <p>
    <span>상품명</span>${orderView.productName}<br />
    <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.productPrice}" /> 원<br />
    <span>구입 수량</span>${orderView.quantity} 개<br />
    <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${orderView.productPrice * orderView.quantity}" /> 원                  
   </p>
  </div>
 </li>     
 </c:forEach>
</ul>
</div>
</section>
 			
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container">
            <p class="m-0 text-center text-white">Addr.(54852)Rm 407 Jeonju Innovation Startup Hub 67 Yusang-ro Deokjin-gu Jeonju-si Jeollabuk-do Korea</p>
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
      </body>
</html>