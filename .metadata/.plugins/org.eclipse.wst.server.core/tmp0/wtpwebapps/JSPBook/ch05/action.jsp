<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Action jsp</title>
</head>
<body>
	<h2>action : include 에서 footer 호출</h2>
	<hr>
	Main.jsp<br>
	<jsp:forward page="footer.jsp">
		<jsp:param name="email" value="qewqsa@naver.com"/>
		<jsp:param name="tel" value="000-000-0000"/>
	</jsp:forward>
</body>
</html>