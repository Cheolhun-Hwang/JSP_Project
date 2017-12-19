<%@ tag body-content="scriptless" description="item 출력 태그" language="java" pageEncoding="UTF-8"%>

<%@ attribute name = "bgcolor" %>
<%@ attribute name = "border" %>


<jsp:useBean id="product" class="jspbook.ch10.Product" />

<%-- jsp:doBody == 상품목록 --%>
<h2><jsp:doBody /></h2>
<table border="${border}" bgcolor="${bgcolor}" width="80%">
	<% 
		for(String item : product.getProductList()){
			out.println("<tr><td>"+item+"</td></tr>");
		}
	%>
</table>