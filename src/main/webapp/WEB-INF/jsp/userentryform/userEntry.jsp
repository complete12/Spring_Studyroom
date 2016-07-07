<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>
<html>
<head>
<title>유저등록 화면</title>


<meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="../css/bootstrap.min.css" rel="stylesheet">
 <link rel="stylesheet" href="../css/font-awesome.min.css" media="screen" title="no title" charset="utf-8">
 <link rel="stylesheet" href="../css/style.css" media="screen" title="no title" charset="utf-8">
 
 <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
      
      
      <style>
      .form-control {
    display: block;
    width: 100%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.428571429;
    color: #555555;
    vertical-align: middle;
    background-color: #ffffff;
    border: 1px solid #cccccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
    -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
    transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
}

      </style>
</head>
<body>

<%@ include file="/WEB-INF/jsp/cart_header.jsp"%>

<article class="container">
	<center>
	<h1><STRONG>JOIN US</STRONG></h1><hr/>
	</center>
	
<div>

<form:form modelAttribute="user" method="post" action="../userentryform/userEntry.html">
	<spring:hasBindErrors name="user">
		<font color="red"><c:forEach items="${errors.globalErrors}"
			var="error">
			<spring:message code="${error.code}" />
		</c:forEach> </font>
	</spring:hasBindErrors>

	  <div class="form-group">
			 <label>ID</label>
			<form:input path="userId"  class="form-control" id="InputEmail" /><font
				color="red"><form:errors path="userId" /></font>
	  </div>
	  <div class="form-group">
			<label>PASSWD</label>
			<form:password path="password" maxlength="20"  class="form-control" id="InputPassword1"/><font
				color="red"><form:errors path="password" /></font>
		
	  </div>
	   <div class="form-group">

			<label>NAME</label>
			<form:input path="userName" maxlength="20"  class="form-control" id="username" /><font
				color="red"><form:errors path="userName" /></font>
		</div>
		<div class="form-group">
		
			<label>PHONE</label>
			<form:input path="phone" maxlength="11"  class="form-control" id="username" /><font
				color="red"><form:errors path="phone" /></font>
		</div>
		 <div class="form-group">
			<label>EMAIL</label>
			<form:input path="email" maxlength="50"  class="form-control" id="username"/><font color="red"><form:errors
				path="email" /></font>
		</div>

		<div class="form-group">
                <label>약관 동의</label>
              <div data-toggle="buttons">
              <label class="btn btn-primary active">
                  <span class="fa fa-check"></span>
                  <input id="agree" type="checkbox" autocomplete="off" checked>
              </label>
              <a href="#">이용약관</a>에 동의합니다.
              </div>
            </div>
	
			<center><i class="fa fa-check spaceLeft"><input type="submit" name="btnSubmit" value="회원가입" class="btn btn-info"></i>
			<input type="reset" name="btnReset" value="가입취소"  class="btn btn-warning"></center>

</form:form> <a href="../index/home.html">■목록으로 돌아가기</a>
</div>
</article>
</body>
</html>