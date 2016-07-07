<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Basic</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet" >
<link href="${context}/css/common.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="${context}/js/jquery.form.js"></script>
<script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script src="${context}/js/common.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#navbar").find("*").css({
			"color" :"black"
			});
	    $(".navbar-brand").css({
	    	"color" :"black"
	    })
	});

</script>


<style type="text/css">
li{
	cursor: pointer;
}
a{
	text-decoration:none !important;
}

</style>
</head>


<c:set var="homeUrl">${context}/user/main.jsp</c:set>
<c:set var="loginUrl">${context}/user/login.jsp</c:set>

<body>
<div class="navbar-wrapper">
      <!-- Static navbar -->
    <nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
            	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
            	</button>
            <c:if test="${sessionScope.id != null}">
         	   <a class="navbar-brand" href="${homeUrl}">Basic</a>
            </c:if>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav pull-right">
              	<c:if test="${sessionScope.id == null}">
	              	<li class="dropdown">
						<a href="${context}/work/user/createUser.do"><strong>회원가입</strong></a>
					</li>
				</c:if>
				<c:if test="${sessionScope.id != null}">
					<li class="dropdown">
						<a href="${context}/work/user/updateUser.do"><strong>나의 정보 수정</strong></a>
               		</li>
                </c:if>
	            <li>
					<c:if test="${sessionScope.id == null}">
						<a href="${context}/user/login.jsp"><strong>LOGIN</strong></a>
					</c:if>
					<c:if test="${sessionScope.id != null}">
						<a href="${context}/work/user/logout.do"><strong>LOGOUT</strong></a>
					</c:if>
				</li>
              </ul>
          </div>
		</div>
        </nav>
    </div>
</body>
</html>