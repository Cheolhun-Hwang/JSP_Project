<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("utf-8"); %>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/jspdb";
	
	try{
		Class.forName(jdbc_driver);
		
		conn = DriverManager.getConnection(jdbc_url, "hooney", "hch");
		String sql = "INSERT INTO jdbc_test VALUES(?, ?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		
		if(request.getParameter("username") != null){
			pstmt.execute();
		}
	}catch(Exception e){
		System.out.println(e);
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JDBC 테스트</title>
</head>
<body>
	<div align="center">
		<h2>이벤트 등록</h2>
		<hr>
		<form name='form1' method='post'>
		등록이름 : <input type='text' name='username' size=20>
		주소 : <input type='text' name='email' size=20>
		<input type='submit' value='등록'>
		</form>
		<hr>
	</div>
	# 등록 목록 <p>
<%
try{
	String sql = "SELECT username, email FROM jdbc_test";
	pstmt = conn.prepareStatement(sql);
	
	ResultSet rs = pstmt.executeQuery();
	int i=1;
	
	while(rs.next()){
		out.println(i + " : "+ rs.getString("username")+", " + rs.getString("email")+"<BR>");
		i++;
	}
	
	rs.close();
	pstmt.close();
	conn.close();
}catch(Exception e){
	System.out.println(e);
}
	
%>
</body>
</html>