<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<title>회원 정보 수정</title>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 정보 수정</h1>
		</div>
	</div>
	<%@include file="../dbconn.jsp"%>
	<%
		String sessionId = (String) session.getAttribute("sessionloginId");
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
		String sql = "select * from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, sessionId);
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
							<input type="text" id="M_password" name="M_password" class="form-control" value="<%=rs.getString("password")%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이름</label>
						<div class="col-sm-3">
							<input type="text" id="M_name" name="M_name" class="form-control" value="<%=rs.getString("name")%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">생일</label>
						<div class="col-sm-3">
							<input type="text" id="M_birth" name="M_birth" class="form-control" value="<%=rs.getString("birth")%>" />
						</div>
					</div>					
					<div class="form-group row">
						<label class="col-sm-2">메일</label>
						<div class="col-sm-3">
							<input type="text" id="M_mail" name="M_mail" class="form-control" value="<%=rs.getString("mail")%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">전화번호</label>
						<div class="col-sm-3">
							<input type="text" id="M_phone" name="M_phone" class="form-control" value="<%=rs.getString("phone")%>" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">주소</label>
						<div class="col-sm-3">
							<input type="text" id="M_address" name="M_address" class="form-control" value="<%=rs.getString("address")%>" />
						</div>
					</div>
					<button class="btn btn btn-lg btn-success btn-block" type="submit">수정완료</button>
				</form>
				<a href="deletemember.jsp" class="btn btn-danger" role="button">삭제 &raquo;</a>
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