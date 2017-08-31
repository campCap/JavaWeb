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
	
			
	<jsp:include page="../inc/aside.jsp"/> <!-- 어사이드 -->
	
			<main id ="main">	
				 <h2 class="main title">공지사항</h2>
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
	               <input type="text" name="query" />
	               <input type="submit" />
	            </form>
	         </div>
	         
	         <table class="table table-list">
	            <tr>
	               <th class="w60">번호</th>
	               <th >제목</th>
	               <th class="w100">작성자</th>
	               <th class="w100">작성일</th>
	               <th class="w60">조회수</th>
	            </tr>      
	            <c:forEach var="n"  items="${list}">
		            <tr>
		               <td>${n.id}</td>
		               <td class="title text-left text-indent"><a href="notice-detail?id=${n.id}">${n.title}</a></td>
		               <td>${n.writerId}</td>
		               <td>${n.regDate}</td>
		               <td>${n.hit}</td>         
		            </tr>
	            </c:forEach>
	         </table>
	         <c:set var="page" value="${param.p}"/>
	         <c:set var="startPage" value="${page-(page-1)%5 }"/>
	         <c:set var="lastPage" value="${count/10}"/>
	         ${lastPage}
	         <div class ="hr-list member-menu">
	         	<div><a href="?p=1">이전</a></div>
	         	<ul>
	         		<c:forEach var="i" begin="0" end="4">
		         		<li><a href="?p=${startPage+i}">${startPage+i}</a></li>
	         		</c:forEach>
	         	</ul>
	         	<div><a href="?p=6">다음</a></div>
	         </div>

				<a class="btn btn-default" href="notice-reg">글쓰기</a>
				<a class="btn-img btn-cancel" href ="">취소</a>
			</div> 
			</main>
			
		</div>
		
		<jsp:include page="../../inc/footer.jsp"/>
		<!-- 푸터부분 -->

</body>
</html>