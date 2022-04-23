<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NKD STORE</title>
<link rel="stylesheet" href="CSS/sellerSignUp.css"/>
</head>
<body>
<section>
  <div class="container">
  <div class="title">
  Seller Registration Page
  </div>
    <form action="Reg_Seller" method="POST">

      <div class="form-group">
        <label for="firstName"> Company Name</label>
        <input type="text" id="firstName" name="cname">
      </div>

      <div class="form-group">
        <label for="latsName">GST Number</label>
        <input type="text" id="lastName" name="gstn">
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email">
      </div>

	  <div class="form-group">
        <label for="phone">Phone</label>
        <input type="text" id="phone" name="phone">
      </div>

      <div class="form-group">
        <label for="massage">Address</label>
        <textarea name="address" id="massage" cols="30" rows="3"></textarea>
      </div>

		<div class="form-group">
        <label for="pass">Create Password</label>
        <input type="text" id="pass" name="pass">
      </div>

		<div class="form-group">
        <label for="rpass">Confirm Password</label>
        <input type="password" id="rpass" name="rpass">
      </div>
		<div class="b">
      <button type="submit">Submit</button>
      </div>
    </form>
  </div>
  <div id="status"></div>
</section>
</body>
</html>