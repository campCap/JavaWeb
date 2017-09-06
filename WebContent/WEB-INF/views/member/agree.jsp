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
				<h1>동의</h1>
				
				<div>
					<h3>경로</h3>
					<ol>
						<li>home</li>
						<li>회워정보</li>
						<li>가입동의</li>
					</ol>
				</div>
				
				
				<form method="post">
					<div>
						<h3>개인정보 활용 동의</h3>
						<div style="width: 100%; height: 100px; overflow: scroll;">
							가입된 정보는 어쩌구 저쩌구...<br/>
							가입된 정보는 어쩌구 저쩌구...<br/>
							가입된 정보는 어쩌구 저쩌구...<br/>
							가입된 정보는 어쩌구 저쩌구...<br/>
							가입된 정보는 어쩌구 저쩌구...<br/>
						</div>
						<div>
							<input type="checkbox" name="agree" value="ok"/>
						</div>
					</div>
					<div>
						<input type="submit" value="가입동의">
					</div>
				</form>
			</main>
		</div> 
			
	</div>
		
		<jsp:include page="../inc/footer.jsp"/>
		<!-- 푸터부분 -->

</body>
</html>