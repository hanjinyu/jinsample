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
 div#container_box ul li { border:5px solid #eee; padding:10px 20px; margin-bottom:20px; }
 div#container_box .orderList span { font-size:20px; font-weight:bold; display:inline-block; width:90px; margin-right:10px; }
</style>
    </head>
    <body>
    
         		<jsp:include page="/WEB-INF/views/include/header.jsp" />
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
               <section id="cont_center">
 
			<ul class="orderList">
			 <c:forEach items="${orderList}" var="orderList">
			 <li>
			 <div>
				  <p><span>주문번호</span><a href="/admin/orderView?n=${orderList.orderId}">${orderList.orderId}</a></p>
				  <p><span>주문자</span>${orderList.userid}</p>
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
 			
 			
        <!-- Footer-->
                 		<jsp:include page="/WEB-INF/views/include/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
      </body>
</html>