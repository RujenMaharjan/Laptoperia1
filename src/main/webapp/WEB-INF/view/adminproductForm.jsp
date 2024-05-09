<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />

    <link rel="stylesheet" href="Css/addproduct.css">
    <link rel="stylesheet" href="Css/admin.css">
    
</head>
<body>

    <script src="addproduct.js"></script>
    
    <section id="menu">
    <div class="logo">
        <img src="images/logo.jpg" alt="">
        <h2>Laptoperia</h2>
    </div>
    <div class="items">
        <li><i class="fad fa-chart-pie-alt"></i><a href="<%=request.getContextPath() %>/admin">Dashboard</a></li>
        <li><i class="fad fa-user"></i><a href="<%=request.getContextPath() %>/useradmin">User</a></li>
        <li><i class="fad fa-laptop"></i><a href="<%=request.getContextPath() %>/productadmin">Product</a></li>
    </div>
    </section>
    <section id="interface">
        <div class="navigation">
            <div class="n1">
                <div class="search">
                    <i class="far fa-search"></i>
                    <input type="text" placeholder="Search">
                </div>
            </div>
            <div class="profile">
                <i class="far fa-bell"></i>
                <img src="images/paka1.jpg" alt="">
            </div>
        </div>

        <h3 class="i-name">
            Add Products
        </h3>
  
        <form action="<%=request.getContextPath() %>/addproduct" method="post">
    
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" required><br>
    
            <label for="productQuantity">Product Quantity:</label>
            <input type="number" id="productQuantity" name="productQuantity" required><br>
    
            <label for="productPrice">Product Price:</label>
            <input type="number" id="productPrice" name="productPrice" step="0.01" required><br>
    
            <label for="productDescription">Product Description:</label>
            <textarea id="productDescription" name="productDescription" required></textarea><br>
    
            <button type="submit">Add Product</button>
        </form>
    
    </section>    
</body>