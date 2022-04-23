<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Register Product</h1>
<form action="../Reg_Product" enctype="multipart/form-data" method="post">
<div>
Enter Product Name <input type="text" name="pname">
</div>
<div>
Enter Product Type<input type="text" name="ptype">
</div>
<div>
Enter Product Sell Price <input type="text" name="pprice">
</div>
<div>
Enter Product Discount(%), If any <input type="text" name="pdiscount">
</div>
<div>
Product Weight<input type="text" name="pweight" placeholder="Weight in Kg">
</div>
<div>
Product Description <textarea cols="60" rows=6 name="pdescription"></textarea>
</div>
<div>Product Images:
<div>
<input type="file" name="pimage" placeholder="Product Image">
</div>
<div>
Quantity For Sale<input type="number" name="pquantity" placeholder="Sell Quantity">
</div>
<div>
<input type="submit" value="Register Product">
</div>
</div>
</form>
</body>
</html>