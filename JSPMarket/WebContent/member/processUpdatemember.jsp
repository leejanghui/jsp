<%@page contentType = "text/html; charset=utf-8"%>
<%@page import = "com.oreilly.servlet.*"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<%@include file = "../dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String Id = (String) session.getAttribute("sessionloginId");

	String sql = "SELECT * FROM member WHERE id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, Id);
	rs = pstmt.executeQuery();

	if(rs.next()) {
		sql = "UPDATE member SET password = ?, name = ?, birth = ?, mail = ?, phone = ?, address = ? WHERE id = ?;";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setString(2, name);
		pstmt.setString(3, birth);
		pstmt.setString(4, mail);
		pstmt.setString(5, phone);
		pstmt.setString(6, address);
		pstmt.setString(7, Id);
		pstmt.executeUpdate();
	}
	
	String sessionname = rs.getString("name");
	session.setAttribute("sessionloginName", sessionname);
	
	if (rs!= null) 
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null) 
		conn.close();
	
	response.sendRedirect("../boots.jsp");
%>