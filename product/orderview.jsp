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
        <link href="/css/index/main.css" rel="stylesheet" />
        <style>
/*
 section#content ul li { display:inline-block; margin:10px; }
 section#content div.goodsThumb img { width:200px; height:200px; }
 section#content div.goodsName { padding:10px 0; text-align:center; }
 section#content div.goodsName a { color:#000; }
*/
 .orderInfo { border:5px solid #eee; padding:10px 20px; margin:20px 0;}
 .orderInfo span { font-size:20px; font-weight:bold; display:inline-block; width:90px; }
 
 .orderView li { margin-bottom:20px; padding-bottom:20px; border-bottom:1px solid #999; }
 .orderView li::after { content:""; display:block; clear:both; }
 
 .thumb { float:left; width:200px; }
 .thumb img { width:200px; height:200px; }
 .gdsInfo { float:right; width:calc(100% - 220px); line-height:2; }
 .gdsInfo span { font-size:20px; font-weight:bold; display:inline-block; width:100px; margin-right:10px; }

</style>
    </head>
    <body>
        <!-- Navigation-->
     		<jsp:include page="/WEB-INF/views/include/header.jsp" />
        
        <!-- ??????????????? ??????  ??????-->
        <section id="contents">
            <div class="container">

 	<section id="content">

		 <div class="orderInfo">
		  <c:forEach items="${orderView}" var="orderView" varStatus="status">
   
		   <c:if test="${status.first}">
		    <p><span>?????????</span>${orderView.orderRec}</p>
		    <p><span>??????</span>(${orderView.useraddress1}) ${orderView.useraddress2} ${orderView.useraddress3}</p>
		    <p><span>??????</span><fmt:formatNumber pattern="###,###,###" value="${orderView.amount}" /> ???</p>
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
		     <span>?????????</span>${orderView.productName}<br />
		     <span>?????? ??????</span><fmt:formatNumber pattern="###,###,###" value="${orderView.productPrice}" /> ???<br />
		     <span>?????? ??????</span>${orderView.quantity} ???<br />
		     <span>?????? ??????</span><fmt:formatNumber pattern="###,###,###" value="${orderView.productPrice * orderView.quantity}" /> ???     
		        <p><span>??????</span>${orderView.delivery}</p>             
		    </p>
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
    <h3>????????????</h3>
    <strong>063-452-5357</strong>
    </div>
    <div class="bank-info" style="width: 40%;">
    <h3>????????????</h3>
    <strong>????????????????????????</strong>
    </div>
    </div></div>
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
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
      </body>
</html>