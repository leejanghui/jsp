<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<script type="text/javascript" src="../resources/js/jquery-3.4.1.js"></script>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<title>상품 등록</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원가입</h1>
		</div>
	</div>
	<div class="container">
		<form name="newMember" action="./processAddmember.jsp" class="form-horizontal" method="post" accept-charset="utf-8" enctype="multipart/form-data">
				<div class="form-group row">
					<label class="col-sm-2">아이디</label>
					<div class="col-sm-3">
						<input type="text" id="memberId" name="memberId" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">비밀번호</label>
					<div class="col-sm-3">
						<input type="text" id="memberpassword" name="memberpassword" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">이름</label>
					<div class="col-sm-3">
						<input type="text" id="mambername" name="mambername" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">성별</label>
					<div class="col-sm-5">
						<input type="radio" name="membergender" value="M"> 남성
						<input type="radio" name="membergender" value="W"> 여성
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">생년월일</label>
					<div class="col-sm-3">
						<input type="date" id="mamberbirth" name="mamberbirth" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">이메일</label>
					<div class="col-sm-3">
						<input type="text" id="memberemail" name="memberemail" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">전화번호</label>
					<div class="col-sm-3">
						<input type="text" id="memberphone" name="memberphone" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">주소</label>
					<div class="col-sm-3">
						<input type="text" id="memberaddress" name="memberaddress" class="form-control">
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2">등록일</label>
					<div class="col-sm-5">
						<input type="text" id="memberRegist_day" name="memberRegist_day" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
	</div>
</body>
</html>