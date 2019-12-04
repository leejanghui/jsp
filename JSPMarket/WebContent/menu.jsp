<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionName = (String) session.getAttribute("sessionName");
%>
<style>
a { color : 00FFFF; }
</style>
<nav class="navbar navber-expand navbar-blue bg-dark">
	<div class="container">
		<div class="nav-itme">
			<a class="nav-link" href="./boots.jsp">홈</a>
		</div>
		<div class="nav-itme">
			<a class="nav-link" href="./products.jsp">상품목록</a>
		</div>
			<%
				if(session.getAttribute("sessionName") == null) {
			%>
					<a class="nav-link" href="<c:url value='./member/login.jsp'/>">로그인</a>
					<a class="nav-link" href="<c:url value='./member/addmember.jsp'/>">회원가입</a>
			<%
				}else{
			%>
					<div class="nav-itme">
						<a class="nav-link" href="./addProduct.jsp">상품추가</a>
					</div>
					<div class="nav-itme">
						<a class="nav-link" href="./editProduct.jsp?edit=update">상품수정</a>
					</div>
					<div class="nav-itme">
						<a class="nav-link" href="./editProduct.jsp?edit=delete">상품삭제</a>
					</div>
					<div class="nav-itme">
						<li class="nav-item"><a class="nav-link" href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
					</div>
					<div class="nav-itme">
					<li style="padding: 7px; color: white">어서오세요.<%=session.getAttribute("sessionName")%>님</li>
					<a class="nav-link" href="<c:url value='/member/logout.jsp'/>">로그아웃</a>
					<a class="nav-link" href="<c:url value='/member/updatemember.jsp'/>">회원 수정</a>
			<%
				}
			%>
		</div>
	</div>
</nav>
