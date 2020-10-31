<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/superhero/bootstrap.min.css"
	rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<a href="/" class="display-3"><img
		src="/resources/image/planner.png"
		style="width: 400px; height: 240px; margin-right: 15px; display: block;"
		link="home"></a>
	</div>
	
	<c:choose>
	<c:when test="${not empty sessionScope.loginId }">

	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/">Home</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/board/Profile">Profile</a></li>
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="/member/cheer">Cheer</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/member/logout">Logout</a></li>
	</ul>
	</c:when>
	<c:otherwise>
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/">Home</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="board/Profile">Profile</a></li>
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="/member/cheer">Cheer</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/member/loginForm">Login</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="/member/joinForm">Join</a></li>
	</ul>
  </c:otherwise>
  </c:choose>
	
	<br>
	<div align="center">
		<div class="card border-success mb-3" style="width: 30%;">

			<div class="card-header">Cheer UP!</div>
			<div class="card-body">
	<div align="center">
		<form id = "write" action="/board/write" method="post">
	<input type="text" name="board_title" id="board_title" placeholder="Title" style="width: 381px; background-color:">
	<br> <textarea rows="10" cols="45" name="board_context" id="board_context" placeholder=""></textarea><br>
	<input type="submit" class="btn btn-success" value="Submit">
	</form>

	</div>
	</div>
	</div>
	</div>
</body>
</html>