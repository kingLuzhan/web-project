<%@page import="com.wasa.model.CartDetails"%>
<%@page import="com.wasa.controller.CartOperations"%>
<%@page import="com.wasa.model.ProductDetails"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wasa.databaseConnection.DatabaseConnection"%>
<%@page import="com.wasa.controller.ProductDetail"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%Connection conn = null;%>

<%@page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wasa Clothes</title>
        <script src="https://kit.fontawesome.com/0d3bdb6283.js"></script>
        <!-- <link rel="stylesheet" type="style/css" href="/home.css"> -->
        <link rel="stylesheet" href="css/home.css">
        <style type="text/css">
        /* css for Payment popup */

            .payment-popup {
            width: 400px;
            height: 400px;
            background: #fff;
            border-radius: 6px;
            position: absolute;
            top: 0;
            left: 50%;
            transform: translate(-50%, -50%) scale(0.1);
            text-align: center;
            padding: 0 30px 30px;
            color: #333;
            box-shadow: 0 5px 5px rgba(0, 0, 0, 0.2);
            visibility: hidden;
            transition: transform 0.4s, top 0.4s;
            }

            .show-popup {
            visibility: visible;
            top: 50%;
            transform: translate(-50%, -50%) scale(1);
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(20px);
            }

/*             .hide-popup-ease {
            transition: 0.8s, ease-out;
            }  */

            .payment-popup img{
            width: 50%;
            height: 50%;
            border-radius: 50%;
            }

            .payment-popup h2{
            margin: 30px 0 10px;
            color: #000;
            }

            .payment-popup p{
            margin: 30px 0 10px;
            font-size: 20px;
            font-weight: 600;
            color: #000;
            }

            .payment-popup button{
            width: 80%;
            margin-top: 50px;
            padding: 10px 0;
            background: #6FD649;
            color: #fff;
            border: 0;
            outline: none;
            font-size: 18px;
            font-weight: 600;
            border-radius: 4px;
            cursor: pointer;
            box-shadow: 0 7px 5px rgba(0, 0, 0, 0.2);
            }
        </style>
    </head>
    <body>
        <!-- <nav class="navMenu">
          <a href="#">Home</a>
          <a href="#">Blog</a>
          <a href="#">Work</a>
          <a href="#">About</a>
          <div class="dot"></div>
        </nav> -->

        <section id="header" style="background-image: url(Imgs/color_wheat_unsplash.jpg);">
            <a href="home.html"><img src="Imgs/Logo_img.png" alt="Logo image" class="logo-header"></a>

            <div>
                <ul id="navbar">
                    <li><a class="active" href="home.html">Home</a></li>
                    <li><a href="product.jsp">Products</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="aboutus.html">About</a></li>
                    <li><a href="contact.html">Contact</a></li>
                    <li><a href="cart.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
                    <li><a href="myAccount.html"><i class="fa-regular fa-user"></i></a></li>
                </ul>
            </div>
        </section>
        <br><br>
<section class="cart">
 
<div class="shopping-cart">

  <div class="cart-items">
  <h1 style="font-size: 30px;">Cart Products</h1>
  <% 
  int itemCounter = 0;
  int totalCost = 0;
  try {
	  int memberId = 1;
	  CartOperations caop = new CartOperations();
	  ArrayList<CartDetails> cartItems = caop.getCartDetails(memberId);	
	  for(CartDetails cart : cartItems) {
		  int itemPrice = Integer.parseInt(cart.getProduct_price()) * cart.getQuantity();
		  itemCounter++;
		  totalCost += itemPrice;
  %>
    <div class="cart-item">
      <img src="<% out.print(cart.getProduct_image()); %>" alt="Product Image">
      <div class="item-details">
        <h3><% out.print(cart.getProduct_name()); %></h3>
        <p>Price: $<% out.print(cart.getProduct_price()); %></p>
        <p>Quantity: <% out.print(cart.getQuantity()); %></p>
      </div>
      <button class="remove-btn" onclick = "window.location.href='removeCartItem.jsp?cartId=<%=cart.getCart_id()%>'">Remove</button>
    </div>
	<%
	  }
	  } catch(Exception e){
		 e.printStackTrace(); 
	  }
	%>
  </div>
   <div class="cart-summary">
    <h2>Cart Summary</h2>
    <p>Total Items: <% out.print(itemCounter); %></p>
    <p>Total Cost: $<% out.print(totalCost); %></p>
    <button onclick="showPopup()" id="summary-btn">Checkout</button>
  </div>
</div>




</section>
        <section id="newsletter" class="section-p1 section-m1">
            <div class="newslettertext">
                <h4>Sign Up For Newsletters</h4>
                <p>Get E-mail updates about our latest products and <span>special offers</span></p>
            </div>
            <div class="newsletterform">
                <input type="text" placeholder="Your email address">
                <button class="normal">Sign Up</button>
            </div>
        </section>

        <footer class="section-p1">
            <div class="col">
                <img src="Imgs/Logo_img.png" alt="Logo_image" class="logo-footer">
                <h4>Contact</h4>
                <p><strong>Address:</strong> Lions Marga, Pokhara 33800, Pokhara</p>
                <p><strong>Phone:</strong> 061-538115 / 061-384756</p>
                <p><strong>Hours:</strong> 08:00 - 19:00, Sun-Fri</p>
                <div class="follow">
                    <h4>Follow Us</h4>
                    <div class="follow-icons">
                        <i class="fab fa-facebook-f"></i>
                        <i class="fab fa-twitter"></i>
                        <i class="fab fa-instagram"></i>
                    </div>
                </div>
            </div>

            <div class="col">
                <h4>About</h4>
                <a href="#">About Us</a>
                <a href="#">Delivery Information</a>
                <a href="#">Privacy policy</a>
                <a href="#">Terms & Conditions</a>
                <a href="#">Contact Us</a>
            </div>

            <div class="col">
                <h4>My Account</h4>
                <a href="#">Sign In</a>
                <a href="#">view Cart</a>
                <a href="#">My Wishlist</a>
                <a href="#">Track My Order</a>
                <a href="#">Help</a>
            </div>

            <div class="copyright">
                <p>&copy; 2021, Wasa.com, Inc. or its affiliates</p>
            </div>
        </footer>
        
        <div class="payment-popup" id="payment-popup">
            <img src="Imgs/Tick_img.png" alt="tick_image">
            <h2>Thank You!</h2>
            <p>Your order has been placed!</p>
            <button type="button" onclick="hidePopup()">OK</button>
        </div>

        <script>
     // code for payment pop-up
		
		let popup = document.getElementById("payment-popup");
		
		function showPopup() {
		   popup.classList.add("show-popup"); 
		}
		
		function hidePopup() {
		   popup.classList.remove("show-popup");
		}
        </script>
    </body>
</html>