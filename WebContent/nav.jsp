<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NKD STORE</title>
    <link rel="stylesheet" href="CSS/nav_style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>
<nav>
      <ul>
        <li class="logo">NKD STORE</li>
         <li class="btn"><span class="fas fa-bars"></span></li>
         <li class="search-icon">
          <input type="search" placeholder="Search">
          <label class="icon">
            <span class="fas fa-search"></span>
          </label>
        </li>
        <div class="items">
         <li><a href="home.jsp">Home</a></li>
	<li><a href="#">Products</a></li>
	<li><a href="#">Your Orders</a></li>
	<li><a href="#">About Us</a></li>
	<li><a href="#">Contact</a></li>
	<li><a href="logIn.jsp">Login</a></li>
        </div>
        <li class="cart-icon">
            <a href="cart.jsp">
            <h1 class="fas fa-shopping-cart"></h1>
            <sup class="cart-value">0</sup></a>
        </li>
      </ul>
    </nav>
    <script>
      $('nav ul li.btn span').click(function(){
        $('nav ul div.items').toggleClass("show");
        $('nav ul li.btn span').toggleClass("show");
      });
    </script>
</body>
</html>