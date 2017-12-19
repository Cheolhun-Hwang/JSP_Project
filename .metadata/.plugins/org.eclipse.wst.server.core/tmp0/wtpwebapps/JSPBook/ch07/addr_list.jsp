<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" import="jspbook.ch07.*"%>
<!DOCTYPE html>

<jsp:useBean id="am" scope="application" class="jspbook.ch07.AddrManager" />

<html>
<head>
<title>ch07 : 주소록 목록</title>
</head>
<body>
<div align=center>
<H2>주소록</H2>
<HR>
<a href="addr_form.html">주소추가</a><P>
<table border=1 width=500>
<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td></tr>
<%
for(AddrBean ab : am.getAddrList()) {
%>
	<tr>
	<td><%=ab.getUsername() %></td>
	<td><%=ab.getTel() %></td>
	<td><%=ab.getEmail() %></td>
	<td><%=ab.getSex() %></td>
	</tr>
<%
}
%>
</table>
</div>
</body>
</html>


