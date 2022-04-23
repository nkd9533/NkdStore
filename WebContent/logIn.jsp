<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="CSS/login.css">
 <title>NKD STORE LOGIN</title>
</head>
<body>
  <div class="center">
      <h1>Login</h1>
      <form action="login" method="post">
        <div class="txt_field">
          <input type="text" name="email" required>
          <span></span>
          <label>E-mail</label>
        </div>
        <div class="txt_field">
          <input type="password" name="pass" required>
          <span></span>
          <label>Password</label>
        </div>
        <div class="pass">Forgot Password?</div>
        <input type="submit" value="Login">
        <div class="signup_link">
          Not a member? <a href="signUp.jsp">Sign Up</a>
        </div>
      </form>
    </div>
</body>
</html>