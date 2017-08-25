<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
//컨트롤러 부분 어디갔지? 어디가긴! 컨트롤러에서 가져오지
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="notice" method="get">
		<label>제목 검색</label>
		<input type="text" name="title"/>
		<input type="submit" value="검색"/>
	</form>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
		<c:forEach var="n" items="${list}">
			<tr>
				<td>${n.id } </td>
				<td>${n.title }</td>
				<td>${n.content}</td>
				<td>${n.regDate }</td>
				<td>${n.hit }</td>
			</tr>
		</c:forEach>
	</table>

	
</body>
</html>