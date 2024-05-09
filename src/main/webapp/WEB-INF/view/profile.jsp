<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="utils.DatabaseConnectivity"%>
<%@page import="java.sql.Connection"%>
<%@page import="service.UserDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="Css/profile.css">

</head>
<body>
 <header class="header" id="header">
        <div class="header__top">
            </div>
        </div>
        <div class="header2">
            <!--menu nav-->
<nav class="menu-nav">
            <div>
                 <a href="<%=request.getContextPath() %>/index" class="active">Home</a>
                 <a href="<%=request.getContextPath()%>/aboutus">About Us</a>
                 <a href="<%=request.getContextPath() %>/profile">Profile</a>
            </div>
            <div class="header-cart" style="display:flex; justify-content:flex-end; align-items:center;">
                   <form class="search-form">
                    <input type="search" placeholder="Search" name="search" class="search-input" />
                    <button type="submit" class="search-button">Search</button>
                </form>
            </div>
            <div class="header-cart" style="display:flex; justify-content:flex-end; align-items:center;">
                <a href="<%=request.getContextPath() %>/cart">  <img src="images/cart.png" alt="cart" style="height:25px; width:25px;" />
                  <button class="cart-button">Cart</button>
                </a>
              </div>              
        </nav>
</header>
<div class="profile-container">
    <div class="profile-image">
        <img src="images/paka1.jpg" alt="User Image">
        
    </div>
    <div class="profile-field">
        <label for="firstName">First Name:</label>
        <span id="firstName">Maitryea</span>
    </div>
    <div class="profile-field">
        <label for="lastName">Last Name:</label>
        <span id="lastName">Shakya</span>
    </div>
    <div class="profile-field">
        <label for="username">Username:</label>
        <span id="username">sh@kyamaitri</span>
    </div>
    <div class="profile-field">
        <label for="email">Email:</label>
        <span id="email">Maitryeashakya@gmail.com</span>
    </div>
    <div class="profile-field">
        <label for="address">Address:</label>
        <span id="address">Golden temple, Mangal bazar, lalitpur</span>
    </div>
    <form action="<%=request.getContextPath()%>/logout" method="post">
    <button type="submit" class="logout-btn">Log Out</button>
    </form>
</div>

</body>
</html>