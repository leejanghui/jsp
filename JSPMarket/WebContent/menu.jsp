<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<style>
a { color : 00FFFF; }
</style>
<nav class="navbar navber-expand navbar-blue bg-dark">
	<div class="container">
		<div class="nav-itme">
			<a class="nav-link" href="./boots.jsp">HOME</a>
		</div>
		<div class="nav-itme">
			<a class="nav-link" href="./products.jsp">SHOP</a>
		</div>
		<div class="nav-itme">
			<a class="nav-link" href="./addProduct.jsp">ADD</a>
		</div>
		<div class="nav-itme">
			<a class="nav-link" href="./editProduct.jsp?edit=update">UPDTAE</a>
		</div>
		<div class="nav-itme">
			<a class="nav-link" href="./editProduct.jsp?edit=delete">DELETE</a>
		</div>
		<div class="nav-itme">
			<a class="nav-link" href="<c:url value='./BoardListAction.do?pageNum=1'/>">BOARD</a>
		</div>
		<div class="nav-itme">
			<c:choose>
				<c:when test="${empty sessionId}">
					<a class="nav-link" href="<c:url value='./member/loginmember.jsp'/>">로그인</a>
					<a class="nav-link" href="<c:url value='./addmember.jsp'/>">회원가입</a>
				</c:when>
				<%-- <c:otherwise>
					<li style="padding: 7px; color: white">[<%=sessionId%>님]</li>
					<a class="nav-link" href="<c:url value='./member/logoutmember.jsp'/>">로그아웃</a>
					<a class="nav-link" href="<c:url value='./member/updatemember.jsp'/>">회원 수정</a>
				</c:otherwise> --%>
			</c:choose>
		</div>
	</div>
</nav>
