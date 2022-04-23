<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NKD STORE</title>
<link rel="stylesheet" href="CSS/signup.css">
<link rel="stylesheet" href="CSS/login.css">
</head>
<body>
 <div class="container">
    <div class="title">Sign Up</div>
    <div class="content">
      <form action="Reg_Customer" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">First Name</span>
            <input type="text" placeholder="Enter First Name" name="fname" required>
          </div>
          <div class="input-box">
            <span class="details">Last Name</span>
            <input type="text" placeholder="Enter Last Name" name="lname" required>
          </div>
          <div class="input-box">
            <span class="details">Email</span>
            <input type="text" placeholder="Enter your E-mail" name="email" required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your number" name="phone" required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="text" placeholder="Enter your password" name="pass" required>
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password" placeholder="Confirm your password" name="rpass" required>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1" value="Male">
          <input type="radio" name="gender" id="dot-2" value="Female">
          <input type="radio" name="gender" id="dot-3" value="Prefer not to say">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Prefer not to say</span>
            </label>
          </div>
        </div> 		
        <div class="button">
          <input type="submit" value="SignUp">
        </div>
      </form>
      <div class="signup_link">
          Already a member? <a href="logIn.jsp">Login</a>
        </div>
         <div>
           <a href="sellerSignUp.jsp">Create Seller Account</a>
        </div>
    </div>
  </div>
</body>
</html>