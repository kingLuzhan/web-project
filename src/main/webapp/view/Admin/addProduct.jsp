
<!DOCTYPE html>
<%@page import="com.wasa.controller.ProductDetail"%>
<html>
<head>
<meta charset="ISO-8859-1">


<link rel="stylesheet" href="style.css">
<style type="text/css">

.quantity_label{
	position: absolute;
width: 51px;
height: 18px;
left: 300px;
top: 340px;
font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 15px;
line-height: 18px;
letter-spacing: -0.015em;

color: #000000;
}
.quantity{
	position: absolute;
width: 223px;
left: 300px;
height: 39px;

top: 360px;

background: #D9D9D9;
border-radius: 5px;
}

</style>
</head>
<body>

    <label class="btn" for="modal-1">Add product</label>
    
<input class="modal-state" id="modal-1" type="checkbox" />
<div class="modal" style="padding-bottom:20px;">
  <label class="modal__bg" for="modal-1"></label>
  <div class="modal__inner">
    <label class="modal__close" for="modal-1"></label>
    <h2>Add Product</h2>
<form method="POST" enctype="multipart/form-data">
<label class="prod_name_label">Product Name</label>
<input class="prod_name" name="product_name" required>
<label class="prod_desc_label">Description</label>
<input class="prod_desc" name="product_desc" required>
<label class="category_label">Category</label>
<select class="category" name="category">
<option value="">kids</option>
<option value="">women</option>
<option value="">men</option>
</select>

<label class="prod_brand_label">Brand</label>
<select class="prod_brand" name="brand">
<option value="1">H&M</option>
<option value="2">Zara</option>
<option value="3">Adidas </option>
<option value="4">Nike </option>
<option value="5">Uniqlo  </option>
<option value="6">Levis   </option>
<option value="7">Puma  </option>
<option value="8">Prada</option>

</select>
<label class="prod_color_label">Color</label>
<select class="prod_color" name="color">
<option value="1">White</option>
<option value="2">Gey</option>
<option value="3">Brown </option>
<option value="4">Blue </option>
<option value="5">Red </option>
<option value="6">Black</option>
<option value="7">Golden </option>
<option value="8">Green</option>
</select>
<label class="prod_size_label">Size</label>
<select class="prod_size" name="size">
<option value="1">Small</option>
<option value="2">Medium</option>
<option value="3">Large</option>
</select>
<!-- <label class="prod_quantity_label">Quantity</label>
<input class="prod_quantity" name="quantity" required> -->

<label class="prod_price_label">Price</label>
<input class="prod_price" name="product_price" required>
<label class="quantity_label">Quantity</label>
<input class="quantity" name="quantity" >
<label class="prod_img_label">Image</label>
<input class="prod_img" type="file" id="fileInput"  name = "file" size = "100">
<img class="prod_img" id="previewImage" src="#" alt="Preview Image">
<input type="checkbox" class="checkbox"><p class="checkbox_label">Publish on site</p>
<input type="submit" class="submit" placeholder="Submit" name="upload">
</form>
<br>
<br>


  </div>
</div>
<jsp:useBean id="product" class="com.wasa.model.Product" scope="request"></jsp:useBean>
<jsp:setProperty name="product" property="*" />

<script type="text/javascript">
const fileInput = document.getElementById('fileInput');
const previewImage = document.getElementById('previewImage');

fileInput.addEventListener('change', function() {
  const file = fileInput.files[0];
  const reader = new FileReader();
  
  reader.onload = function() {
    previewImage.src = reader.result;
    previewImage.style.display = 'block';
  }
  
  reader.readAsDataURL(file);
});

</script>
<% if(request.getParameter("upload")!=null){
	ProductDetail pd=new ProductDetail();
	pd.productDetails(product);
	%>
	<jsp:forward page="../bean/insertproduct.jsp"></jsp:forward>
	<%
	
} %>





	




</body>
</html>