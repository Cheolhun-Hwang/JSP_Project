<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	
	if(username != null){
		session.setAttribute("user", username);
	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Twitter</title>
</head>
<body>
	<div align=center>
		<h3>My simple Twitter!</h3>
		<hr>
		<form name="form2" method="POST" action="tweet.jsp">
			@<%= session.getAttribute("user") %> <input type="text" name="msg" />
			<input type="submit" value="tweet" />
		</form>
		<hr>
		<div align="left">
			<UL>
				<%
					ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
			
					if(msgs != null){
						for(String msg : msgs){
							out.println("<li>" + msg + "</li>");
						}
					}
				%>
			</UL>
		</div>
	</div>
</body>
</html>