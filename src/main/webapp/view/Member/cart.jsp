<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/member.css">
</head>
<body>
<div class="shopping-cart">
  <!-- Title -->
  <div class="title">
    Shopping Bag
  </div>
 
  <!-- Product #1 -->
  <div class="item">
     
    <div class="image">
      <img src="item-1.png" alt="Image" />
    </div>
 
    <div class="description">
      <span>Common Projects</span>
      <span>Bball High</span>
      <span>White</span>
    </div>
 
    <div class="quantity">
      <button class="plus-btn" type="button" name="button">
        <img src="plus.svg" alt="" />
      </button>
      <input type="text" name="name" value="1">
      <button class="minus-btn" type="button" name="button">
        <img src="minus.svg" alt="" />
      </button>
    </div>
 
    <div class="total-price">$549
    </div>
    <div class="modify" >
    <button type="button" name="button" style="padding:5px;">
        Delete
      </button><br><br>
      <button type="button" name="button" style="padding:5px;">
        Order
      </button>
      </div>
  </div>
 
  

</div>


</body>
</html>