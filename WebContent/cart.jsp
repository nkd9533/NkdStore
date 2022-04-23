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
   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>NKD STORE</title>
</head>
<body>
<!-- Header -->
<%@include file="nav.jsp"%>
 <!-- Cart Items -->
    <div class="container cart">
      <table>
        <tr>
          <th>Product</th>
          <th>Quantity</th>
          <th>Subtotal</th>
        </tr>
        <tr>
          <td>
            <div class="cart-info">
              <img src="./images/product1.jpg" alt="" />
              <div>
                <p style="color:#000;">Bambi Print Mini Backpack</p>
                <span>Price: $500.00</span>
                <br />
                <a href="#">remove</a>
              </div>
            </div>
          </td>
          <td><input type="number" value="1" min="1" style="color:#000;"/></td>
          <td style="color:#000;">$50.00</td>
        </tr>
        <tr>
          <td>
            <div class="cart-info">
              <img src="./images/product2.jpg" alt="" />
              <div>
                <p>Bambi Print Mini Backpack</p>
                <span>Price: $900.00</span>
                <br />
                <a href="#">remove</a>
              </div>
            </div>
          </td>
          <td><input type="number" value="1" min="1" /></td>
          <td>$90.00</td>
        </tr>
        <tr>
          <td>
            <div class="cart-info">
              <img src="./images/product3.jpg" alt="" />
              <div>
                <p>Bambi Print Mini Backpack</p>
                <span>Price: $700.00</span>
                <br />
                <a href="#">remove</a>
              </div>
            </div>
          </td>
          <td><input type="number" value="1" min="1" /></td>
          <td>$60.00</td>
        </tr>
        <tr>
          <td>
            <div class="cart-info">
              <img src="./images/product4.jpg" alt="" />
              <div>
                <p>Bambi Print Mini Backpack</p>
                <span>Price: $600.00</span>
                <br />
                <a href="#">remove</a>
              </div>
            </div>
          </td>
          <td><input type="number" value="1" min="1" /></td>
          <td>$60.00</td>
        </tr>
        <tr>
          <td>
            <div class="cart-info">
              <img src="./images/product5.jpg" alt="" />
              <div>
                <p>Bambi Print Mini Backpack</p>
                <span>Price: $600.00</span>
                <br />
                <a href="#">remove</a>
              </div>
            </div>
          </td>
          <td><input type="number" value="1" min="1" /></td>
          <td>$60.00</td>
        </tr>
      </table>

      <div class="total-price">
        <table>
          <tr>
            <td style="color:#000;">Subtotal</td>
            <td style="color:#000;">$200</td>
          </tr>
          <tr>
            <td>Tax</td>
            <td>$50</td>
          </tr>
          <tr>
            <td>Total</td>
            <td>$250</td>
          </tr>
        </table>
        <a href="#" class="checkout btn">Proceed To Checkout</a>
      </div>
    </div>
</body>
</html>