<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- Favicon -->
  <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon" />
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
  <!-- Glidejs -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.core.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/css/glide.theme.css">
  <link rel="stylesheet" href="CSS/style.css"/>
<title>NKD STORE</title>
</head>
<body>
<header>
<%@include file="nav.jsp"%>
<%@include file="slider.jsp"%>
</header>
<section>
<%@include file="promotion.jsp"%>
<%@include file="product.jsp"%>
<%@include file="advert.jsp"%>
<%@include file="brands.jsp"%>
</section>
 <footer>
 <%@include file="footer.jsp"%>
 </footer>
</body>
</html>