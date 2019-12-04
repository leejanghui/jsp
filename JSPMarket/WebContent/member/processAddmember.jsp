<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import = "com.oreilly.servlet.*"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.sql.*"%>
<%@ include file = "../dbconn.jsp" %>
<%
	String memberId = request.getParameter("memberId");
	String memberpassword = request.getParameter("memberpassword");
	String mambername = request.getParameter("mambername");
	String membergender = request.getParameter("membergender");
	String mamberbirth = request.getParameter("mamberbirth");
	String memberemail = request.getParameter("memberemail");
	String memberphone = request.getParameter("memberphone");
	String memberaddress = request.getParameter("memberaddress");
	String memberRegist_day = request.getParameter("memberRegist_day");
	
	PreparedStatement pstmt = null;

	String sql = "INSERT INTO member VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?);";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, memberId);
	pstmt.setString(2, memberpassword);
	pstmt.setString(3, mambername);
	pstmt.setString(4, membergender);
	pstmt.setString(5, mamberbirth);
	pstmt.setString(6, memberemail);
	pstmt.setString(7, memberphone);
	pstmt.setString(8, memberaddress);
	pstmt.setString(9, memberRegist_day);
	pstmt.executeUpdate();

	if (pstmt != null)
		pstmt.close();
	if(conn != null)
		conn.close();
	
	response.sendRedirect("login.jsp");
%>