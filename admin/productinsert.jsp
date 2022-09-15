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
        <title>Dahlson Shop - Solution for you!</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/index/styles.css" rel="stylesheet" />
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
        
        <form role="form" method="post" autocomplete="off" enctype="multipart/form-data">
        
			<div class="inputArea">	
				<label>1차 분류</label>
				<select class="category1" name="cateParent">
					<option value="">전체</option>
				</select>
			
				<label>2차 분류</label>
				<select class="category2" name="cateCode">
					<option value="">전체</option>
				</select>
				<label>3차 분류</label>
				<select class="category3" name="cateSub">
					<option value="">전체</option>
				</select>
			</div>
		<div class="inputArea">
 			<label for="productName">상품명</label>
 			<input type="text" id="productName" name="productName" />
		</div>

		<div class="inputArea">
 			<label for="productPrice">상품가격</label>
 			<input type="text" id="productPrice" name="productPrice" />
		</div>

		<div class="inputArea">
			 <label for="productStock">상품수량</label>
			 <input type="text" id="productStock" name="productStock" />
		</div>
		<div class="inputArea">
 			<label for="productImage">이미지</label>
 			<input type="file" id="productImage" name="file" />
 		<div class="select_img"><img src="" /></div>
 
			 <script>
 			 $("#productImage").change(function(){
 			  if(this.files && this.files[0]) {
			    var reader = new FileReader;
			    reader.onload = function(data) {
		     $(".select_img img").attr("src", data.target.result).width(300);        
			    }
			    reader.readAsDataURL(this.files[0]);
			   }
			  });
			 </script>
			 <%=request.getRealPath("/") %>
		</div>
		
		<div class="inputArea">
 			<label for="productIntro">상품요약</label>
 			<textarea rows="2" cols="50" id="productIntro" name="productIntro"></textarea>
		</div>

		<div class="inputArea">
 			<label for="productContents">상품설명</label>
 			<textarea rows="5" cols="50" id="productContents" name="productContents"></textarea>
		</div>

		<div class="inputArea">
 			<button type="submit" id="register_Btn" class="btn btn-primary">등록</button>
		</div>

</form>

<script>
// 컨트롤러에서 데이터 받기
var jsonData = JSON.parse('${category}');
// 필요한 배열과 오브젝트 변수 생성
var cate1Arr = new Array();
var cate1Obj = new Object();
// 1차 분류 셀렉트 박스에 삽입할 데이터 준비
for(var i = 0; i < jsonData.length; i++) {
	
	if(jsonData[i].level == "1") {  // 레벨이 1인 데이터가 있다면 
		cate1Obj = new Object();  // 초기화
		
		// cate1Obj에 cateCode와 cateName를 저장
		cate1Obj.cateCode = jsonData[i].cateCode; 
		cate1Obj.cateName = jsonData[i].cateName;
		
		// cate1Obj에 저장된 값을 cate1Arr 배열에 저장
		cate1Arr.push(cate1Obj);
	}
}
// 1차 분류 셀렉트 박스에 데이터 삽입
var cate1Select = $("select.category1")
for(var i = 0; i < cate1Arr.length; i++) {
	// cate1Arr에 저장된 값을 cate1Select에 추가
	cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
						+ cate1Arr[i].cateName + "</option>");	
}
// 클래스가 category1인 select변수의 값이 바뀌었을 때 실행
$(document).on("change", "select.category1", function(){
	
	// 필요한 배열과 오브젝트 변수를 생성
	var cate2Arr = new Array();
	var cate2Obj = new Object();
	
	// 2차 분류 셀렉트 박스에 삽입할 데이터 준비
	for(var i = 0; i < jsonData.length; i++) {
		
		if(jsonData[i].level == "2") {  // 레빌이 2인 데이터가 있다면
			cate2Obj = new Object();  // 초기화
			
			// cate2Obj에 cateCode, cateName, cateCodeRef를 저장
			cate2Obj.cateCode = jsonData[i].cateCode;
			cate2Obj.cateName = jsonData[i].cateName;
			cate2Obj.cateParent = jsonData[i].cateParent;
			
			// cate2Obj에 저장된 값을 cate1Arr 배열에 저장
			cate2Arr.push(cate2Obj);
		} 
	}
	
	var cate2Select = $("select.category2");
	
	// cate2Select의 값을 제거함(초기화)
	cate2Select.children().remove();
 
	// cate1Select에서 선택한 값을 기준으로 cate2Select의 값을 조정
	$("option:selected", this).each(function(){
		
		var selectVal = $(this).val();  // 현재 선택한 cate1Select의 값을 저장
	
		cate2Select.append("<option value='" + selectVal + "'>전체</option>");  // cate2Select의 '전체'에 현재 선택한 cate1Select와 같은 값 부여
		
		// cate2Arr의 데이터를 cate2Select에 추가
		for(var i = 0; i < cate2Arr.length; i++) {
			
			// 현재 선택한 cate1Select의 값과 일치하는 cate2Arr의 데이터를 가져옴
			if(selectVal == cate2Arr[i].cateParent) {
				cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
									+ cate2Arr[i].cateName + "</option>");
			}
		}		
	});
	
});
//클래스가 category1인 select변수의 값이 바뀌었을 때 실행
$(document).on("change", "select.category2", function(){
	
	// 필요한 배열과 오브젝트 변수를 생성
	var cate3Arr = new Array();
	var cate3Obj = new Object();
	
	// 2차 분류 셀렉트 박스에 삽입할 데이터 준비
	for(var i = 0; i < jsonData.length; i++) {
		
		if(jsonData[i].level == "3") {  // 레빌이 2인 데이터가 있다면
			cate3Obj = new Object();  // 초기화
			
			// cate2Obj에 cateCode, cateName, cateCodeRef를 저장
			cate3Obj.cateCode = jsonData[i].cateCode;
			cate3Obj.cateName = jsonData[i].cateName;
			cate3Obj.cateParent = jsonData[i].cateParent;
			cate3Obj.cateSub = jsonData[i].cateSub;
			
			// cate2Obj에 저장된 값을 cate1Arr 배열에 저장
			cate3Arr.push(cate3Obj);
		} 
	}
	
	var cate3Select = $("select.category3");
	
	// cate2Select의 값을 제거함(초기화)
	cate3Select.children().remove();
 
	// cate1Select에서 선택한 값을 기준으로 cate2Select의 값을 조정
	$("option:selected", this).each(function(){
		
		var selectVal = $(this).val();  // 현재 선택한 cate1Select의 값을 저장
	
		cate3Select.append("<option value='" + selectVal + "'>전체</option>");  // cate2Select의 '전체'에 현재 선택한 cate1Select와 같은 값 부여
		
		// cate2Arr의 데이터를 cate2Select에 추가
		for(var i = 0; i < cate3Arr.length; i++) {
			
			// 현재 선택한 cate1Select의 값과 일치하는 cate2Arr의 데이터를 가져옴
			if(selectVal == cate3Arr[i].cateSub) {
				cate3Select.append("<option value='" + cate3Arr[i].cateCode + "'>"
									+ cate3Arr[i].cateName + "</option>");
			}
		}		
	});
	
});
</script>
              
               <footer class="py-5 bg-dark">
            <div class="container">
            <p class="m-0 text-center text-white">Addr.(54852)Rm 407 Jeonju Innovation Startup Hub 67 Yusang-ro Deokjin-gu Jeonju-si Jeollabuk-do Korea</p>
            <p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
<!--         <script src="/asset/js/scripts.js"></script> -->
    </body>
</html>