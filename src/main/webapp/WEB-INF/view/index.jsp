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
<title>Home</title>
    <link rel="stylesheet" href="Css/index.css" />
   
</head>
<body>
	<%
		Connection conn= DatabaseConnectivity.getDbConnection();
		PreparedStatement st;
		ResultSet set;
	%>
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
    <section class="section-1">
        <video  autoplay loop muted class="bg-video" >
            <source  src="images/Laptop Cinematics.mp4" type="video/mp4">
        </video>
        <div class="section-1-cointainer">
            <h1>Buy the best Laptop for you.</h1>
            <p style="text-decoration: solid;font-size: larger;color: black">Laptoperia of IT is your one stop shop for all things Laptops.</p>
        </div>
    </section>
    <br>

    <section class="parallax">
        <br>
        <section class="section-2" style="height: auto; background-color: #f3e9d2;">
            <div class="info">
                <h1>What we offer</h1>
                <br>
        <div class="row">
            <div class="column">
        <div class="card">
        <%
        	st=conn.prepareStatement("select productId,productQuantity,productPrice from product where productId=1");
			set= st.executeQuery();
			while(set.next())
			{
				int quantity=set.getInt("productQuantity");
				int price= set.getInt("productPrice");
				int product=set.getInt("productId");
        %>
            <img src="images/Asus.jpg" alt="plant" style="width:100%">
            <h1>Asus</h1>
            <p class="price">Price: Rs <%=price %></p>
            <p>Quantity Available: <%=quantity %></p><% }%>
            <p><a href="#"><button>Add to Cart</button></a></p>
        </div>
        </div>

        <div class="column">
        <div class="card">
        <%
        	st=conn.prepareStatement("select productQuantity,productPrice from product where productId=2");
			set= st.executeQuery();
			while(set.next())
			{
				int quantity=set.getInt("productQuantity");
				int price= set.getInt("productPrice");
        %>
            <img src="images/MacBook.jpg" alt="plant" style="width:100%">
            <h1>MacBook Air</h1>
            <p class="price">Price: Rs <%=price %></p>
            <p>Quantity Available:<%=quantity %></p><% }%>
            <p><button>Add to Cart</button></p>
        </div>
    </div>
    <div class="column">
        <div class="card">
        <%
        	st=conn.prepareStatement("select productQuantity,productPrice from product where productId=3");
			set= st.executeQuery();
			while(set.next())
			{
				int quantity=set.getInt("productQuantity");
				int price=set.getInt("productPrice");
        %>
            <img src="images/Dell XPS.jpg" alt="plant" style="width:100%">
            <h1>Dell XPS</h1>
            <p class="price">Price: Rs <%=price %></p>
            <p>Quantity Available: <%=quantity %></p><%} %>
            <p><button>Add to Cart</button></p>
        </div>
    </div>
    <div class="column">
        <div class="card">
        <%
        	st=conn.prepareStatement("select productQuantity,productPrice from product where productId=4");
			set= st.executeQuery();
			while(set.next())
			{
				int quantity=set.getInt("productQuantity");
				int price= set.getInt("productPrice");
        %>
            <img src="images/Lenovo.jpg" alt="plant" style="width:100%">
            <h1>Lenovo</h1>
            <p class="price">Price: Rs <%=price %></p>
            <p>Quantity Available: <%=quantity %></p><%} %>
            <p><button>Add to Cart</button></p>
        </div>
        </div>
</div>
</div>
        <br>
        <div>
             <p class="seemore"><a href="#">See More</a></p>
        </div>
    </section>
    <section class="section-3">
        <footer class="footer">
            <div class="footer__addr">
              <h1 class="footer__logo">Laptoperia</h1>
                  
              <h2>Address</h2>
              
              <address>
                Kamalpokhari, Kathmandu<br>
                    
                <a  herf="form.html" class="footer__btn" href="#">Contacts Us</a>
              </address>
            </div>
            
            <ul class="footer__nav">
              <li class="nav__item">
              <li class="nav__item nav__item--extra">
                <h2 class="nav__title">Technology</h2>
                
                <ul class="nav__ul nav__ul--extra">
                  <li>
                    <a href="https://html.com/" target="_blank">HTML</a>
                  </li>
                  
                  <li>
                    <a href="https://www.w3schools.com/css/" target="_blank"> CSS</a>
                  </li>
                  
                  <li>
                    <a href="https://www.javascript.com/" target="_blank"> JavaScript</a>
                  </li>
                </ul>
              </li>
              <br>
            <div class="legal">
              <p> 2023 All rights reserved C11 Team.</p>
            </div>
          </footer>
    </section>
</body>
</html>