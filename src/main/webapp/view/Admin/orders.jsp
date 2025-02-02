<!DOCTYPE html>
<%@page import="com.wasa.model.OrderDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wasa.controller.OrderDetails"%>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge">
	<meta name="viewport"
		content="width=device-width,
				initial-scale=1.0">
	<title>WASA</title>
	<link rel="stylesheet"
		href="../css/styles.css">
	<link rel="stylesheet"
		href="../css/responsive.css">
		<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>
</head>

<body>

	<!-- for header part -->
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
				<a href="../Admin/order.jsp">
					<div class="nav-option option1">
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
					placeholder="Search Orders">
				<div class="searchbtn">
				<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
						class="icn srchicn"
						alt="search-button">
				</div>
			</div>

			
			<div class="report-container">
				<div class="report-header">
					<h1 class="recent-Order">Recent Orders</h1>
					<button class="view">View All</button>
				</div>

				<div class="report-body">
					<div style="overflow-x: auto;">
  <table>
    <tr>
      <th>Order Number</th>
      <th>Customer Name</th>
      <th>Product Name</th>
      <th>Price</th>
      <th>Quantity</th>
      <th>Order Total</th>
      <th>Status</th>
    </tr>
     <%OrderDetails pd = new OrderDetails();
	ArrayList<OrderDetail> orderDetail = pd.getOrderDetails();
	if(orderDetail != null){
	for(OrderDetail od : orderDetail){ 
  
	  %>
    <tr>
      <td><%= od.getOrder_id() %></td>
      <td><%= od.getCustomer() %></td>
      <td><%= od.getProduct() %></td>
      <td><%= od.getPrice() %></td>
      <td><%= od.getQuantity() %></td>
      <td><%= od.getTotal_amount() %></td>
      <td><%= od.getStatus() %></td>
    
    </tr>
    <%}} else{
    	
    	%><tr><td>Null</td>
    	<td>Null</td>
    	<td>Null</td>
    	<td>Null</td>
    	<td>Null</td>
    	<td>Null</td>
    	<td>Null</td></tr><%
    }%>
 
  </table>
</div>
				</div>
			</div>
		</div>
	</div>

	<script src="../js/admin.js"></script>
</body>
</html>
