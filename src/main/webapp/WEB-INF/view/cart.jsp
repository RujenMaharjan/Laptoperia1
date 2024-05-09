<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="Css/cart.css">
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
    <main class="cart-container">
        <h2>Your Shopping Cart</h2>
        <section class="cart-items">
            </section>
        <section class="cart-summary">
            <h3>Cart Summary</h3>
            <p>Subtotal: <span id="subtotal"><span aria-hidden="true">NRs.</span> 0.00</span></p>
            <p>Shipping: <span id="shipping"><span aria-hidden="true">NRs.</span> 0.00</span></p>
            <p class="total">Total: <span id="total"><span aria-hidden="true">NRs.</span> 0.00</span></p>
            <button class="btn">Proceed to Checkout</button>
        </section>
    </main>
    <script src="script.js"></script>
</body>
</html>