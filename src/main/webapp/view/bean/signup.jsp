<%@page import="com.wasa.controller.Customer"%>

<%@page import="com.wasa.model.CustomerDetails"%>
<%@page import="com.wasa.model.UserDetails"%>
<%@page import="org.mindrot.jbcrypt.BCrypt"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>


<body>
<jsp:useBean id="user" class="com.wasa.model.CustomerDetails" scope="page" />
<jsp:setProperty name="user" property="*"/>
<%
user.setImage("Image");
user.setUserType("customer");
Customer cd=new Customer();


%>
<%
	 String pass=BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
	user.setPassword(pass);
	int result=cd.customerDetails(user);
	
	if(result==1){
		%>
		<jsp:forward page="../Member/product.jsp">
		<jsp:param value="${user.getEmail()}" name="email"/>
		</jsp:forward>
		<%
	}


 %>
</body>
</html>