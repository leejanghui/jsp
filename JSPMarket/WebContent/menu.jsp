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
			<%
				if(session.getAttribute("sessionId") == null) {
			%>
					<a class="nav-link" href="<c:url value='./login.jsp'/>">로그인</a>
					<a class="nav-link" href="<c:url value='./addmember.jsp'/>">회원가입</a>
			<%
				}else{
			%>
					<li style="padding: 7px; color: white">[<%=session.getAttribute("sessionId")%>님]</li>
					<a class="nav-link" href="<c:url value='./logoutmember.jsp'/>">로그아웃</a>
					<a class="nav-link" href="<c:url value='./updatemember.jsp'/>">회원 수정</a>
			<%
				}
			%>
		</div>
	</div>
</nav>
