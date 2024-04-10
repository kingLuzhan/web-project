 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
      // Get the session object
      HttpSession sessions = request.getSession();
      
      // Store some data in the session
      session.setAttribute("username", "johndoe");
      
      // Retrieve data from the session
      String username = (String) session.getAttribute("username");
      out.println(username);
    %>
    
</body>
</html>