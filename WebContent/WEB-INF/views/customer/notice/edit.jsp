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
				
				<form method="post">
					 <table border="1">
		            <tr>
		               <th>번호</th>
		               <td colspan="3">${d.id}</td>
		           	</tr>
		           	<tr>
		               <th>제목</th>
		               <td colspan="3"><input name="title" value="${d.title}"/></td>
		            </tr>
		            <tr>
		               <th>작성일</th>
		               <td colspan="3">${d.regDate}</td>
		            </tr>      
		            <tr>
		               <th>작성자</th>
		               <td>newlec</td>
		               <th>조회수</th>
		               <td>${d.hit}</td>         
			         </tr>
			         <tr>
			         	<th>첨부파일</th>
			         	<td colspan="3"></td>
			         </tr>   
			         <tr>
			         	<th>내용</th>
			         	<td colspan="4"><textarea name="content">${d.content}</textarea></td>
			         </tr>
		         </table>
					
					<div>
						<input class="hidden" type="text" name="id" value="${d.id}"/>
		         		<input type="submit" class ="btn btn-default" value="저장"/>
		         		<a class="btn btn-default" href="notice-detail?id=${d.id}">삭제</a>
		         	</div>
	         	</form>
	         	
			</main>
		</div> 
	</div>
		
		<jsp:include page="../../inc/footer.jsp"/>
<!-- 푸터부분 -->

</body>
</html>