<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.util.Date"%>
<style>
h1 {
	color: FFC4AF;
	text-shadow: 2px 3px 4px FFC4AF;
}

h3 {
	color: FABD44;
	font-weight: bold;
}
</style>
<%!String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!";%>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">
			<%=greeting%>
		</h1>
	</div>
</div>
<p>
	<a href="./products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
	<main role="main">
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>

			<%
				response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속 시각: " + CT + "\n");
			%>


		</div>
	</div>
	<hr>
	</main>