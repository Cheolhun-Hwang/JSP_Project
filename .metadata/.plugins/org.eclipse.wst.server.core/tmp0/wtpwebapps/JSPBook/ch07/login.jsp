<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
    <%-- import="jspbook.ch07.LoginBean" --%>
 <jsp:useBean id="Login" class="jspbook.ch07.LoginBean" scope="page" />
 <jsp:setProperty name="Login" property="*" />
 <%--<%
 	Login.setUserid(request.getParameter("uid"));
 	Login.setPasswd(request.getParameter("pwd"));
 %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Page</title>
</head>
<body>
<div align='center'>
		<h1>Beans 로그인</h1>
		<hr>
		<%
			if( !Login.checkUser() ){
				out.println("로그인 실패!!");
			}else{
				out.println("로그인 성공!!!");
			}
		%>
		
		<hr>
		사용자 아이디 : <jsp:getProperty name='Login' property='userid' /><br>
		사용자 패스워드 : <jsp:getProperty name='Login' property='passwd' />
	</div>
</body>
</html>