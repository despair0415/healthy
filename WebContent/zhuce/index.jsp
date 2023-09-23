<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>亲情"0"距离</title>

	<!-- Meta tags -->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<!-- Style -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>

<body>
	<!-- Signup form -->
	<section class="w3l-signup">
		<div class="overlay">
			<div class="wrapper">
				<div class="logo">
					<a class="brand-logo" href="../index.jsp">亲情"0"距离</a>
				</div>
				<div class="form-section">
					<h3>爱的守护</h3>
					<form action="/PLife/Login1" method="get" class="signin-form">
						<div class="form-input">
							<input type="text" name="Userid" placeholder="账号" >
						</div>
						<div class="form-input">
							<input type="text" name="Username" placeholder="用户名" >
						</div>
						<div class="form-input">
							<input type="password" name="password" placeholder="密码" required="">
						</div>
						<button type="submit" class="btn btn-primary theme-button mt-4">提交</button>
					</form>
				</div>
			</div>
		</div>
		<div id='stars'></div>
		<div id='stars2'></div>
		<div id='stars3'></div>

		<!-- copyright -->
		
		<!-- //copyright -->
	</section>

	<!-- /Signup form -->
</body>

</html>