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
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wasa Clothes</title>
        <script src="https://kit.fontawesome.com/0d3bdb6283.js"></script>
        <link rel="stylesheet" href="./css/style.css">
        <style>
            @import url("https://fonts.googleapis.com/css2?family=Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap");
            * {
            margin: 0;
            padding: 0;
            /* -webkit-box-sizing: border-box; */
            box-sizing: border-box;
            font-family: 'Spartan', sans-serif;
            }
mvn eclipse:eclipse -Dwtpversion=2.0
            h1 {
            font-size: 50px;
            line-height: 64px;
            color: #222;
            }

            h2 {
            font-size: 46px;
            line-height: 54px;
            color: #222;
            }

            h4 {
            font-size: 20px;
            color: #222;
            }

            h6 {
            font-weight: 700;
            font-size: 12px;
            }

            p {
            font-size: 16px;
            color: #465b52;
            margin: 15px 0 20px 0;
            }

            .section-p1 {
            padding: 40px 80px;
            }

            .section-m1 {
            margin: 40px 0;
            }

            button.normal {
            font-size: 14px;
            font-weight: 600;
            padding: 15px 30px;
            color: #000000;
            background-color: #ffffff;
            border-radius: 4px;
            cursor: pointer;
            border: none;
            outline: none;
            transition: 0.2s;
            }

            button.transparent {
            font-size: 12px;
            font-weight: 650;
            padding: 12px 20px;
            color: #fff;
            background-color: transparent;
            border-radius: 2px;
            cursor: pointer;
            border: 1px solid #fff;
            outline: none;
            transition: 0.2s;
            }

            body {
            width: 100%;
            /* background: #272727;
            font-family: "Montserrat", sans-serif; */
            }

            /* Header start */

            #header {
            background-image: url("../assets/Imgs/color_wheat_unsplash.jpg");
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px 80px;
            width: auto;
            background-position: center;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.06);
            z-index: 999;
            position: sticky;
            top: 0;
            left: 0;
            margin-bottom: 10px;
            }

            .logo-header {
            width: 150px;
            height: 150px;
            }

            #navbar {
            display: flex;
            align-items: center;
            justify-content: center;
            }

            #navbar li { 
            list-style: none;
            padding: 0px 20px;
            position: relative;
            }

            #navbar li a {
            text-decoration: none;
            font-size: 16px;
            font-weight: 600;
            color: #ffffff;
            transition: 0.3s ease-in-out;
            }

            #navbar li a:hover,
            #navbar li a.active {
            color: #FFBD27;
            }

            #navbar li a.active::after {
            content: "";
            width: 50%;
            height: 2px;
            background: #FFBD27;
            position: absolute;
            bottom: -4px;
            left: 20px;
            transition: 0.3s ease-in-out;
            }

            #navbar li a:hover::after {
            content: "";
            width: 25%;
            height: 2px;
            background: #FFBD27;
            position: absolute;
            bottom: -4px;
            left: 20px;
            transition: 0.3s ease-in-out;
            }

            /* home banner */

            #home-banner {
            background-image: url("../assets/Imgs/hanging_clothes.jpg");
            background-size: cover;
            background-repeat: no-repeat;
            width: 100%;
            height: 90vh;
            background-position: top 25% right 0;
            padding: 0 80px;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: center;
            }

            #home-banner h4 {
            padding-bottom: 15px;
            color: #fff;
            }

            #home-banner h1 {
            color: #ffffff;
            }

            #home-banner h2 {
            color: #fff;
            }

            #home-banner p {
            color: #fff;
            }

            #home-banner button {
            background-color: #FFBD27;
            color: #fff;
            font-size: 20px;
            font-weight: 600;
            border: 0 ;
            border-radius: 15px;
            padding: 14px 80px 14px 65px;
            box-shadow: 20px 5px 15px rgba(0, 0, 0, 0.06);
            backdrop-filter: blur(10px);
            }

            #home-banner button:hover {
            background-color: #000000;
            color: #FFBD27;
            cursor: pointer;
            transition: 0.3s ease-in-out;
            }

            /* featured products -home */

            #featured-products {
            text-align: center;
            }

            #featured-products .product-container {
            display: flex;
            justify-content: space-between;
            padding: 20px;
            flex-wrap: wrap;
            }

            #featured-products .product {
            width: 23%;
            min-width: 250px;
            padding: 10px 12px;
            border: 1px solid #cccbc8;
            border-radius: 20px;
            /* background-color: #f5f5f5; */
            background-color: #fff;
            cursor: pointer;
            box-shadow: 15px 15px 25px rgba(0, 0, 0, 0.04);
            margin: 15px 0;
            transition: 0.2s ease-in-out;
            position: relative;
            }

            #featured-products .product:hover {
            box-shadow: 10px 10px 25px rgb(147, 147, 145);
            }

            #featured-products .product img {
            width: 100%;
            border-radius: 20px;
            padding: 10px;
            background-color: #f2f3f5;
            }

            #featured-products .product .product-desc {
            text-align: start;
            padding: 12px 0;
            }

            #featured-products .product .product-desc span {
            color: #3f4143;
            font-size: 13px;
            }

            #featured-products .product .product-desc h5 {
            padding-top: 6px;
            color: #1a1a1a;
            font-size: 15px;
            }

            #featured-products .product .product-desc i {
            font-size: 13px;
            color: #ffd700;
            }

            #featured-products .product .product-desc h4 {
            padding-top: 6px;
            font-size: 16px;
            font-weight: 800;
            color: #088178;
            }

            #featured-products .product .cart {
            width: 40px;
            height: 40px;
            line-height: 40px;
            border-radius: 50px;
            background-color: #088178;
            font-weight: 600;
            color: #fff;
            border: 1px solid #ffedc2;
            box-shadow: 0 2px 4px #708090;
            position: absolute;
            bottom: 25px;
            right: 25px;
            }

            #featured-products .product .cart:hover {
            box-shadow: 0 2px 4px #FFBD27;
            background-color: #000000;
            color: #FFBD27;
            transition: 0.3s ease-in-out;
            }

            /* home mid banner */

            #home-mid-banner {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            background-image: url("../assets/Imgs/summer_vibe_img.jpg");
            width: 100%;
            height: 40vh;
            background-size: cover;
            /* background-position: center; */
            }

            #home-mid-banner h4 {
            color: #f5f5f5;
            font-size: 18px;
            }

            #home-mid-banner h2 {
            color: #f5f5f5;
            font-size: 32px;
            padding: 12px 0;
            }

            #home-mid-banner h2 span {
            color: #ffbd27;
            }

            #home-mid-banner button {
            background-color: #fff;
            color: #000000;
            font-weight: 500;
            }

            #home-mid-banner button:hover {
            background-color: #ffbd27;
            font-weight: 700;
            box-shadow: 0 2px 4px #708090;
            }


            /* home bottom banner */

            #home-bottom-banner {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            }

            #home-bottom-banner .box-banner {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            padding: 32px;
            background-image: url("../assets/Imgs/accesorries_img1.jpg");
            min-width: 665px;
            height: 50vh;
            background-size: cover;
            background-position: center;
            }

            #home-bottom-banner .ban-2 {
            background-image: url("../assets/Imgs/umbrella_black.jpg");
            }

            #home-bottom-banner h4 {
            color: #fff;
            font-size: 25px;
            font-weight: 380;
            }

            #home-bottom-banner h2 {
            color: #fff;
            font-size: 35px;
            font-weight: 760;
            }

            #home-bottom-banner span {
            color: #fff;
            font-size: 15px;
            font-weight: 600;
            padding-bottom: 20px;
            }

            #home-bottom-banner .box-banner:hover {
            transition: 0.2s ease-in-out;
            box-shadow: 4px 4px 4px #3d3d3d;
            }

            #home-bottom-banner .box-banner:hover button {
            background-color: #ffbd27;
            border: 1px solid #ffbd27;
            font-weight: 800;
            color: #000000;
            box-shadow: 4px 4px 15px #3d3d3d;
            }

            /* newsletter */

            #newsletter {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            align-items: center;
            background-color: #041E42;
            }

            #newsletter h4 {
            font-size: 22px;
            font-weight: 700;
            color: #ffffff;
            }

            #newsletter p {
            font-size: 14px;
            font-weight: 600;
            color: #818EA0;
            }

            #newsletter p span{
            color: #FFBD27
            }

            #newsletter .newsletterform {
            display: flex;
            width: 40%;
            }

            #newsletter input {
            height: 3.125rem;
            padding: 0 1.25em;
            font-size: 14px;
            width: 100%;
            border: 1px solid transparent;
            border-radius: 4px;
            outline: none;
            border-top-right-radius: 0;
            border-bottom-right-radius: 0;
            }

            #newsletter button {
            background-color: #FFBD27;
            color: #ffffff;
            white-space: nowrap;
            border-top-left-radius: 0;
            border-bottom-left-radius: 0;
            }

            #newsletter button:hover {
            background-color: #000000;
            color: #ffbd27;
            }

            footer {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            }

            footer .col {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            margin-bottom: 20px;
            }

            .logo-footer {
            width: 100px;
            height: 100px;
            margin-bottom: 30px;
            }

            footer h4 {
            font-size: 14px;
            padding-bottom: 20px;
            }

            footer p {
            font-size: 13px;
            margin: 0 0 8px 0;
            }

            footer a {
            font-size: 13px;
            text-decoration: none;
            color: #222;
            margin-bottom: 10px;
            }

            footer .follow {
            margin-top: 20px; 
            }

            footer .follow i {
            color: #465b52;
            padding-right: 4px;
            cursor: pointer; 
            }

            footer .follow i:hover,
            footer a:hover {
            color: #088178;
            }

            footer .copyright {
            width: 100%;
            text-align: center;
            }

            /* css for Cookie */

            .wrapper {
            position: absolute;
            bottom: 30px;
            left: 30px;
            max-width: 400px;
            height: 400px;
            border-radius: 15px;
            text-align: center;
            padding: 25px 25px 30px 25px;
            box-shadow: 20px 5px 15px rgba(0, 0, 0, 0.06);
            }

            .wrapper.hide {
            opacity: 0;
            visibility: hidden;
            transition: all 0.3s ease;
            }

            .wrapper .cookie-content {
            margin-top: 200px;
            }

            .wrapper header {
            font-size: 25px;
            font-weight: 600;
            color: #fff;
            }

            .cookie-content p {
            color: #fff;
            margin: 5px 0 20px 0;
            font-size: 20px;
            font-weight: 400;
            }

            .cookie-content .cookie-buttons {
            display: flex;
            align-items: center;
            justify-content: center;
            }

            .cookie-buttons .cookie-buttons-item {
            margin: 0 10px;
            }

            .cookie-buttons button {
            padding: 10px 20px;
            background: #ffc338;
            border: none;
            outline: none;
            font-size: 16px;
            font-weight: 500;
            color: #fff;
            border-radius: 15px;
            }

            .cookie-buttons a {
            text-decoration: none;
            color: #ebad1c;
            font-size: 15px;
            font-weight: 600;
            }

            .cookie-buttons button:hover {
            background-color: #000000;
            transition: 0.3s ease-in-out;
            cursor: pointer;
            }

            .cookie-buttons a:hover {
            color: #fff;
            transition: 0.3s ease-in-out;
            }

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

            /* .hide-popup-ease {
            transition: 0.8s, ease-out;
            } */

            .payment-popup img{
            width: 50%;
            height: 50%;
            border-radius: 50%;
            }

            .payment-popup h2{
            margin: 30px 0 10px;
            color: #fff;
            }

            .payment-popup p{
            margin: 30px 0 10px;
            font-size: 20px;
            font-weight: 600;
            color: #fff;
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
        <div>
            <div>
                <section id="header">
                    <a href="home.html"><img src="../Imgs/Logo_img.png" alt="Logo image" class="logo-header"></a>
                    <div>
                        <ul id="navbar">
                            <li><a class="active" href="Home.jsp">Home</a></li>
                            <li><a href="products.jsp">Products</a></li>
                            <li><a href="aboutus.html">About</a></li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="cartDetails.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li>
                            <li><a href="profile.html"><i class="fa-solid fa-user"></i></a></li>
                        </ul>
                    </div>
                </section>
        
                <section id="home-banner">
                    <h4>Trade-in-offer</h4>
                    <h2>Super value deals</h2>
                    <h1>On all products</h1>
                    <p>Save more with coupons & up to 70% off! </p>
                    <button>Shop now</button>            
                </section>
            </div>

            <section id="featured-products" class="section-p1">
                <h2>Featured Products</h2>
                <p>Summer Collection New Modern Design</p>
                <div class="product-container">
                    
                    <%
					
                	try {
                		ProductDetail pd = new ProductDetail();
                		ArrayList<ProductDetails> productList = pd.getProductDetail();
                		for(ProductDetails product : productList){ 
                    %>
                    <div class="product" onclick = "window.location.href='productDescription.jsp?clickedProductId=<%=product.getProduct_id()%>'">
                        <img src="<% out.print(product.getImage()); %>" alt="product_image">
                        <div class="product-desc">
                            <span><% out.print(product.getBrand()); %></span>
                            <h5><% out.print(product.getProduct_name()); %></h5>
                            <div class="rating-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <h4>$ <% out.print(product.getProduct_price()); %></h4>
                        </div>
                        <a href="cart.html"><i class="fa-solid fa-cart-shopping cart"></i></a>
                       </div>
                    <%}
                	} catch(Exception e){
                    	e.printStackTrace();
                    }
                    %>

                </div>
            </section>

            <section id="home-mid-banner" class="section-m1">
                <h4>Repair Services</h4>
                <h2>Get sales of upto <span> 60% </span>- All Summer Clothes</h2>
                <button class="normal">Explore More</button>
            </section>

            <section id="home-bottom-banner" class="section-p1">
                <div class="box-banner">
                    <h4>Hot Deals</h4>
                    <h2>Grab free accessories</h2>
                    <span>Get a free accessory of your choice with every purchase</span>
                    <button class="transparent">Learn More</button>
                </div>

                <div class="box-banner ban-2">
                    <h4>Rain is coming</h4>
                    <h2>Stay Warm and Dry!</h2>
                    <span>Stay dry and stylish with our water-resistant collection.<br>Shop now for jackets, raincoats, and more!</span>
                    <button class="transparent">Shop Now</button>
                </div>
            </section>

        </div>
        
        <!-- beginning of footer section with newsletter -->

        <section id="newsletter" class="section-p1 section-m1">
            <div class="newslettertext">
                <h4>Sign Up For Newsletters</h4>
                <p>Get E-mail updates about our latest products and <span>special offers</span></p>
            </div>
            <div class="newsletterform">
                <input type="text" placeholder="Your email address">
                <button class="normal" onclick="showPopup()">Sign Up</button>
            </div>
        </section>

        <footer class="section-p1">
            <div class="col">
                <img src="../assets/Imgs/Logo_img.png" alt="Logo_image" class="logo-footer">
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
		
		<!-- cookie -->
		<div class="wrapper"  style="background-image: url(../assets/Imgs/cookie_img.jpg);background-size: cover;background-repeat: no-repeat;">
            <div class="cookie-content">
                <header>Cookies Consent</header>
                <p>Accept this nice little cookie and get the best experience when using our website.</p>
                <div class="cookie-buttons">
                    <button class="cookie-buttons-item">Give me the cookie</button>
                    <a href="#" class="cookie-buttons-item">Learn more</a>
                </div>
            </div>
        </div>
        
        <!-- payment pop-up -->

        <div class="payment-popup" id="payment-popup">
            <img src="../assets/Imgs/Tick_img.png" alt="tick_image">
            <h2>Thank You!</h2>
            <p>Payment successful!</p>
            <button type="button" onclick="hidePopup()">OK</button>
        </div>

        <script>

            // function easeOut() {
            //     popup.classList.add("hide-popup-ease");
            // }
            // navbar transparency

			$(document).ready(function(){
			    $(window).scroll(function(){
			        var scroll = $(window).scrollTop();
			        if (scroll > 300) {
			          $(".black").css("background" , "blue");
			        }
			        else{
			            $(".black").css("background" , "#333");  	
			        }
			    })
			  })
			
			// code for payment pop-up
			
			let popup = document.getElementById("payment-popup");
			
			function showPopup() {
			   popup.classList.add("show-popup"); 
			}
			
			function hidePopup() {
			   popup.classList.remove("show-popup");
			}
			
			// code for cookie pop-up
			
			const cookieBox = document.querySelector(".wrapper"),
			acceptButton = cookieBox.querySelector(".cookie-buttons button");
			
			acceptButton.onclick = ()=>{
			    //setting cookie for 1 month; after 1 month, the cookie will expire automatically
			    document.cookie = "CookieBy=WasaClothes; max-age="+60*60*24*30;
			    if (document.cookie) { //if above cookie set
			        cookieBox.classList.add("hide"); //hide cookie box once cookie is set
			    } else {
			        alert("Cookie not set!"); //alert if cookie not set
			    }
			}
			//Hiding cookie if the previous one has not expired
			let checkForCookie = document.cookie.indexOf("CookieBy=WasaClothes");
			checkForCookie != -1 ? cookieBox.classList.add("hide") : cookieBox.classList.remove("hide");
        </script>
    </body>
</html>