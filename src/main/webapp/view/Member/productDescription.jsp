<!DOCTYPE html>

<%@page import="com.wasa.model.ProductDetailDesc"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.wasa.controller.ProductDetail"%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wasa Clothes</title>
        <script src="https://kit.fontawesome.com/0d3bdb6283.js"></script>
        <!-- <link rel="stylesheet" type="style/css" href="/home.css"> -->
        <link rel="stylesheet" href="home.css">
    </head>
    
    <style>
    
	h1{
	 text-align: center;
	}
	
	h3{
	font-size: 30px;
	}

	body{
	 background-color: #ecedee;
	 font-family: Franklin Gothic Book;

	 
	}
	
	.container{
	background: white;
	height: 500px;
	border-raidus: 5px;
	width: 900px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	padding:10px;
	box-shadow: 5px 5px 5px 5px #e0dede;
	}
	
	
	.row{
	margin-bottom: 100px;
	height:auto;
	background: #dedede;
	}
	
	
	
	.column {
  	float: left;
  	width: 50%;
  	}
	
	
	
	
	
	 
	 
	 .main_image{
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  border-bottom: 1px solid #eee;
	  height: 400px;
	  width: 100%;
	  
	  margin: 10px;
	  
	 }
	 
	 
	 .column p{
	 	font-size: 15px;
	 }
	 p{
	  font-size: 15px
	 }
	 
	 span{
	  font-size: 14px;
	  margin-left: 12px
	 }
	 

	 
	 .right-side{
	  position: relative
	 }
	 

	 
	 .buttons .btn{
	  height: 100px;
	  width: 200px;
	  border-radius: 0px !important
	 }

.offer{
 height:30px;
 width: 100%;
 background: grey;
 
}
marquee{
 color: white;
 
}



.colors{
 width: 150px;

 height: 50px;
 margin-top: 10px;
 margin-bottom: 50px;
 padding: 5px;
 display: flex;
 flex-direction: row ;
}

.color1{
border: 1px solid black;
border-radius: 50%;
background-color: white;
width: 30px;
height: 30px;
margin: 10px;

}

.color2{
border: 1px solid black;
border-radius: 50%;
background-color: #c4c4c4;
width: 30px;
height: 30px;
margin: 10px;

}

.color3{
border: 1px solid black;
border-radius: 50%;
background-color: black;
width: 30px;
height: 30px;
margin: 10px;

}


.button {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid black;
}


.button1:hover {
  background-color: black;
  color: white;
}



.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid black;
}



.button2:hover {
  background-color: black;
  color: white;
}






.review{
	height: auto;
	width: 80%;
	margin-left: 10%;
	padding: 20px;
	margin-top: 100px;
	margin-bottom:50px;
	background-color: #d9d7d7;
	
}

.user_img img{
  border-radius: 50px;
 width:60px;
 height:60px;
 margin-left: 20px;
 position:absolute;

}
.user_img p{
 font-size: 20px;
 padding-top: 15px;
 margin-left: 100px;

}
.user_img2 p{
 font-size: 20px;
 margin-top: 10px;
 margin-left: 100px;

}
.user_img2 img{
  border-radius: 50%;
 width:60px;
 height:60px;
 margin-left: 20px;
 position:absolute;

}
.comment{
 margin-left: 20px;
}
.comment2{
padding:20px;
 
 background: white;
}

.checked {
  color: orange;
}

.ratings {
 margin-top: 35px;
 padding: 10px;
 
}


 .ratings .fa {
  font-size: 30px;
}

 .user_img2 .fa {
  font-size: 20px;
}

.user_img2 .rating2{

margin-left: 95px;
padding-top: 35px;
margin-bottom:10px;

}

form{
margin-top: 20px;
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
    
    
    
<body>
        <!-- <nav class="navMenu">
          <a href="#">Home</a>
          <a href="#">Blog</a>
          <a href="#">Work</a>
          <a href="#">About</a>
          <div class="dot"></div>
        </nav> -->

        <section id="header" style="background-image: url(Imgs/clothes2.jpg);">
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
        
        
        <div class="offer">
	<marquee behavior="scroll" direction="left">Sale... Save up to 20% off</marquee>

</div>
<div class="offer">
	<marquee behavior="scroll"  scrollamount="20" direction="right" bgcolor="black" height="30px">Scam!      Scam!       Scam!</marquee>
</div>


<div class="container">
    <% 
  	try {
  		int productId = Integer.parseInt(request.getParameter("clickedProductId"));
  		ProductDetail pd = new ProductDetail();
  		ArrayList<ProductDetailDesc> descList = pd.getProductDetailDesc(productId);
  		for(ProductDetailDesc pdesc : descList) {
  	%>
	<div class="row">
	  <div class="column">
	  	<div class="main_image">
	  	<img src= "<%=pdesc.getImage() %>" id="main_product_image" width="350">	
		</div>
	  </div>
	  <div class="column">
	  	<h3><%=pdesc.getProduct_name() %></h3>	
		<p><%=pdesc.getProduct_desc() %></p>
		<h3>$<%=pdesc.getProduct_price() %></h3>
		</br>
		<strong>Colors</strong>
		<div class="colors">
			<div class="color1"></div>
			<div class="color2"></div>
			<div class="color3"></div>
		</div>
		<button class="button button1">Buy Now</button>	
		<button class="button button2" onclick="showPopup()">Add to Cart</button>
	   </div>
	</div>
	<%} 
  		}catch(Exception e){
		e.printStackTrace();
		} %>
	
</div>	
	
<div class="review">
 <h1>Review</h1>
 <div class="user_img">
 	<img src="Imgs/avatar.jpeg" alt="Avatar">
 	<p>Nabin Shrestha</p>
 </div>
 
<div class="ratings">
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star checked"></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
</div>
	
 
<div class="comment">
	<h4>Comment down below.</h4>
	<form>
		<textarea id="comment" name="comment" placeholder="Your Message.." style="height:100px;  width:100%;"></textarea>
	</form>
</div>

</div>

<div class="review">
 
 <div class="user_img2">
 	<h4>Customers reviews</h4>
 	<img src="Imgs/wall.jpg" alt="Avatar">
 	<p style="position:absolute;">Nabin Shrestha</p>
 	<div class="rating2">
 	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star checked"></span>
	<span class="fa fa-star"></span>
	<span class="fa fa-star"></span>
 	</div>

</div>
	
 
<div class="comment2">
	<p> Hello nabin shrestha</p>
	
</div>

</div>
        

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
            <h2>Added to cart!</h2>
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