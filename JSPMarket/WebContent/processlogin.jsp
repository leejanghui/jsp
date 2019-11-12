<%@page contentType="text/html; charset=utf-8"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@include file="dbconn.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
	String M_ID = request.getParameter("M_Id");
	String password = request.getParameter("password");

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, M_ID);
	rs = pstmt.executeQuery();
	
	if (rs.next()) {
		String id = rs.getString("id");
		if(M_ID != id){
			System.out.println("pppp");
		}else{
			if(password == rs.getString("password")){
				String name = rs.getString("name");
				session.setAttribute("sessionId", name);
			}
		}
	}
	if (rs!= null)
		rs.close();   
	if (pstmt != null)
	    pstmt.close();
	if (conn != null) 
		conn.close();
	
	response.sendRedirect("boots.jsp");
%>