<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession sessions = request.getSession();
%>
<c:if test="${not empty sessionScope.results}">
<!-- Only display the cart items if the user is logged in -->
<jsp:forward page="cart.jsp"></jsp:forward>
</c:if>
<c:if test="${empty sessionScope.results}">
<!-- If the user is not logged in, display a message and a link to the login page -->
<jsp:forward page="../auth/login.html"></jsp:forward>
</c:if>

</body>
</html>