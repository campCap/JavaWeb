<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
	<jsp:include page="../inc/header.jsp"/> <!-- 개쩐다 이게바로 집중화구나 -->
	
	<jsp:include page="inc/visual.jsp"/>
	
	<div id = "body" class="clearfix">
		<div class="content-container clearfix">
	
			
	<jsp:include page="inc/aside.jsp"/> <!-- 어사이드 -->
	
			<main id ="main">	
				
			<h1>회원가입</h1>
				
			</main>
		</div> 
			
	</div>
		
		<jsp:include page="../inc/footer.jsp"/>
		<!-- 푸터부분 -->

</body>
</html>