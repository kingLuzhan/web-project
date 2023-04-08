<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<link rel="stylesheet" href="style.css">
</head>
<body>
    <label class="btn" for="modal-1">Add product</label>
<input class="modal-state" id="modal-1" type="checkbox" />
<div class="modal" style="padding-bottom:20px;">
  <label class="modal__bg" for="modal-1"></label>
  <div class="modal__inner">
    <label class="modal__close" for="modal-1"></label>
    <h2>Add Product</h2>
<form action="">
<label class="prod_name_label">Product Name</label>
<input class="prod_name">
<label class="prod_desc_label">Description</label>
<input class="prod_desc">
<label class="category_label">Category</label>
<select class="category">
<option>A</option>
<option>B</option>
</select>

<label class="prod_brand_label">Brand</label>
<select class="prod_brand">
<option>A</option>
<option>B</option>
</select>
<label class="prod_color_label">Color</label>
<select class="prod_color">
<option>A</option>
<option>B</option>
</select>
<label class="prod_size_label">Size</label>
<select class="prod_size">
<option>A</option>
<option>B</option>
</select>
<label class="prod_price_label">Price</label>
<input class="prod_price">
<label class="prod_img_label">Image</label>
<input class="prod_img" type="file" id="fileInput">
<img class="prod_img" id="previewImage" src="#" alt="Preview Image">
<input type="checkbox" class="checkbox"><p class="checkbox_label">Publish on site</p>
<input type="submit" class="submit" placeholder="Submit">
</form>
<br>
<br>

    
  </div>
</div>

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
</body>
</html>