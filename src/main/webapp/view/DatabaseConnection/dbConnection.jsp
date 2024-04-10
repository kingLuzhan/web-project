<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*"%>
  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<sql:setDataSource var="dataSource" driver="com.mysql.jdbc.Driver"
   url="jdbc:mysql://localhost/mydatabase"
   user="myuser" password="mypassword" />
</body>
</html>