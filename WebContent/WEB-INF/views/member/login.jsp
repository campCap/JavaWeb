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
	
	<div id="body" class="clearfix">
		<div class="content-container clearfix">
	
			
	<jsp:include page="inc/aside.jsp"/> <!-- 어사이드 -->
	
			<main id ="main">	
				
			<h1>회원가입</h1>
				
				<form action="join" method="post">
			         <fieldset>
			            <legend>회원정보</legend>
			            <table>
			               <tbody>
			                  <tr>
			                     <th><label>아이디</label></th>
			                     <td>
			                        <input name="id" value=""/>
			                     </td>
			                  </tr>
			                  <tr>
			                     <th><label>비밀번호</label></th>
			                     <td><input name="pwd" /></td>
			                  </tr>
			                  <tr>                     
			                     <td><input type="submit" name="btn" value="로그인" /></td>
			                  </tr>
			               </tbody>
			            </table>
			         </fieldset>
			      </form>
				
			</main>
		</div> 
	</div>
		
		<jsp:include page="../inc/footer.jsp"/>
		<!-- 푸터부분 -->

</body>
</html>