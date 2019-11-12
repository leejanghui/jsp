<%@page contentType = "text/html; charset=utf-8"%>
<%@page import = "com.oreilly.servlet.*"%>
<%@page import = "com.oreilly.servlet.multipart.*"%>
<%@page import = "java.util.*"%>
<%@page import = "java.sql.*"%>
<%@include file = "dbconn.jsp" %>
<%
	String filename="";
	String realFolder = "C:\\JspFileUpload";
	String encType = "utf-8";
	int maxSize = 5 * 1024 * 1024;

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	String password = multi.getParameter("M_password");
	String name = multi.getParameter("M_name");
	String birth = multi.getParameter("M_birth");
	String mail = multi.getParameter("M_mail");
	String phone = multi.getParameter("M_phone");
	String address = multi.getParameter("M_address");

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sessionId = (String) session.getAttribute("sessionId");

	String sql = "select * from member where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, sessionId);
	rs = pstmt.executeQuery();

	if(rs.next()) {
		sql = "UPDATE member SET password=?, name=?, birth=?, mail=?, phone=?, address=? WHERE id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, password);
		pstmt.setString(2, name);
		pstmt.setString(3, birth);
		pstmt.setString(4, mail);
		pstmt.setString(5, phone);
		pstmt.setString(6, address);
		pstmt.setString(7, sessionId);
		pstmt.executeUpdate();
	}
	
	String sessionname = rs.getString("name");
	session.setAttribute("sessionName", sessionname);
	
	if (rs!= null) 
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null) 
		conn.close();
	
	response.sendRedirect("boots.jsp");
%>