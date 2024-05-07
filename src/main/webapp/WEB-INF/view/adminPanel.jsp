<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            Dashboard
        </h3>
        <div class="values">
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
        </div>
        <div class="board">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Title</td>
                        <td>Status</td>
                        <td>Roles</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="people">
                            <img src="images/paka1.jpg" alt="Maitri Shakya">
                            <div class="people-de">
                                <h5>Maitreya Shakya</h5>
                                <p>Maitri@example.com</p>
                            </div>
                        </td>
                        <td class="people-des">
                            <h5>Software Engineer</h5>
                            <p>Web Developer</p>
                        </td>
                        <td class="Active"><p>Active</p></td>
                        <td class="role"><p>Owner</p></td>
                        <td class="edit"><a href="#">Edit</a></td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/women.webp" alt="">
                            <div class="people-de">
                                <h5>Yasna Dongol</h5>
                                <p>Yasna@example.com</p>
                            </div>
                        </td>
                        <td class="people-des">
                            <h5>Project Manager</h5>
                            <p>Boss</p>
                        </td>
                        <td class="Active"><p>Active</p></td>
                        <td class="role"><p>Owner</p></td>
                        <td class="edit"><a href="#">Edit</a></td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/man2.webp" alt="">
                            <div class="people-de">
                                <h5>Rujen Maharjan</h5>
                                <p>Rujen@example.com</p>
                            </div>
                        </td>
                        <td class="people-des">
                            <h5>Sales Manager</h5>
                            <p>Sales head</p>
                        </td>
                        <td class="Active"><p>Active</p></td>
                        <td class="role"><p>Owner</p></td>
                        <td class="edit"><a href="#">Edit</a></td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/man3.jpg" alt="">
                            <div class="people-de">
                                <h5>Iraj Lastname</h5>
                                <p>Iraj@example.com</p>
                            </div>
                        </td>
                        <td class="people-des">
                            <h5>Front-end Developer</h5>
                            <p>Web Developer</p>
                        </td>
                        <td class="Active"><p>Active</p></td>
                        <td class="role"><p>Owner</p></td>
                        <td class="edit"><a href="#">Edit</a></td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/man4.jpg" alt="">
                            <div class="people-de">
                                <h5>Kreepal lastname</h5>
                                <p>Kreepal@example.com</p>
                            </div>
                        </td>
                        <td class="people-des">
                            <h5>Marketing Team</h5>
                            <p>Marketing Head</p>
                        </td>
                        <td class="Active"><p>Active</p></td>
                        <td class="role"><p>Owner</p></td>
                        <td class="edit"><a href="#">Edit</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>    
</body>
</html>