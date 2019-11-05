<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%
	Connection conn = null;

	try {
		String url = "jdbc:mysql://localhost:3306/JSPMarketDB?useSSL=false";
		//?useSSL=false을 추가한 이유는 SSL을 사용하지 않고 연결하는 것을 비권장하여서 SSL을 사용 할 수 있게 변경함.
		String user = "root";
		String password = "1234";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		
	} catch(SQLException ex){
		out.println("데이터베이스 연결이 실패했습니다.<br>");
		out.println("SQLException : " + ex.getMessage());
	}
%>