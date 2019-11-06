<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<html>
<head>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else {
			document.addForm.reset();
		}
	}
</script>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 정보</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp" %>
		<%
		String productId = request.getParameter("id");

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from product where p_id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
		%>
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="C:/JspFileUpload/<%=rs.getString("p_fileName")%>" style="width : 100%" />
				</div>
				<div class="col-md-6">
					<h3><%=rs.getString("p_name")%></h3>
					<p><%=rs.getString("p_description")%>
					<p>
						<b>상품 코드 : </b><a class="badge badge-danger"> <%=rs.getString("p_id")%></a>
					<p>
						<b>제조사</b>:<%=rs.getString("p_manufacturer")%>
					<p>
						<b>분류</b>:<%=rs.getString("p_category")%>
					<p>
						<b>재고 수</b>:<%=rs.getLong("p_unitInStock")%>
					<p>
						<b>가격</b>:<%=rs.getString("p_unitPrice")%>원
					
					<form name="addForm" action="./addCart.jsp?id=<%=rs.getString("p_id")%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문&raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning" onclick="addCart">장바구니&raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
					</form>
					<%
						}
						if(rs != null)
							rs.close();
						if(pstmt != null)
							pstmt.close();
						if(conn != null)
							conn.close();
					%>
				</div>
			</div>
			<hr>
		</div>
	<jsp:include page="footer.jsp" />
</body>
</html>