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

      HttpSession sessions = request.getSession(false);
      if (sessions != null) {
        session.invalidate();
      }
      response.sendRedirect("../auth/login.html");
    %>
</body>
</html>