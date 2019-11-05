<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import = "com.oreilly.servlet.*"%>
<%@ page import = "com.oreilly.servlet.multipart.*"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.sql.*"%>
<%@ include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String filename="";
	String realFolder = "C:\\JspFileUpload";
	String encType = "utf-8";
	int maxSize = 5 * 1024 * 1024;
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String memberId = multi.getParameter("memberId");
	String memberpassword = multi.getParameter("memberpassword");
	String mambername = multi.getParameter("mambername");
	String membergender = multi.getParameter("membergender");
	String mamberbirth = multi.getParameter("mamberbirth");
	String memberemail = multi.getParameter("memberemail");
	String memberphone = multi.getParameter("memberphone");
	String memberaddress = multi.getParameter("memberaddress");
	String memberRegist_day = multi.getParameter("memberRegist_day");
	
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