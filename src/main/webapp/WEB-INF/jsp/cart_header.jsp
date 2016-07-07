<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../userImg/favicon.png">
    
    
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/main.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">

    <script src="../js/jquery.min.js"></script>
	<script src="../js/Chart.js"></script>
	<script src="../js/modernizr.custom.js"></script>
	

	
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

    <title>Study Room</title>


<div align="center">

<!-- 
<table class="header">
 
	<tr>
		<td width="160"><a href="../index/list.html">■목록으로 돌아가기</a></td>
		<td width="160"><a href="../checkout/checkout.html">■예약하러 가기</a></td>
		<td width="160"><a href="../cart/cartConfirm.html">■장바구니</a></td>
		<td width="160"><a href="../cart/cartClear.html">■카트 비우기</a></td>
		<td width="160"><c:choose>
			<c:when test="${not empty loginUser}">
				<font color="red">환영해요,<br>
				<c:out value="${loginUser.userId}" />씨</font>
			</c:when>
			<c:when test="${empty loginUser}">
				<font color="red"><a href="../loginform/login.html">■로그인하기</a></font>
			</c:when>
		</c:choose></td>
	</tr>
</table>

-->

		<!-- Menu -->
	<nav class="menu" id="theMenu" data-spy="scroll" data-offset="0" data-target="#theMenu" >
		<div class="menu-wrap">
			<h3><strong>  menu</strong></h3>
			
			<hr/>
			<a href="../index/home.html" class="smoothScroll">HOME</a>
			<c:if test="${empty loginUser}">
				<a href="../loginform/login.html">로그인</a>
			</c:if>
			<c:if test="${!empty loginUser}">
				<a href="../loginform/logout.html">로그아웃</a>
			</c:if>
			
			<hr/>
			<a href="../index/list.html">예약</i></a>
			<!--  <a href="../reserve/checkout.html">예약확인</i></a> -->
			<a href="../reserve/reserveConfirm.html">예약확인</i></a>
			<!--  <a href="../cart/cartClear.html">카트비우기</i></a> -->
			<a href="../index/mypage.html">마이페이지</i></a>
			<a href="../join/list.html">스터디구하기</i></a>
			<a href="../notice/list.html">공지사항</i></a>
			<a href="../index/room.html">스터디룸사진</i></a>
		</div>
		
		<!-- Menu button -->
		<div id="menuToggle"><i class="icon-reorder"></i></div>
	</nav>
	
	<!-- 
	<c:choose>
			<c:when test="${not empty loginUser}">
				<font color="red">환영해요,<br>
				<c:out value="${loginUser.userId}" />씨</font>
			</c:when>
			<c:when test="${empty loginUser}">
				<font color="red"><a href="../loginform/login.html">■로그인하기</a></font>
			</c:when>
		</c:choose>
	 -->	
		
	<script src="../js/classie.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/smoothscroll.js"></script>
	<script src="../js/main.js"></script>

</div>
