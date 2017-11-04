<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>테스트 결과</title>
</head>
<body>
	<div align=center>
		<h2>request 테스트 결과</h2>
		<hr>
		<table border=1 cellspacing="1" cellpadding="1">
			<tbody>
				<tr>
					<td>이름</td>
					<td><%= request.getParameter("username") %></td>
				</tr>
				<tr>
					<td>직업</td>
					<td><%= request.getParameter("job") %></td>
				</tr>
				<tr>
					<td>관심분야</td>
					<td><% 
						String[] favorites = request.getParameterValues("favorite");
						for(String favorite : favorites){
							out.println(favorite+"<br>");
						}
					%></td>
				</tr>
			</tbody>
		</table>
		<hr>
		<h2>추가 정보</h2>
		<table border=0>
			<tbody>
				<tr>
					<td>
						1. 클라이언트 IP 주소 : <%= request.getRemoteAddr() %>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>