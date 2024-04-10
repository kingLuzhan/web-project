<%-- <%@page import="com.wasa.controller.ProductDetail"%>
<%@page import="com.wasa.model.ProductDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">



/* Add padding and center-align text to the container */
.container {
  padding: 16px;
  text-align: center;
}

/* The Modal (background) */
.modal1 {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #474e5d;
  padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 20%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* The Modal Close Button (x) */
.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and delete button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .deletebtn {
    width: 100%;
  }
}

</style>


</head>
<body>
 <button class="btn" onclick="document.getElementById('id01').style.display='block'">Open Modal</button>

<div id="id01" class="modal1">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
<div class="modal" style="padding-bottom:20px;">
  <label class="modal__bg" for="modal-1"></label>
  <div class="modal__inner">
    <label class="modal__close" for="modal-1"></label>
    <h2>Add Product</h2>
<form action="insertproduct.jsp" method="post">
<label class="prod_name_label">Product Name</label>
<input class="prod_name" name="prod_name">
<label class="prod_desc_label">Description</label>
<input class="prod_desc" name="prod_desc">
<label class="category_label">Category</label>
<select class="category">
<option value="">A</option>
<option value="">B</option>
</select>

<label class="prod_brand_label">Brand</label>
<select class="prod_brand">
<option value="">A</option>
<option value="">B</option>
</select>
<label class="prod_color_label">Color</label>
<select class="prod_color">
<option value="">A</option>
<option value="">B</option>
</select>
<label class="prod_size_label">Size</label>
<select class="prod_size">
<option value="">A</option>
<option value="">B</option>
</select>
<label class="prod_price_label">Price</label>
<input class="prod_price" name="prod_price">
<label class="prod_price_label">Quantity</label>
<input class="prod_price" name="Quantity">
<label class="prod_img_label">Image</label>
<input class="prod_img" type="file" id="fileInput" name="prod_img">
<img class="prod_img" id="previewImage" src="#" alt="Preview Image">
<input type="checkbox" class="checkbox"><p class="checkbox_label">Publish on site</p>
<input type="submit" class="submit" placeholder="Submit">
</form>


  </div>
</div>
  </div> 

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
</body>
</html> --%>