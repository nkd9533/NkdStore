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
<% String cus_id="",cname="";
        try{
        cus_id=session.getAttribute("cus_id").toString();
        cname=session.getAttribute("cname").toString();
               }catch(Exception e)
               {
                   response.sendRedirect("home.jsp");
               }
%>
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
         <li><a href="home_after_login.jsp">Home</a></li>
	<li><a href="#">Products</a></li>
	<li><a href="#">Your Orders</a></li>
	<li><a href="#">About Us</a></li>
	<li><a href="#">Contact</a></li>
	<li><a href="logIn.jsp">Logout</a></li>
        <li class="cart-icon">
            <a href="cart.jsp">
            <h1 class="fas fa-shopping-cart"></h1>
            <sup class="cart-value">0</sup></a>
        </li>
        </div>
        <li>Welcome<br><%=cname%></li>
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