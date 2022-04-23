<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
 <link rel="stylesheet" href="CSS/slider.css">
</head>
<body>
    <div class="slider">
		<!-- fade css -->
		<div class="myslide fade">
			<div class="txt">
				<h1>Up to 60% off</h1>
				<span class="sign"><a class="act" href="#">View Collection</a></span>
			</div>
			<img src="./images/Banner1.jpg" style="width: 100%; height: 100%;">
		</div>
		
		<div class="myslide fade">
			<div class="txt">
				<h3 class="sign"><a class="act" href="#" style="background: #ff0000;">View Collection</a></h3>
			</div>
			<img src="./images/Banner2.jpg" style="width: 100%; height: 100%;">
		</div>
		
		<div class="myslide fade">
			<div class="txt">
				<h1>Up to 50% off</h1>
				<span class="sign"><a class="act" href="#" style="background: #ff0000;">View Collection</a></span>
			</div>
			<img src="./images/Banner5.jpg" style="width: 100%; height: 100%;">
		</div>
		
		<div class="myslide fade">
			<div class="txt">
				<h1>Top Brand</h1>
				<span class="sign"><a class="act" href="#" style="background: #222222;">View Collection</a></span>
			</div>
			<img src="./images/Banner3.jpg" style="width: 100%; height: 100%;">
		</div>
		
		<div class="myslide fade">
			<div class="txt">
				<h1>Huge Varieties</h1>
				<span class="sign"><a class="act" href="#" style="background: #222222;">View Collection</a></span>
			</div>
			<img src="./images/Banner4.jpg" style="width: 100%; height: 100%;">
		</div>
		<!-- /fade css -->
		
		<!-- onclick js -->
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  		<a class="next" onclick="plusSlides(1)">&#10095;</a>
		
		<div class="dotsbox" style="text-align:center">
			<span class="dot" onclick="currentSlide(1)"></span>
			<span class="dot" onclick="currentSlide(2)"></span>
			<span class="dot" onclick="currentSlide(3)"></span>
			<span class="dot" onclick="currentSlide(4)"></span>
			<span class="dot" onclick="currentSlide(5)"></span>
		</div>
		<!-- /onclick js -->
	</div>
	
<script src="javascript/slider.js"></script>
</body>
</html>