<%@page import="com.wasa.controller.LoginDetails"%>
<%@page import="com.wasa.model.Auth"%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

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
String email=request.getParameter("email");
String password=request.getParameter("pass");
Auth auth=new Auth(email,password);
LoginDetails ld=new LoginDetails();
int result=ld.loginDetails(auth);

if(result==1){
	session.getServletContext();
	session.setAttribute("memberId",ld.getMemberId());
	int results=1;
	session.setAttribute("session",results);
	if(ld.getUserType()=="admin"){
	%>
	<jsp:forward page="index.jsp">
    <jsp:param name="usertype" value="<%=ld.getUserType() %>"/>
</jsp:forward>
<%
	}else if(ld.getUserType()=="customer"){
	%>
	<jsp:forward page="../Admin/dashboard.jsp">
    <jsp:param name="usertype" value="<%=ld.getUserType() %>"/>
    </jsp:forward>
    <%
	}
}else{
	response.setContentType("text/html");
	PrintWriter writer = response.getWriter();
	RequestDispatcher includeDispatcher = request.getRequestDispatcher("../auth/login.html");
	includeDispatcher.include(request, response);
	writer.print("username or password is wrong");
}

%>
</body>
</html>