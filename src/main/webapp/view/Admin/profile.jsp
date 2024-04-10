<%@page import="java.util.ArrayList"%>
<%@page import="com.mysql.cj.x.protobuf.MysqlxDatatypes.Array"%>
<%@page import="com.wasa.model.UserDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.wasa.controller.Customer"%>
<%@page import="com.wasa.model.CustomerDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>

<!-- Design by Code Media(codemediaweb.com)-->

<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Profile</title>
 <link rel="stylesheet"
		href="../css/styles.css">
	<link rel="stylesheet"
		href="../css/responsive.css">
 <link rel="stylesheet"
		href="style.css">
</head>
<body>

<header>

		<div class="logosec">
			<div class="logo">WASA</div>
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
				class="icn menuicn"
				id="menuicn"
				alt="menu-icon">
		</div>

		<div class="searchbar">
			<input type="text"
				placeholder="Search">
			<div class="searchbtn">
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
					class="icn srchicn"
					alt="search-icon">
			</div>
		</div>

		<div class="message">
			<div class="circle"></div>
			<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210183322/8.png"
				class="icn"
				alt="">
			
		<div class="dp">
              <img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
                    class="dpicn"
                    alt="dp">
              </div>
		</div>

	</header>
	<div class="main-container">
		<div class="navcontainer">
			<nav class="nav">
				<div class="nav-upper-options">
					<a href="../Admin/dashboard.jsp"><div class="nav-option option3">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
							class="nav-img"
							alt="dashboard">
						<h3> Dashboard</h3>
					</div></a>
				<a href="../Admin/product.jsp">
					<div class="option2 nav-option">
						<img src="../icons/products.png"
							class="nav-img"
							alt="articles">
						<h3> Product</h3>
					</div>
				</a>
				<a href="../Admin/orders.jsp">
					<div class="nav-option option3">
						<img src="../icons/orders.png" class="nav-img"
							alt="report">
						<h3> Order</h3>
					</div>
					</a>
					<a href="../Admin/customer.jsp">
					<div class="nav-option option4">
						<img src="../icons/customer.png"
							class="nav-img"
							alt="institution">
						<h3> Customer</h3>
					</div>
					</a>
<a href="../Admin/profile.jsp">
					<div class="nav-option option1">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
							class="nav-img"
							alt="blog">
						<h3> Profile</h3>
					</div>
</a>
<a href="#">
					<div class="nav-option option6">
						<img src="../icons/setting.png"
							class="nav-img"
							alt="settings">
						<h3> Settings</h3>
					</div>
</a>
<a href="../session/close.jsp">
					<div class="nav-option logout">
						<img src=
"../icons/logout.icns"
							class="nav-img"
							alt="logout">
						<h3>Logout</h3>
					</div>
</a>
				</div>
			</nav>
		</div>
		<div class="main">

			<div class="searchbar2">
				<input type="text"
					name=""
					id=""
					placeholder="Search">
				<div class="searchbtn">
				<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
						class="icn srchicn"
						alt="search-button">
				</div>
			</div>

<% Customer customer =new Customer();
ArrayList<UserDetails> userDetails = customer.getUserAccount("zx");
for(UserDetails user : userDetails){ 
%>

    <div class="wrapper">
    <div class="left">
        <img src="https://1.bp.blogspot.com/-vhmWFWO2r8U/YLjr2A57toI/AAAAAAAACO4/0GBonlEZPmAiQW4uvkCTm5LvlJVd_-l_wCNcBGAsYHQ/s16000/team-1-2.jpg" alt="user" width="145">
        <h4><% out.print(user.getName());%></h4>
         <p>Admin</p>
    </div>
    <div class="right">
        <div class="info">
            <h3>About Admin</h3>
            <div class="info_data">
                 <div class="data">
                    <h4>Address</h4>
                    <p><% out.print(user.getAddress());%></p>
                 </div>
                 <div class="data">
                   <h4>Phone</h4>
                    <p>+977-<% out.print(user.getNumber());%></p>
              </div>
            </div>
            <div class="info_data">
                 <div class="data">
                    <h4>Email</h4>
                    <p><% out.print(user.getEmail());%></p>
                 </div>
                 
            </div>
        </div>
 <div class="info_data">
                 <div class="data">
                    <form action="">
                    <input type="submit" value="Edit">
                    </form>
                 </div>
                 
            </div>

 
    </div>
</div>
<% } %>

</div>
</body>
</html>

