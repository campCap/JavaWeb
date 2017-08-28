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
	
			<!-- 어사이드 -->
	<jsp:include page="../inc/aside.jsp"/> 
	
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
		               <td><a href="notice-detail?id=${n.id}">${n.title}</a></td>
		               <td>newlec</td>
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
		
		<jsp:include page="../../inc/footer.jsp"/>
<!-- 푸터부분 -->

</body>
</html>