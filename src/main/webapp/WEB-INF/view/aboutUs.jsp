<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="Css/aboutus.css">
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
    <main>
        <section class="about-content">
            <h2>About Us</h2>
            <p>
                Laptoperia is your one-stop shop for all things laptops! We are a passionate team of laptop enthusiasts dedicated to providing you with the best selection of laptops at competitive prices. Whether you're a student, gamer, professional, or casual user, we have the perfect laptop to meet your needs.
            </p>
            <p>
                We believe in offering exceptional customer service and support. Our knowledgeable staff is always happy to help you choose the right laptop and answer any questions you may have. We also offer a variety of convenient payment options and fast shipping to ensure a smooth shopping experience.
            </p>
        </section>
        <section class="contact-info">
            <h2>Contact Us</h2>
            <ul>
                <li><i class="fas fa-phone"></i> Phone: (977) 98412234567</li>
                <li><i class="fas fa-envelope"></i> Email: info@Laptoperia.com</li>
            </ul>
            <p>Feel free to send us a message:</p>
            <form action="mailto:info@companyname.com" method="post" enctype="text/plain">
                <label for="name">Your Name:</label>
                <input type="text" id="name" name="name" required>
                <br>
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
                <br>
                <button class="btn" type="submit">Send Message</button>
            </form>
        </section>
    </main>
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
          <p> &copy; 2024  Laptoperia</p>
        </div>
      </footer>
    <script src="https://kit.fontawesome.com/your-fontawesome-kit-code.js" crossorigin="anonymous"></script>
</body>
</html>