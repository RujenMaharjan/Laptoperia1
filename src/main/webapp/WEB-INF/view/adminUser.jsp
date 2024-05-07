<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>User</title>
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
            User List
        </h3>
    
        <div class="board">
            <table width="100%">
                <thead>
                    <tr>
                        <td>Name</td>
                        <td>Email</td>
                        <td>Phone number</td>
                        <td>Address</td>
                        <td>Action</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="people">
                            <img src="images/paka1.jpg" alt="">
                            <div class="people-de">
                                <h5>Rameshwor yadav</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Rameshwor@example.com</p>
                        </td>
                        <td class="number"><p>9841562358</p></td>
                        <td class="role"><p>lalitpur,Nepal</p></td>
                        <td class="delete"><a href="#">Delete</a></td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/women.webp" alt="">
                            <div class="people-de">
                                <h5>Aarakchyaa Balamai</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Aarakchyaa@example.com</p>
                        </td>
                        <td class="number"><p>9810669955</p></td>
                        <td class="role"><p>lalitpur,Nepal</p></td>
                        <td class="delete"><a href="#">Delete</a></td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/man2.webp" alt="">
                            <div class="people-de">
                                <h5>Hari Bhahadur</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Hari@example.com</p>
                        </td>
                        <td class="number"><p>9841789632</p></td>
                        <td class="role"><p>kathmandu,Nepal</p></td>
                        <td class="delete"><a href="#">Delete</a></td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/man3.jpg" alt="">
                            <div class="people-de">
                                <h5>Hero Hira lal</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Hero@example.com</p>
                        </td>
                        <td class="number"><p>9849865123</p></td>
                        <td class="role"><p>Tokha,Nepal</p></td>
                        <td class="delete"><a href="#">Delete</a></td>
                    </tr>
                    <tr>
                        <td class="people">
                            <img src="images/man4.jpg" alt="">
                            <div class="people-de">
                                <h5>Kaichaa</h5>
                                <!-- <p>Maitri@example.com</p> -->
                            </div>
                        </td>
                        <td class="people-des">
                            <!-- <h5>Software Engineer</h5> -->
                            <p>Kaichaa@example.com</p>
                        </td>
                        <td class="number"><p>9848521469</p></td>
                        <td class="role"><p>lalitpur,Nepal</p></td>
                        <td class="delete"><a href="#">Delete</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>    
</body>
</html>