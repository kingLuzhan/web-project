
<!DOCTYPE html>
<%@page import="com.wasa.controller.EditUserDetails"%>
<%@page import="com.wasa.controller.OrderDetails"%>
<%@page import="com.wasa.model.EditPageDetails"%>
<%@page import="com.wasa.model.ProductDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wasa.controller.ProductDetail"%>
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
.card {
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  margin: 0 auto;
  max-width: 600px;
  padding: 20px;
}

.card-title {
  font-size: 24px;
  margin-bottom: 20px;
}

.card-content {
  margin-bottom: 20px;
}

.form-group {
  margin-bottom: 20px;
}

label {
  display: block;
  font-weight: bold;
  margin-bottom: 5px;
}

input[type="text"],
input[type="number"],
input[type="file"],
select,
textarea {
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding: 10px;
  width: 50%;
  height: 45px;
  resize: none;
}

select {
  height: 36px;
}

.prod_img {
  display: block;
  height: auto;
  margin-top: 10px;
  max-width: 100%;
}

.checkbox_label {
  display: inline-block;
  margin-left: 5px;
}

.submit

.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f8f8f8;
  display: flex;
  flex-wrap: wrap;
}

.row {
  display: flex;
  flex-wrap: wrap;
  margin: 0 -10px;
  flex: 1;
}


form {
  display: flex;
  flex-wrap: wrap;
  margin: 0 -10px;
  flex: 1;
}

.column {
  flex: 1;
  padding: 0 10px;
  box-sizing: border-box;
}

.form-group {
  margin-bottom: 20px;
}

label {
  font-weight: bold;
  margin-bottom: 5px;
  display: block;
}
.prod_price{
  width: 100%;
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 4px;
  box-sizing: border-box;
  font-size: 16px;
}
.prod_name{
  width: 100%;
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 4px;
  box-sizing: border-box;
  font-size: 16px;}
select,
textarea {
  width: 100%;
  padding: 10px;
  border: 1px solid #ddd;
  border-radius: 4px;
  box-sizing: border-box;
  font-size: 16px;
}

input[type="file"] {
  display: none;
}

#previewImage {
  max-width: 100%;
  height: auto;
  margin-top: 10px;
}

.prod_img_label {
  display: block;
}

.prod_img_label::after {
  content: 'Select Image';
  display: inline-block;
  margin-left: 10px;
  padding: 5px 10px;
  border: 1px solid #ddd;
  border-radius: 4px;
  font-size: 14px;
  cursor: pointer;
}

.prod_img_label::after:hover {
  background-color: #f8f8f8;
}

.prod_img_label::after:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.2);
}
.btns{
text-decoration: none;
background-color: #f0f0f0;
}
.btns, .button {
  padding: 10px 20px;
  border: none;
  background-color: #007bff;
  color: #fff;
  border-radius: 4px;
  cursor: pointer;
  margin-top: 10px;
}

.btns, .button:hover {
  background-color: #0062cc;
}

.btns, .button:active {
  background-color: #005cbf;
}

@media screen and (max-width: 768px) {
  .column {
    flex: 100%;
    padding: 0;
  }
}

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
				placeholder="Search Products">
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
					<a href="../Admin/dashboard.jsp"><div class="option2 nav-option">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182148/Untitled-design-(29).png"
							class="nav-img"
							alt="dashboard">
						<h3> Dashboard</h3>
					</div></a>
				<a href="../Admin/product.jsp">
					<div class="nav-option option1">
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
					<div class="nav-option option5">
						<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
							class="nav-img"
							alt="blog">
						<h3> Profile</h3>
					</div>
</a>
<a href="../Admin/dashboard.jsp">
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

			<div class="report-container">
				<div class="report-header">
				<h1 class="recent-Order" style="text-align: center;">Edit Product</h1>
				</div>

				<div class="report-body">
					      
<%
int orderId=Integer.parseInt(request.getParameter("orderId"));

%>

<div class="container">
<div class="row">

 
<form style="width:50%;" method="post">  
<div class="column">
    <%EditUserDetails od = new EditUserDetails();
	ArrayList<EditPageDetails> orderList = od.getEditProductDetails( orderId);
	for(EditPageDetails order : orderList){ 
%>
  	<div class="form-group">
        <label class="prod_name_label">Product Name</label>
        <input class="prod_name" name="prod_name" value="<%= order.getProduct_name() %>" >
      </div>
      <div class="form-group">
        <label class="category_label">Category</label>
        <select class="category" name="category">
          <option value=""><%= order.getCategory() %></option>
         
        </select>
      </div>
		  <div class="form-group">
        <label class="prod_color_label">Color</label>
        <select class="prod_color" name="prod_color">
           <option value=""><%= order.getColor() %></option>
        </select>
      </div>
       <div class="form-group">
        <label class="prod_brand_label">Brand</label>
        <select class="prod_brand" name="prod_brand">
           <option value=""><%= order.getBrand() %></option>
        </select>
      </div>
        <div class="form-group">
        <label class="prod_img_label">Image</label>
        <input class="prod_img" type="file" id="fileInput" name="prod_img">
        <img class="prod_img" id="previewImage" src="#" alt="Preview Image">
      </div>
      
      <div class="form-group">
        <input class="button" type="submit" value="Update">
    
        <a href="product.jsp" class="btns">Cancel</a>
      </div>
  </div>
   

  <div class="column">
  <div class="form-group">
        <label class="prod_desc_label">Description</label>
        <textarea class="prod_desc" name="prod_desc" ><%=  order.getProduct_desc() %></textarea>
      </div>
     <div class="form-group">
        <label class="prod_size_label">Size</label>
        <select class="prod_size">
           <option value=""><%= order.getSize() %></option>
        </select>
      </div>
  

        <div class="form-group">
        <label class="prod_price_label">Price</label>
        <input class="prod_price" name="prod_price" value="<%= order.getProduct_price()%>">
      </div>
<div class="form-group">
        <label class="prod_price_label">Quantity</label>
        <input class="prod_price" name="prod_price" value="<%= order.getQuantity() %>">
      </div>
   </div>
   
   </from>
   <% } %>
</div>
</div>	
				</div>
			</div>
		</div>
	</div>

	
</body>
</html>
