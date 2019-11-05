<%@ page contentType = "text/html; charset=utf-8"%>
<%@ page import = "com.oreilly.servlet.*"%>
<%@ page import = "com.oreilly.servlet.multipart.*"%>
<%@ page import = "java.util.*"%>
<%@ page import = "java.sql.*"%>
<%@ include file = "dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");

	String filename = "images";
	String path = "C:\\Users\\USER\\eclipse-workspace\\WebMarket\\WebContent\\resources\\images";

	String realFolder = "C:\\JspFileUpload";
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
			new DefaultFileRenamePolicy());

	Enumeration file = multi.getFileNames();

	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitInStock = multi.getParameter("unitInStock");
	String condition = multi.getParameter("condition");
	String image = multi.getFilesystemName("image");

	Integer price;

	if (unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.valueOf(unitPrice);

	long stock;
	
	if ( unitInStock.isEmpty() ){
		stock = 0;
	}
	
	else{
		stock = Integer.valueOf(unitInStock);
	}

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);

	PreparedStatement pstmt = null;

	String sql = "insert into product values(?, ?, ?, ?, ?, ?, ?, ?, ?);";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	pstmt.setString(2, name);
	pstmt.setInt(3, price);
	pstmt.setString(4, description);
	pstmt.setString(5, manufacturer);
	pstmt.setString(6, category);
	pstmt.setLong(7, stock);
	pstmt.setString(8, condition);
	pstmt.setString(9, fileName);
	pstmt.executeUpdate();

	if (pstmt != null)
		pstmt.close();
	if(conn != null)
		conn.close();
	
	response.sendRedirect("products.jsp");
%>