<%@page import="com.wasa.controller.CartOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int cartId = Integer.parseInt(request.getParameter("cartId"));
		CartOperations caop = new CartOperations();
		int result = caop.deleteCartItem(cartId);
		if(result == 1){
			%>
			<jsp:forward page="cart.jsp"/>
			<%
		}
	%>

</body>
</html>