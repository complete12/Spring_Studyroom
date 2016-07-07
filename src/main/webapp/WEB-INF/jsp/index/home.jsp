<!DOCTYPE html>
<html lang="en">
  <head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, initial-scale=1.0, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../userImg/favicon.png">

    <title>Study Room</title>

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

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    
    
   <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
   
	<script>
		function initialize() {

			/*
				http://openapi.map.naver.com/api/geocode.php?key=f32441ebcd3cc9de474f8081df1e54e3&encoding=euc-kr&coord=LatLng&query=ìì¸í¹ë³ì ê°ë¨êµ¬ ê°ë¨ëë¡ 456
                ìì ë§í¬ìì ë¤ì ì£¼ìë¥¼ ì ì¼ë©´ x,y ê°ì êµ¬í ì ììµëë¤.
			*/
			var Y_point			= 37.6105472;		// Y ì¢í
			var X_point			= 127.0357574	;	// X ì¢í

			var zoomLevel		= 16;						// ì§ëì íë ë ë²¨ : ì«ìê° í´ìë¡ íëì ëê° í¼

			var markerTitle		= "ìì¦ìíí¸";				// íì¬ ìì¹ ë§ì»¤ì ë§ì°ì¤ë¥¼ ì¤ë²ìë ëíëë ì ë³´
			var markerMaxWidth	= 300;						// ë§ì»¤ë¥¼ í´ë¦­íìë ëíëë ë§íì ì ìµë í¬ê¸°

			// ë§íì  ë´ì©
			var contentString	= '<div>' +
			'<h2>ìì¦ìíí¸</h2>'+
			'<p>ìì¦ìíí¸ë WEB Agency & SI ë¶ì¼ìì 10ë ì´ìì íë¶í ê²½íì ë³´ì í<br />' +
            'ì ë¬¸ ì¸ë ¥ì¼ë¡ êµ¬ì±ë E-Business ì ë¬¸ ê¸°ììëë¤.</p>' +
			//'<a href="http://www.daegu.go.kr" target="_blank">http://www.daegu.go.kr</a>'+ //ë§í¬ë ë£ì ì ìì
			'</div>';

			var myLatlng = new google.maps.LatLng(Y_point, X_point);
			var mapOptions = {
								zoom: zoomLevel,
								center: myLatlng,
								mapTypeId: google.maps.MapTypeId.ROADMAP
			}
			var map = new google.maps.Map(document.getElementById('map_view'), mapOptions);

			var marker = new google.maps.Marker({
													position: myLatlng,
													map: map,
													title: markerTitle
			});

			var infowindow = new google.maps.InfoWindow(
														{
															content: contentString,
															maxWidth: markerMaxWidth
														}
			);

			google.maps.event.addListener(marker, 'click', function() {
				infowindow.open(map, marker);
			});
		}
	</script>

  </head>

  <body data-spy="scroll" data-offset="0" data-target="#theMenu"  onload="initialize()">
  

	<!-- Menu -->
	<nav class="menu" id="theMenu" data-spy="scroll" data-offset="0" data-target="#theMenu" >
		<div class="menu-wrap">
			<h1 class="logo"><a href="index.html#home">menu</a></h1>
	
			<a href="../index/home.html" class="smoothScroll">HOME</a>
			<c:if test="${empty loginUser}">
				<a href="../loginform/login.html">로그인</a>
			</c:if>
			<c:if test="${!empty loginUser}">
				<a href="../loginform/logout.html">로그아웃</a>
			</c:if>
			<a href="#piclocation2" class="smoothScroll">스터디룸사진</a>
			<a href="#piclocation" class="smoothScroll">위치</a>
			<hr/>
			<a href="../index/list.html">예약하기</i></a>
			<!--  <a href="../reserve/checkout.html">예약하러가기</i></a> -->
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
	

	
	<!-- ========== HEADER SECTION ========== -->
	<section id="home" name="home"></section>
	<div id="headerwrap">
		<div class="container">
			<br>
			<h1>Study Room<br>Twoz</h1>
			
			<h2>Find your study room easily</h2>
			<div class="row">
				<br>
				<br>
				<br>
				<div class="col-lg-6 col-lg-offset-3">
				</div>
			</div>
		</div><!-- /container -->
	</div><!-- /headerwrap -->
	
	
	<!-- ========== WHITE SECTION ========== -->
	<div id="w">
		<div class="container">
			<div class="row" id="piclocation2">
				<div class="col-lg-8 col-lg-offset-2">
				
				<h4>
				당신의 꿈을 이루는 공간 TWOZ 입니다.
				</h4>
				</div>
			</div>
		</div><!-- /container -->
	</div><!-- /w -->
	
	<!-- ========== SERVICES - GREY SECTION ========== -->
	<section id="services" name="services"></section>
	<div id="g">
		<div class="container">
			<div class="row">
				<h3>OUR SERVICES</h3>
				<br>
				<br>
				<div class="col-lg-3">
					<img src="../userImg/room1.jpg" width="300px" height="300px"/>
					<h4>Talking Room</h4>
				
				</div>
				<div class="col-lg-3">
					<img src="../userImg/room2.jpg"  width="300px" height="300px"/>
					<h4>Study Room</h4>
				</div>
				<div class="col-lg-3">
					<img src="../userImg/room3.jpg"  width="300px" height="300px"/>
					<h4>Locker</h4>
				</div>
				<div class="col-lg-3">
					<img src="../userImg/room4.jpg"  width="300px" height="300px"/>
					<h4>Conversation</h4>
				</div>
			</div>
		</div><!-- /container -->
	</div><!-- /g -->
	

	<!-- ========== CHARTS - DARK GREY SECTION ========== -->

	
	<!-- ========== WHITE SECTION ========== -->
	<div id="w">
		<div class="container" id="piclocation">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
				<h3>WE WORK HARD TO DELIVER A <bold>HIGH QUALITY SERVICE</bold>. OUR AIM IS YOUR COMPLETE <bold>SATISFACTION</bold>.
				</h3>
				</div>
			</div>
		</div><!-- /container -->
	</div><!-- /w -->
	
	<!-- ========== ABOUT - GREY SECTION ========== -->
	<section id="about" name="about"></section>
	<div id="g">
		<div class="container">
			<div class="row">
				<h3>LOCATION</h3>
				<center><div id="map_view" style="width:600px; height:500px;"></div></center>
			</div>
		</div>
	</div>


	
	
	
	<!-- ========== FOOTER SECTION ========== -->
	<section id="contact" name="contact"></section>
	<div id="f">
		<div class="container">
			<div class="row">
					<h3><b>CONTACT US</b></h3>
					<br>
					<div class="col-lg-4">
						<h3>Send Us A Message:</h3>
						<h3>dongduk@dongduk.ac.kr</h3>
						<br>
					</div>
					
					<div class="col-lg-4">	
						<h3>Call Us:</h3>
						<h3>010-3984-4389</h3>
						<br>
					</div>
					
					<div class="col-lg-4">
						<h3>Manager</h3>
						<h3>Jiyoung Reera Hyein Juyeon</h3>
						
						<br>
					</div>
				</div>
			</div>
		</div><!-- /container -->
	</div><!-- /f -->
	
	<div id="c">
		<div class="container">
			<p>Created by <a href="http://www.blacktie.co">BLACKTIE.CO</a></p>
		
		</div>
		
	</div>
	
	

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
	<script src="../js/classie.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/smoothscroll.js"></script>
	<script src="../js/main.js"></script>
</body>
</html>
