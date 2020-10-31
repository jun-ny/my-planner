<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/superhero/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Join</title>
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
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/member/loginForm">Login</a></li>
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="/member/joinForm">Join</a></li>
	</ul>
	<br>
	<div align="center">
		<div class="card border-secondary mb-3" style="width: 30%;">

			<div class="card-header">Join</div>
			<div class="card-body">

<form action = "/member/join" method="POST">
<input type="text" name=member_id id=user_id placeholder="ID"><br>
<input type="password" name=member_pw id=user_pw placeholder="PW"><br>
<input type="password" name=member_pw2 id=user_pw2 placeholder="PW CHECK"><br>
<input type="text" name=member_nm id=user_nm placeholder="NAME"><br>
<input type="text" name=member_birth id=user_birth placeholder="ex.19941217" style="margin-bottom: 5px;"><br>
<input type="submit" class="btn btn-outline-primary" value="SIGNUP">
</form>
</div>
</div>
</div>

</body>
</html>