<!--  마이페이지  -->
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>
<html>
<head>
<title>마이페이지</title>


</head>
<body>
<%@ include file="/WEB-INF/jsp/cart_header.jsp"%>
  <div class="logo"></div>
<div align="center" class="login-block">
<h2>MYPAGE</h2>

	<c:if test="${empty loginUser}">
		 <script>alert('로그인이 필요한 서비스입니다.'); window.history.back(); </script>
	</c:if>
		
	<form:form method="POST" action="../userentryform/edituserinfo.html">
			<table>
				<tr height="40px">
					<td><h4>ID</h4></td>
					<td><input type="text" value="${loginUser.userId}" readonly /></td>
				</tr>
				<tr height="40px">
					<td>패스워드</td>
					<td><input type="password" value="${loginUser.password}" name="password"/></td>
				</tr>
				<tr height="40px">
					<td>이름</td>
					<td><input type="text" value="${loginUser.userName}" name="user_name" readonly /></td>
				</tr>
				<tr height="40px">
					<td>연락처</td>
					<td><input type="text" value="${loginUser.phone}" name="phone" /></td>
				</tr>
				<tr height="40px">
					<td>E-MAIL</td>
					<td><input type="text" value="${loginUser.email}" name="email" /></td>
				</tr>
			</table>
			<table>
				<tr>
					<td height="40px" align="center"><input type="submit"
						id="button" name="btnSubmit" value="등록" class="btn btn-primary btn-lg"></td>
					<td height="40px" align="center" ><input
						type="reset" id="button" name="btnReset" class="btn btn-primary btn-lg" value="리셋"></td>
				</tr>
			</table>
		</form:form>
</div>
</body>
</html>
<style>

body {
      background: url("../userImg/item-bg.jpg") no-repeat;
    background-size: cover;
    font-family: Montserrat;
}

.logo {
    width: 10px;
    height: 10px;
    background: url() no-repeat;
    margin: 10px auto;
}

.login-block {
    width: 400px;
    height: 500px;
    padding: 20px;
    background: rgba(255,255,255, 0.7);
    border-radius: 5px;
    border-top: 10px solid #ff656c;
    margin-left: 750px;
     margin-top: 50px;
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
    height:30;
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

.login-block input#button {
    width: 80%;
    height: 40px;
    background: #ff656c;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #e15960;
    color: #fff;
    font-weight: bold;
    text-transform: uppercase;
    font-size: 14px;
    font-family: Montserrat;
    outline: none;
    cursor: pointer;
    text-align:center;
}

.login-block button:hover {
    background: #ff7b81;
}
  </style>
  
  