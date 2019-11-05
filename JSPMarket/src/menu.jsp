<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String)session.getAttribute("sessionId");
%>
<nav class="navbar navber-expand navbar-blue bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./boots.jsp">HOME</a>
		</div>
		<div>
			<ul class="navber-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/loginMemeber.jsp"/>">로그인</a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/member/addMemeber.jsp"/>'>회원 가입</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">[<%=sessionId%>님]</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/logoutMemeber.jsp"/>">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/member/updateMemeber.jsp"/>">회원 수정</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<div class="navbar-header">
			<a class="nav-item" href="./products.jsp">SHOP</a>
		</div>
		<div class="navbar-header">
			<a class="nav-item" href="./addProduct.jsp">등록</a>
		</div>
		<div class="navbar-header">
			<a class="nav-item" href="./editProduct.jsp?edit=update">수정</a>
		</div>
		<div class="navbar-header">
			<a class="nav-item" href="./editProduct.jsp?edit=delete">삭제</a>
		</div>
		<div class="navbar-header">
			<a class="nav-item" href="./BoardListAction.do?page=1">게시판</a>
		</div>
		<div class="btn-group" role="group" aria="Basic example">
			<input type="button" class="btn btn-info" value="로그인" onclick="location.href='login.jsp'" />
			<input type="button" class="btn btn-info" value="회원가입" onclick="location.href='Signup.jsp'" />
		</div>
	</div>
</nav>
