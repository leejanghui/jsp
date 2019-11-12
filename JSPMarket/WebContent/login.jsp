<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<title>Login</title>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<form class="form-signin" action="./processlogin.jsp" method="post">
				<div class="form-group">
					<label>User Name</label>
					<input type="text" id="M_Id" name="M_Id" class="form-control">
				</div>
				<div class="form-group">
					<label>Password</label>
					<input type="password" id="password" name="password" class="form-control">
				</div>
				<button class="btn btn btn-lg btn-success btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>