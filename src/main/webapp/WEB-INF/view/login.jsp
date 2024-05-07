<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" 
href="Css/studentLogin.css" />
</head>
<body>
	<div class="login-box">
		<h2>Login</h2>
		<p style="color:red"></p>
		<form action="<%=request.getContextPath() %>/login" method="post">
			<div class="row">
				<div class="col">
					<label for="username">Username:</label> 
					<input type="text" id="username" name="username" required>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<label for="password">Password:</label> 
					<input type="password" id="password" name="password" required>
				</div>
			</div>
			<button type="submit" name="submit"  class="login-button">Login</button>
		</form>
		Haven't got an account?<a href="<%=request.getContextPath()%>/register"> SignUp</a>
	</div>
</body>
</html>