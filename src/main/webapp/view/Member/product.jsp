<%@page import="com.wasa.model.ProductDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wasa.controller.ProductDetail"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wasa Clothes</title>
        <script src="https://kit.fontawesome.com/0d3bdb6283.js"></script>
        <!-- <link rel="stylesheet" type="style/css" href="/home.css"> -->
        <link rel="stylesheet" href="css/style.css">
        <style>
            @import url("https://fonts.googleapis.com/css2?family=Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap");
* {
  margin: 0;
  padding: 0;
  /* -webkit-box-sizing: border-box; */
  box-sizing: border-box;
  font-family: 'Spartan', sans-serif;
}

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



h6 {
  font-weight: 700;
  font-size: 12px;
}

p {
  font-size: 16px;
  color: #465b52;
  margin: 15px 0 20px 0;
}

.section-p2 {
  padding: 40px 80px;
}

.section-m2 {
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
  background-image: url("../Imgs/color_wheat_unsplash.jpg");
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

/* filter part */

.filter-section {
            
            float: left;
            width: 25%;
            margin-right: 20px;
            background-color: #f8f8f8;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.2);
        }

        .filter-section h2 {
            margin-bottom: 10px;
        }

        .filter-section label {
            display: block;
            margin-bottom: 60px;
        }

        .filter-section select {
            display: block;
            width: 100%;
            padding: 5px;
            border-radius: 3px;
            border: none;
            margin-bottom: 20px;
        }

        .filter-section input[type="range"] {
            width: 100%;
            margin-bottom: 10px;
        }

        .filter-section span {
            display: inline-block;
            width: 33%;
            text-align: center;
        }

        .filter-section .slider-value {
            font-weight: bold;
        }

        .filter-section button[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            border-radius: 3px;
            border: none;
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .filter-section button[type="submit"]:hover {
            background-color: #0056b3;
        }

/* featured products -home */

#featuredproducts {
  text-align: center;
}

#featuredproducts .productcontainer {
  display: flex;
  justify-content: space-between;
  padding: 20px;
  flex-wrap: wrap;
}

#featuredproducts .product1 {
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

#featuredproducts .product1:hover {
  box-shadow: 10px 10px 25px rgb(147, 147, 145);
}

#featuredproducts .product1 img {
  width: 100%;
  border-radius: 20px;
  padding: 10px;
  background-color: #f2f3f5;
}

#featuredproducts .product1 .productdesc {
  text-align: start;
  padding: 12px 0;
}

#featuredproducts .product1 .productdesc span {
  color: #3f4143;
  font-size: 13px;
}

#featuredproducts .product1 .productdesc h5 {
  padding-top: 6px;
  color: #1a1a1a;
  font-size: 15px;
}

#featuredproducts .product1 .productdesc i {
  font-size: 13px;
  color: #ffd700;
}

#featuredproducts .product1 .productdesc h4 {
  padding-top: 6px;
  font-size: 16px;
  font-weight: 800;
  color: #088178;
}

#featuredproducts .product1 .cart {
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

#featuredproducts .product1 .cart:hover {
  box-shadow: 0 2px 4px #FFBD27;
  background-color: #000000;
  color: #FFBD27;
  transition: 0.3s ease-in-out;
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
                    <a href="home.html"><img src="Assets/Imgs/Logo_img.png" alt="Logo image" class="logo-header"></a>
        
                    <div>
                        <ul id="navbar">
                            <li><a class="active" href="home.html">Home</a></li>
                            <li><a href="products.html">Products</a></li>
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="aboutus.html">About</a></li>
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="cart.html"><i class="fa-solid fa-cart-shopping"></i></a></li>
                            <li><a href="profile.html"><i class="fa-solid fa-user"></i></a></li>
                        </ul>
                    </div>
                </section>
            </div>
            <div class="filter-section">
                <form>
                  <h2>Filter</h2>
                  <label for="category">Category:</label>
                  <select id="category">
                    <option value="all">All</option>
                    <option value="Men">Men</option>
                    <option value="Women">Women</option>
                    <option value="Kid">Kid</option>
                  </select>
                  <label for="price-range">Price Range:</label>
                  <input type="range" id="price-range" name="price-range" min="0" max="1000" step="10">
                  <span>0</span><span class="slider-value"></span><span>1000</span>
                  <label for="brand">Brand:</label>
                  <select id="brand">
                    <option value="all">All</option>
                    <option value="Nike">Nike</option>
                    <option value="Gucci">Gucci</option>
                    <option value="Rolex">Rolex</option>
                  </select>
                  <label for="color">Color:</label>
                  <select id="color">
                    <option value="all">All</option>
                    <option value="blue">Blue</option>
                    <option value="red">Red</option>
                    <option value="black">Black</option>
                  </select>
                  <label for="size">Size:</label>
                  <select id="size">
                    <option value="all">All</option>
                    <option value="Large">Large</option>
                    <option value="Medium">Medium</option>
                    <option value="Small">Small</option>
                  </select>
                  <button type="submit">Filter</button>
                </form>
              </div>
              

            <section id="featuredproducts" class="section-p2">
                <h2>Featured Products</h2>
                <p>Summer Collection New Modern Design</p>
                <div class="productcontainer">
                <%
                	try {
                		ProductDetail pd = new ProductDetail();
                		ArrayList<ProductDetails> pds = pd.getProductDetail();
                		for(ProductDetails pdetail : pds){
                %>
                    <div class="product1">
                        <img src="<%=pdetail.getImage()%>" alt="product_image">
                        <div class="productdesc">
                            <span><%=pdetail.getBrand()%></span>
                            <h5><%=pdetail.getProduct_name()%></h5>
                            <div class="rating-stars">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <h4>$<%=pdetail.getProduct_price()%></h4>
                        </div>
                        <a href="cart.html"><i class="fa-solid fa-cart-shopping cart"></i></a>
                    </div>
                <%
                		}
                	}catch(Exception e){
                		
                	}
                %>
                </div>
            </section>
            

        </div>
        


        <!-- beginning of footer section with newsletter -->

        

        <footer class="section-p2">
            <div class="col">
                <img src="Assets/Imgs/Logo_img.png" alt="Logo_image" class="logo-footer">
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

        <!-- payment pop-up -->

        <div class="payment-popup" id="payment-popup">
            <img src="Assets/Imgs/Tick_img.png" alt="">
            <h2>Thank You!</h2>
            <p>Payment successful!</p>
            <button type="button" onclick="hidePopup()">OK</button>
        </div>

        <script src="script.js">

            // function easeOut() {
            //     popup.classList.add("hide-popup-ease");
            // }
        </script>
    </body>
</html>