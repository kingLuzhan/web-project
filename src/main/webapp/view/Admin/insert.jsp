<%@page import="com.wasa.controller.ProductDetail"%>
<%@page import="com.wasa.model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="product" class="com.wasa.model.Product" scope="page"></jsp:useBean>
<jsp:setProperty name="product" property="*" />

<%
ProductDetail pd=new ProductDetail();
pd.productDetails(product);

%>
</body>
</html>