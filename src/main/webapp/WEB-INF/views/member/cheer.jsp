<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/superhero/bootstrap.min.css"
	rel="stylesheet">


<meta charset="UTF-8">
<title>Cheer</title>
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
			href="/board/Profile">Profile</a></li>
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
		<div class="card border-secondary mb-3" style="width: 90%;">

			<div class="card-header">💪🏻</div>
			<div class="card-body">
	<div align="center">
	<a href="/board/CheerUp" class="btn btn-outline-primary" role="button">응원 메시지 작성</a>

	
	<c:set var="i" value="0" />
<c:set var="j" value="3" /> 
<div align=center>

<table>
<br>
<c:forEach items="${list}" var="list" varStatus="status">
<c:if test="${i%j == 0 }"> <tr> </c:if>
<th>
<div class="card mb-3" style="width: 400px; height: 200px; margin-right: 10px; align:center;">




  <div class="card-header" align="center">   
<div style=float:left><a style="align:center;" href="/lookRoute?board_nm=${list.board_nm }">
  ${list.BOARD_TITLE }</a></div>  
   <div style=float:right; class="badge badge-pill badge-warning">X</div> 

 

  </div>
  

  
 
  <div class="card-body" align="left"><br>
    <p class="card-text" style="vertical-align: left;">${list.BOARD_CONTEXT }</p>
  </div>
 
  <div class="card-footer text-muted" style="padding-bottom: 9px;">
   <div style=float:left> ✏️${list.MEMBER_NM }</div>  
   <div style=float:right> 🗓${list.BOARD_INDATE }</div> 
 </div>


</div>
</div>
</th>

<c:if test="${i%j == j-1 }"> </tr> </c:if>
<c:set var="i" value="${i+1 }" /> 
</c:forEach>

</table>

	<a href="/board/CheerUp" class="btn btn-outline-primary" role="button">응원 메시지 작성</a>
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>