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
   
   String Id = multi.getParameter("id");
   String password = multi.getParameter("password");
   String name = multi.getParameter("name");
   String gender = multi.getParameter("gender");
   String birth = multi.getParameter("birth");
   String mail = multi.getParameter("mail");
   String phone = multi.getParameter("phone");
   String address = multi.getParameter("address");
   String regist_day = multi.getParameter("regist_day");
   
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   String sql = "select * from member where id=?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1, Id);
   rs = pstmt.executeQuery();
   
	if(rs.next()) {
		sql = "UPDATE member SET password=?, name=?, gender=?, birth=?, mail=?, phone=?, address=?, regist_day=? WHERE p_id=?";
    	pstmt = conn.prepareStatement(sql);
   		pstmt.setString(1, password);
		pstmt.setString(2, name);
		pstmt.setString(3, gender);
    	pstmt.setString(4, birth);
    	pstmt.setString(5, mail);
    	pstmt.setString(6, phone);
    	pstmt.setString(7, address);
    	pstmt.setString(8, regist_day);
    	pstmt.executeUpdate();
   }
   if (rs!= null) 
      rs.close();   
   if (pstmt != null)
      pstmt.close();
   if (conn != null) 
      conn.close();
   
   response.sendRedirect("editProduct.jsp?edit=update");
%>