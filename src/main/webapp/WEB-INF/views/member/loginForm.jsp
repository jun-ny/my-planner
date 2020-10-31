<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/superhero/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Login</title>
</head>

<body>
	<div align="center">
	<a href="/" class="display-3"><img
		src="/resources/image/planner.png"
		style="width: 400px; height: 240px; margin-right: 15px; display: block;"
		link="home"></a>
	</div>
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/">Home</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/board/Profile">Profile</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/member/cheer">Cheer</a></li>
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="/member/loginForm">Login</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/member/joinForm">Join</a></li>
	</ul>
	<br>
	<div align="center">
		<div class="card border-secondary mb-3" style="width: 30%;">

			<div class="card-header">Login</div>
			<div class="card-body">
	<div align="center">
	<form action="/member/login" method="post">
		<input type="text" name="member_id" placeholder="ID" style="margin-bottom: 5px;"> <br>
		<input type="password" name="member_pw" placeholder="PW" style="margin-bottom: 5px;"> <br>
		<input type="submit" class="btn btn-outline-success" value="Login">
		<a href="/member/joinForm" class="btn btn-outline-primary" role="button">Join</a>
	</form>
	</div>
	</div>
	</div>
	</div>
	
	
</body>
</html>