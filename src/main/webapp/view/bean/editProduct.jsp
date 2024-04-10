<%@page import="com.wasa.controller.EditUserDetails"%>
<%@page import="com.wasa.controller.ProductDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="editPage" class="com.wasa.model.EditPage" scope="page"></jsp:useBean>
<jsp:setProperty name="product" property="*" />
<% EditUserDetails pd=new EditUserDetails();
editPage.setImage("JFIF File (.jfif)");
int result=pd.editProduct(editPage);
if(result!=0){
	%>
	<jsp:forward page="product.jsp"></jsp:forward>
	
	<%
	
}


%>
</body>
</html>