

<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.wasa.model.Product"%>
<%@page import="com.wasa.controller.ProductDetail"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
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

product.setImage("JFIF File (.jfif)");
pd.productDetails(product);
%>


<%

/* String img=file_name2;
product.setImage(img);
 */
%> 
</body>
</html>