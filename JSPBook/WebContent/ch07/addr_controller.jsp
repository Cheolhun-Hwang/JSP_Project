<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*, jspbook.ch07.*"%>

<jsp:useBean id="am" scope="application" class="jspbook.ch07.AddrManager"/>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"/>
<jsp:setProperty name="addr" property="*" />

<%
String action = request.getParameter("action");

if(action.equals("list")) {
	ArrayList<AddrBean> addrlist = am.getAddrList();
	request.setAttribute("addrlist", addrlist);
	pageContext.forward("add_list.jsp");
}

else if(action.equals("add")) {
	am.add(addr);
	response.sendRedirect("addr_list.jsp");
}
    
    
%>