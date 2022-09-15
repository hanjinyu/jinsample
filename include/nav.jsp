  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
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
   				<c:if test="${member != null}">
<%--     				<c:if test="${member.adminCK == 1}"> --%>
    				 <button type="submit" class="btn btn-outline-dark" onclick="location.href='/admin/main'">
                            Admin Page
                        </button>
<%--                          </c:if>  --%>
                        <button type="submit" class="btn btn-outline-dark" onclick="location.href='/logout'">
                            Logout
                        </button>
                        <button type="submit" class="btn btn-outline-dark" onclick="location.href='/member/mypage'">
                            My page
                        </button>
                        <button type="button" class="btn btn-outline-dark" onclick="location.href='/cart'"> 
                            cart
                        </button>
<!--                         <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>  -->
                    </c:if>  
                    </ul>   
                </div>
            </div>
        </nav>