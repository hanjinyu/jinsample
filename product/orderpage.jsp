<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
   <head>
        <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dahlson Sensor</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/index/styles.css" rel="stylesheet" />
        <style>
 /*
 section#content ul li { display:inline-block; margin:10px; }
 section#content div.goodsThumb img { width:200px; height:200px; }
 section#content div.goodsName { padding:10px 0; text-align:center; }
 section#content div.goodsName a { color:#000; }
 */
 section#content ul li { margin:10px 0; }
 section#content ul li img { width:250px; height:250px; }
 section#content ul li::after { content:""; display:block; clear:both; }
 section#content div.thumb { float:left; width:250px; }
 section#content div.gdsInfo { float:right; width:calc(100% - 270px); }
 section#content div.gdsInfo { font-size:20px; line-height:2; }
 section#content div.gdsInfo span { display:inline-block; width:100px; font-weight:bold; margin-right:10px; }
 section#content div.gdsInfo .delete { text-align:right; }
 section#content div.gdsInfo .delete button { font-size:22px;
            padding:5px 10px; border:1px solid #eee; background:#eee;}
            
            .listResult { padding:20px; background:#eee; }
.listResult .sum { float:left; width:45%; font-size:22px; }

.listResult .orderOpne { float:right; width:45%; text-align:right; }
.listResult .orderOpne button { font-size:18px; padding:5px 10px; border:1px solid #999; background:#fff;}
.listResult::after { content:""; display:block; clear:both; }

.orderInfo { border:5px solid #eee; padding:20px; display:none;}
.orderInfo .inputArea { margin:10px 0; }
.orderInfo .inputArea label { display:inline-block; width:120px; margin-right:10px; }
.orderInfo .inputArea input { font-size:14px; padding:5px; }
#userAddr2, #userAddr3 { width:250px; }

.orderInfo .inputArea:last-child { margin-top:30px; }
.orderInfo .inputArea button { font-size:20px; border:2px solid #ccc; padding:5px 10px; background:#fff; margin-right:20px;}
 
</style>
    </head>
    <body>
        <!-- Navigation-->
     		<jsp:include page="/WEB-INF/views/include/header.jsp" />
        
        <section id="content">
 
 		<ul>
		  <li>
			  <div class="allCheck">
 			  <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label> 
 			  
 			  <script>
				$("#allCheck").click(function(){
				 var chk = $("#allCheck").prop("checked");
				 if(chk) {
				  $(".chBox").prop("checked", true);
				 } else {
				  $(".chBox").prop("checked", false);
				 }
				});
				</script>
			  </div>
  
			  <div class="delBtn">
			   <button type="button" class="selectDelete_btn">선택 삭제</button> 
			   
			   <script>
				 $(".selectDelete_btn").click(function(){
				  var confirm_val = confirm("정말 삭제하시겠습니까?");
  
				  if(confirm_val) {
				   var checkArr = new Array();
   
				   $("input[class='chBox']:checked").each(function(){
				    checkArr.push($(this).attr("data-cartNum"));
				   });
    
				   $.ajax({
				    url : "/product/deleteCart",
				    type : "post",
				    data : { chbox : checkArr },
				    success : function(result){
				    	
				    	if(result ==1){
						     location.href = "/product/cart";
				    	}else{
				    		alert("삭제 실패");
				    	}
    }
   });
  } 
 });
</script>
			  </div>
  
		 </li>
		 <c:set var="sum" value="0"/>
		
			  <c:forEach items="${cartList}" var="cartList">
 			 <li>
 				   <div class="checkBox">
					   <input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartnum}" />
					   
					   <script>
 						$(".chBox").click(function(){
 						$("#allCheck").prop("checked", false);
						 });
						</script>
				   </div>
 				   <div class="thumb">
 				  	 <img src="${cartList.productThumbImg}" />
				   </div>
 			<div class="gdsInfo">
 			   <p>
 	  		     <span>상품명 : </span>${cartList.productName}<br />
			     <span>개당 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.productPrice}" />원<br />
			     <span>구입 수량 : </span>${cartList.quantity} 개<br />
			     <span>최종 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.productPrice * cartList.quantity}" />원
		      </p>
    
 			    <div class="delete">
			    	<button type="button" class="delete_${cartList.cartnum}_btn" data-cartnum="${cartList.cartnum}">삭제</button>
			    	
			    	<script>
					 $(".delete_${cartList.cartnum}_btn").click(function(){
					  var confirm_val = confirm("정말 삭제하시겠습니까?");
  
					  if(confirm_val) {
					   var checkArr = new Array();
   
					   checkArr.push($(this).attr("data-cartnum"));
              
					   $.ajax({
						    url : "/product/deleteCart",
						    type : "post",
						    data : { chbox : checkArr },
						    success : function(result){
						     if(result == 1) {            
						      location.href = "/product/cart";
						     } else {
						      alert("삭제 실패");
						     }
 						   }
						   });
						  } 
						 });
					</script>
			    </div>
	   </div>
  </li>
  <c:set var="sum" value="${sum + (cartList.productPrice * cartList.quantity)}"/>
  </c:forEach>
 </ul>
 
 <div class="listResult">
  	<div class="orderOpne_bnt">주문 정보 입력</div>
 	<div class="sum">
 		총 합계 : <fmt:formatNumber pattern="###,###,###" value="${sum}"/>원
 	</div>
 		
<!--  		<script>
			 $(".orderOpne_bnt").click(function(){
			  $(".orderInfo").slideDown();
			  $(".orderOpne_bnt").slideUp();
			 });      
		</script> -->
		 <div class="sum">
 <form role="form" method="post">
    
  <input type="hidden" name="amount" value="${sum}" />
    
  <div class="inputArea">
   <label for="">수령인</label>
   <input type="text" name="orderRec" id="orderRec" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="orderPhon">수령인 연락처</label>
   <input type="text" name="orderPhon" id="orderPhon" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="useraddress1">우편번호</label>
   <input type="text" name="useraddress1" id="useraddress1" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="useraddress2">1차 주소</label>
   <input type="text" name="useraddress2" id="useraddress2" required="required" />
  </div>
  
  <div class="inputArea">
   <label for="useraddress3">2차 주소</label>
   <input type="text" name="useraddress3" id="useraddress3" required="required" />
  </div>
  
  <div class="inputArea">
   <button type="submit" class="order_btn">주문</button>
   <button type="button" class="cancel_btn">취소</button> 
  </div>
  
 </form> 
</div>
 </div>
 
</section>

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