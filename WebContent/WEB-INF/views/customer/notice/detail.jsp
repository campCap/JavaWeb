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
				
				 <table border="1">
	            <tr>
	               <th>번호</th>
	               <th>제목</th>
	               <th>작성자</th>
	               <th>작성일</th>
	               <th>조회수</th>
	            </tr>      
		            <tr>
		               <td>${d.id}</td>
		               <td>${d.title}</td>
		               <td>${d.content}</td>
		               <td>${d.regDate}</td>
		               <td>${d.hit}</td>         
		            </tr>
	         </table>
				
				<div>자세한 내용</div>
	         	<a class="btn btn-default" href="notice-list">뒤로가기 </a>
			</main>'
		</div> 
	</div>
		
		<jsp:include page="../../inc/footer.jsp"/>
<!-- 푸터부분 -->

</body>
</html>