<%@page import="com.wasa.model.UserDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wasa.controller.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
					<div class="nav-option option1">
						<img src="../icons/customer.png"
							class="nav-img"
							alt="institution">
						<h3> Customer</h3>
					</div>
					</a>
<a href="../Admin/profile.jsp">
					<div class="nav-option option5">
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
					placeholder="Sear Customer">
				<div class="searchbtn">
				<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
						class="icn srchicn"
						alt="search-button">
				</div>
			</div>
			<div class="report-container">
				<div class="report-header">
				<h1 class="recent-Order">Customer List</h1>
					<button class="view">View All</button>
				</div>
				<div class="report-body">
<div class="row">
<% Customer customer =new Customer();
ArrayList<UserDetails> userDetails = customer.getUserDetails();
for(UserDetails user : userDetails){ 
%>
  <div class="column">
    <div class="card">
      <div class="customer">
  <img src="../icons/customer.png" alt="Avatar" style="width:100%">
  <div class="container">
    <h4><b><% out.print(user.getName());%></b></h4> 
    <p><% out.print(user.getEmail());%></p> 
  </div>
</div>
    </div>
  </div>
   <%} %>
</div>
</div>
</div>


</div>

</div>
<script src="../js/admin.js"></script>
</body>
</html>

