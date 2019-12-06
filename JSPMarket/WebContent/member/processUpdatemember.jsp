<%@page contentType = "text/html; charset=utf-8"%>
<%@page import = "com.oreilly.servlet.*"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<%@include file = "../dbconn.jsp" %>
<%
	String M_password = request.getParameter("M_password");
	String M_name = request.getParameter("M_name");
	String M_birth = request.getParameter("M_birth");
	String M_mail = request.getParameter("M_mail");
	String M_phone = request.getParameter("M_phone");
	String M_address = request.getParameter("M_address");

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String Id = (String) session.getAttribute("sessionloginId");

	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, Id);
	rs = pstmt.executeQuery();

	if(rs.next()) {
		sql = "UPDATE member SET password = ?, name = ?, birth = ?, mail = ?, phone = ?, address = ? WHERE id = ?;";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, M_password);
		pstmt.setString(2, M_name);
		pstmt.setString(3, M_birth);
		pstmt.setString(4, M_mail);
		pstmt.setString(5, M_phone);
		pstmt.setString(6, M_address);
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