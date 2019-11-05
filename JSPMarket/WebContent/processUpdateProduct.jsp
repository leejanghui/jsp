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
   
   String productId = multi.getParameter("productId");
   String name = multi.getParameter("name");
   String unitPrice = multi.getParameter("unitPrice");
   String description = multi.getParameter("description");
   String manufacturer = multi.getParameter("manufacturer");
   String category = multi.getParameter("category");
   String unitInStock = multi.getParameter("unitInStock");
   String condition = multi.getParameter("condition");
   
   Integer price;
   
   if(unitPrice.isEmpty())
      price = 0;
   else 
      price = Integer.valueOf(unitPrice);
   
   long stock;
   
   if(unitInStock.isEmpty())
      stock = 0;
   else
      stock = Long.valueOf(unitInStock);
   
   Enumeration files = multi.getFileNames();
   String fname = (String)files.nextElement();
   String fileName = multi.getFilesystemName(fname);
   
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   String sql = "select * from product where p_id=?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1, productId);
   rs = pstmt.executeQuery();
   
   if(rs.next()) {
      if(fileName != null) {
         sql = "UPDATE product SET p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitInStock=?, p_condition=?, p_fileName=? WHERE p_id=?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, name);
         pstmt.setInt(2, price);
         pstmt.setString(3, description);
         pstmt.setString(4, manufacturer);
         pstmt.setString(5, category);
         pstmt.setLong(6, stock);
         pstmt.setString(7, condition);
         pstmt.setString(8, filename);
         pstmt.setString(9, productId);
         pstmt.executeUpdate();
      }else {
         sql = "UPDATE product SET p_name=?, p_unitPrice=?, p_description=?, p_manufacturer=?, p_category=?, p_unitInStock=?, p_condition=? WHERE p_id=?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, name);
         pstmt.setInt(2, price);
         pstmt.setString(3, description);
         pstmt.setString(4, manufacturer);
         pstmt.setString(5, category);
         pstmt.setLong(6, stock);
         pstmt.setString(7, condition);
         pstmt.setString(8, productId);
         pstmt.executeUpdate();
      }
   }
   if (rs!= null) 
      rs.close();   
   if (pstmt != null)
      pstmt.close();
   if (conn != null) 
      conn.close();
   
   response.sendRedirect("editProduct.jsp?edit=update");
%>