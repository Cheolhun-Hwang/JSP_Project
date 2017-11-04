<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
</head>

<style>
	td{
		text-align:center;
	}
</style>
<body>
<div align=center>
	<h2>게시판</h2>
	<hr>
	<table border=1 width=60%>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
	</tr>
	<%-- <%
		for(int i=0;i<10;i++){
			out.println("<tr>");
			out.println("<td>" + (i+1) + "</td>");
			out.println("<td>" + "제목 " + (i+1) +"</td>");
			out.println("<td>" + "홍길동 " + (i+1) +"</td>");
			out.println("</tr>");
		}
	%> --%>
	<%
		for(int i=0;i<10;i++){
	%>
			<tr>
				<td><%= (i+1) %></td>
				<td><%= "제목 " + (i+1) %></td>
				<td><%= "작성자 " + (i+1) %></td>
			</tr>
	<%
		}
	
	%>
	</table>
</div>

</body>
</html>