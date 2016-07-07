<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>
<html>
<head>
	<style>

	body{
		background: url("../userImg/item-bg.jpg") no-repeat;
  	 	background-size: cover;
   		font-family: Montserrat;
	}

	</style>
</head>
<body>
<%@ include file="/WEB-INF/jsp/cart_header.jsp"%>
<div align="center" >
		<H1><font color="white">WELCOME TO OUR WEBSITE</font></H1><hr/>


 	<div class="well well-sm" style="border-radius:10px; background:rgba(255,255,255,0.4); width:500px; height:300px;">
	<div class="class2">
		<br/><br/>
		
		<h3 style="color:white">${loginUser.userName} 님 </h3><h3>♡환영합니다~!♡</h3>
		<h3><a href="../index/home.html">☞HOME</a></h3>
	</div>	
	
</div>	
	
		
		
</div>
</body>
</html>