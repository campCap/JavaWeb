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
	<!-- 헤더부분 -->
	<jsp:include page="../../inc/header.jsp"/> <!-- 개쩐다 이게바로 집중화구나 -->
	
	<div id = "visual">
		<div class = "content-container">
		</div>
	</div>
	
	<div id = "body" class="clearfix">
		<div class="content-container clearfix">
	
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
			
				<div>
					  <h3>공지사항 검색 폼</h3>
	            <form action="notice-list" method="get">
	               <label>검색어</label>
	               <input type="text" name="title" />
	               <input type="submit" />
	            </form>
	         </div>
	         <table border="1">
	            <tr>
	               <th>번호</th>
	               <th>제목</th>
	               <th>작성자</th>
	               <th>작성일</th>
	               <th>조회수</th>
	            </tr>      
	            <c:forEach var="n"  items="${list}">
		            <tr>
		               <td>${n.id}</td>
		               <td><a href="notice-detail">${n.title}</a></td>
		               <td>${n.content}</td>
		               <td>${n.regDate}</td>
		               <td>${n.hit}</td>         
		            </tr>
	            </c:forEach>
	         </table>

				<a class="btn btn-default">글쓰기</a>
				<a class="btn-img btn-cancel" href ="">취소</a>
			</div> 
			</main>
		</div>
	<footer id = "footer"> <!-- sist 1류 수강생들 모임  -->
		<div class="content-container">
		</div>
	</footer>

</body>
</html>