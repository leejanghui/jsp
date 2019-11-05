<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>회원 정보 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 정보 수정</h1>
		</div>
	</div>
	<%@include file="dbconn.jsp"%>
	<%
		String productId = request.getParameter("id");
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "select * from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memberpassword);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-sm-7">
				<form name="updateMember" action="./processUpdatemember.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">비밀번호</label>
							<div class="col-sm-3">
								<input type="text" id="memberpassword" name="memberpassword" class="form-control" value="<%=rs.getString("p_name")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">가격</label>
							<div class="col-sm-3">
								<input type="text" id="unitPrice" name="unitPrice" class="form-control" value="<%=rs.getInt("p_unitPrice")%>" />
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">상세 설명</label>
							<div class="col-sm-5">
								<textarea name="description" rows="2" cols="50" class="form-control"><%=rs.getString("p_description")%></textarea>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">제조사</label>
							<div class="col-sm-3">
								<input type="text" name="manufacturer" class="form-control"
									value="<%=rs.getString("p_manufacturer")%>" />
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">분류</label>
							<div class="col-sm-3">
								<input type="text" name="category" class="form-control" value="<%=rs.getString("p_category")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">재고 수</label>
							<div class="col-sm-3">
								<input type="text" id="unitInStock" name="unitInStock" class="form-control" value="<%=rs.getLong("p_unitInStock")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">상태</label>
							<div class="col-sm-5">
								<input type="radio" name="condition" value="New"> 신규제품 
								<input type="radio" name="condition" value="old"> 중고제품
								<input type="radio" name="condition" value="Refurbished"> 재생제품
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">이미지</label>
							<div class="col-sm-5">
								<input type="file" name="productImage" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary" value="등록">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%
		}
		if (rs != null)
			rs.close();
		if (pstmt != null)
			rs.close();
		if (conn != null)
			rs.close();
	%>
</body>
</html>