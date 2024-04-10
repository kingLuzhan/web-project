<%@page import="com.wasa.controller.ProductDetail"%>
<%@page import="com.wasa.controller.OrderDetails"%>
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
int productId=Integer.parseInt(request.getParameter("productId"));
ProductDetail pd=new ProductDetail();
int result=pd.deleteProduct(productId);
if(result==1){
	%>
	<jsp:forward page="product.jsp" />
	
	<%
}

%>
</body>
</html>