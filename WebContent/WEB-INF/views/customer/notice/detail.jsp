<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>

	<jsp:include page="../../inc/header.jsp"/>
	
	<div id = "visual">
		<div class = "content-container">
		</div>
	</div>
	
	<div id = "body" class="clearfix">
		<div class="content-container">
	
			<aside id="aside">
			
			<!-- 	<h1>고객센터</h1>
		
				<nav>
					<h1>고객센터 메뉴</h1>
					<ul>
						<li><a href="">공지사항</a></li>
						<li><a href="">1:1고객문의</a></li>
						<li><a href="">학습안내</a></li>
					</ul>
				</nav>
		
				<nav>
					<h1>추천사이트</h1>
					<ul>
						<li><a href="">앤서이즈</a></li>
						<li><a href="">W3C</a></li>
						<li><a href="">마이크로소프트</a></li>
					</ul>
				</nav>
		
				<nav>
					<h1>구글광고</h1>
				</nav> -->
			</aside>
	
	
			<main id ="main">	
				 <h2>공지사항</h2>
				<div>
					<h3>경로</h3>
					<ol>
						<li><a href="">home</a></li>
						<li><a href="">고객센터</a></li>
						<li><a href="">공지사항</a></li>
					</ol>
				</div>
				
				<div>자세한 내용</div>
	         	<a class="btn btn-default" href="notice-list">뒤로가기 </a>
			</div> 
			</main>
		</div>
	<footer id = "footer"> <!-- sist 1류 수강생들 모임  -->
		<div class="content-container">
		</div>
	</footer>

</body>
</html>