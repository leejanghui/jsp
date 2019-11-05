<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<p> <a href="./addProduct.jsp" class="btn btn-success"> 상품 등록&raquo;</a>	
	<div class="container">
		<div class="row" align="center">
			<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
			%>
			<div class="col-md-4">
				<img src="C:/JspFileUpload/<%=rs.getString("p_fileName")%>" style="width : 100%">
				<h3><%=rs.getString("p_name")%></h3>
				<p><%=rs.getString("p_description") %>
				<p><%=rs.getLong("p_UnitPrice")%>원
				<p><a href="./product.jsp?id=<%=rs.getString("p_id")%>"class="btn btn-secondary" >상세 정보 &raquo;</a>
			</div>
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
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
