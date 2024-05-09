<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.UUID"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />

    <link rel="stylesheet" href="Css/adminstyle.css">
</head>
<body>
    
    <!-- <a href="productform.html" class="add-button">Add Product</a> -->

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
            Products
        </h3>
		<form action="<%=request.getContextPath() %>/addproduct">
        <button class="add-button" type="submit">Add Product</button>
    	</form>
        <!-- <div class="values">
            <div class="val-box">
                <i class="fas fa-users"></i>
                <div>
                    <h>12,567</h><br>
                    <span>New Users</span>
                </div>
            </div>
            <div class="val-box">
                <i class="fas fa-shopping-cart"></i>
                <div>
                    <h>300,151</h><br>
                    <span>Total Orders</span>
                </div>
            </div>
            <div class="val-box">
                <i class="fas fa-acorn"></i>
                <div>
                    <h>350,100</h><br>
                    <span>Products Sell</span>
                </div>
            </div>
            <div class="val-box">
                <i class="fas fa-dollar-sign"></i>
                <div>
                    <h>$250,000</h><br>
                    <span>This Month</span>
                </div>
            </div>
        </div> -->
        <div class="board">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Stock</td>
                        <td>Action</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="product" items="${listOfProducts}">
                    <tr>
                        <td class="people">
                            <div class="people-de">
                                <h5><c:out value="${product.productName}"></c:out></h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="number"><p><c:out value="${product.productPrice }"></c:out></p></td>
                        <td class="role"><p><c:out value="${product.productQuantity }"></c:out></p></td>
                        <td class="del">
                            <a href="#" class="edit">Edit</a>
                            <a href="#" class="delete">Delete</a>
                        </td>
                    </tr>
                    </c:forEach>
                   
                </tbody>
            </table>
        </div>
    </section>    
</body>
</html>