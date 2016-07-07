<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>
<html>
<head>
<title>LOGIN</title>

<!-- 추가 -->
<Style>
.logo {
    width: 213px;
    height: 36px;
    background: url() no-repeat;
    margin: 50px auto;
    margin-top: 5px;
    margin-right: auto;
    margin-bottom: 50px;
    margin-left: auto;
}

</Style>
</head>
<body>
<%@ include file="/WEB-INF/jsp/cart_header.jsp"%>
<div align="center" class="body">
<form:form modelAttribute="user" method="post" action="../loginform/login.html">
	<spring:hasBindErrors name="user">
		<font color="red"><c:forEach items="${errors.globalErrors}"
			var="error">
			<spring:message code="${error.code}" />
		</c:forEach> </font>
	</spring:hasBindErrors>



  <div class="logo"></div>
  <h1><strong>LOGIN</strong></h1>
  <div class="login-block">
	<table>
		<tr height="40px">
			<td>아이디</td>
			<td><form:input path="userId" cssClass="userId" id="username" /><font color="red"><form:errors
				path="userId" /></font></td>
		</tr>
		<tr height="40px">
			<td>패스워드</td>
			<td><form:password path="password" cssClass="password" id="password"/><font color="red"><form:errors
				path="password" /></font></td>
		</tr>
	</table>
	
			<button type="submit">LOGIN</button>
			<button  type="reset">RESET</button>
		
	</div>
</form:form></div>
<!-- 수정 -->
<center><a href="../userentryform/userEntry.html" style="color:white">☞회원가입 </a></center>
<!--  -->
</body>
</html>
<style>

body {
    background: url("../userImg/study.jpg") no-repeat;
    background-size: cover;
    font-family: Montserrat;
}

.logo {
    width: 213px;
    height: 36px;
    background: url() no-repeat;
    margin: 50px auto;
}

.login-block {
    width: 320px;
    padding: 20px;
    padding-top:40px;
    background: rgba(255,255,255, 0.7);
    border-radius: 5px;
    border-top: 5px solid #ff656c;
    margin: 0 auto;
}

.login-block h1 {
    text-align: center;
    color: #000;
    font-size: 18px;
    text-transform: uppercase;
    margin-top: 0;
    margin-bottom: 20px;
}

.login-block h3 {
    text-align: center;
    color: #000;
    font-size: 16px;
    text-transform: uppercase;
    margin-top: 0;
    margin-bottom: 20px;
}

.login-block input {
    width: 100%;
    height: 42px;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #ccc;
    margin-bottom: 20px;
    font-size: 14px;
    font-family: Montserrat;
    padding: 0 20px 0 50px;
    outline: none;
}

.login-block input#username {
    background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px top no-repeat;
    background-size: 16px 80px;
}

.login-block input#username:focus {
    background: #fff url('http://i.imgur.com/u0XmBmv.png') 20px bottom no-repeat;
    background-size: 16px 80px;
}

.login-block input#password {
    background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px top no-repeat;
    background-size: 16px 80px;
}

.login-block input#password:focus {
    background: #fff url('http://i.imgur.com/Qf83FTt.png') 20px bottom no-repeat;
    background-size: 16px 80px;
}

.login-block input:active, .login-block input:focus {
    border: 1px solid #ff656c;
}

.login-block button {
    width: 70%;
    height: 40px;
    background: #ff656c;
    box-sizing: border-box;
    border-radius: 5px;
    border-bottom: 10px;
    margin-bottom:8px;
    border: 1px solid #e15960;
    color: #fff;
    font-weight: bold;
    text-transform: uppercase;
    font-size: 14px;
    font-family: Montserrat;
    outline: none;
    cursor: pointer;
}

.login-block button:hover {
    background: #ff7b81;
}
  </style>