<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
	
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = "select * from member";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	if (rs.next()){
		sql = "delete from member where id = ?;";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, sessionId);
		pstmt.executeUpdate();
	}
	
	session.invalidate();
	
	if(rs != null)
		rs.close();
	if(pstmt != null)
		pstmt.close();
	if(conn != null)
		conn.close();
	
	response.sendRedirect("boots.jsp");
%>