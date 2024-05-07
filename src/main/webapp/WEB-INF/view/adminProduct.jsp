<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />

    <link rel="stylesheet" href="Css/admin.css">
</head>
<body>
    
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

        <!-- <button class="add-button">Add List</button> -->
    
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
                        <td>Category</td>
                        <td>Brand</td>
                        <td>Price</td>
                        <td>Stock</td>
                        <td>Action</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="people">
                            <img src="images/casdel.png" alt="">
                            <div class="people-de">
                                <h5>Dell icore 10</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>2-in-1</p>
                        </td>
                        <td class="number"><p>Dell</p></td>
                        <td class="number"><p>Rs.90,000</p></td>
                        <td class="role"><p>35</p></td>
                        <td class="del">
                            <a href="#" class="edit">Edit</a>
                            <a href="#" class="delete">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/len.jpeg" alt="">
                            <div class="people-de">
                                <h5>Lenova Legion 7</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Gaming Laptop</p>
                        </td>
                        <td class="number"><p>Lenovo</p></td>
                        <td class="number"><p>Rs.1,45,000</p></td>
                        <td class="role"><p>25</p></td>
                        <td class="del">
                            <a href="#" class="edit">Edit</a>
                            <a href="#" class="delete">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/mac.jpg_large" alt="">
                            <div class="people-de">
                                <h5>Macbook M1</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Business Laptop</p>
                        </td>
                        <td class="number"><p>Mac book</p></td>
                        <td class="number"><p>Rs.1,75,000</p></td>
                        <td class="role"><p>15</p></td>
                        <td class="del">
                            <a href="#" class="edit">Edit</a>
                            <a href="#" class="delete">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/acernitro.jpeg" alt="">
                            <div class="people-de">
                                <h5>Acer Nitro 5</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Gaming laptop</p>
                        </td>
                        <td class="number"><p>Acer</p></td>
                        <td class="number"><p>Rs.1,35,000</p></td>
                        <td class="role"><p>19 </p></td>
                        <td class="del">
                            <a href="#" class="edit">Edit</a>
                            <a href="#" class="delete">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/asusvivo.jpeg" alt="">
                            <div class="people-de">
                                <h5>Asus Vivobook</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Business Laptop</p>
                        </td>
                        <td class="number"><p>Asus</p></td>
                        <td class="number"><p>Rs.1,95,000</p></td>
                        <td class="role"><p>35</p></td>
                        <td class="del">
                            <a href="#" class="edit">Edit</a>
                            <a href="#" class="delete">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/miskatana.webp" alt="">
                            <div class="people-de">
                                <h5>Msi Katana</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Gaming</p>
                        </td>
                        <td class="number"><p>Msi</p></td>
                        <td class="number"><p>Rs.1,45,000</p></td>
                        <td class="role"><p>7</p></td>
                        <td class="del">
                            <a href="#" class="edit">Edit</a>
                            <a href="#" class="delete">Delete</a>
                        </td>
                    </tr>
                   
                </tbody>
            </table>
        </div>
    </section>    
</body>
</html>