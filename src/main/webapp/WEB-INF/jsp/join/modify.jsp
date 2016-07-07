<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../jsp_header.jsp"%>
<%@ include file="../cart_header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>

<body>
	<div class="container" style="padding-top: 50px; padding-bottom: 50px;">

		<div class="row">
			<div class="col-md-12">
				<div class="well well-sm"
					style="border-radius: 10px; background: rgba(213, 213, 213, 0.5);">
					<form:form method="POST" action="./update.html"
						class="form-horizontal">
						<input type="hidden" name="writer" value="${loginUser.userId}" />
						<input type="hidden" name="content_id" value="${join.content_id}"/>
						<fieldset>
							<legend class="text-center header" style="font-size: 30pt;">
								<strong><br>WRITING</br></strong>
							</legend>
							<hr />
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i
									class="fa fa-user bigicon"></i></span>
								<div class="col-md-8">
									Title <input id="title" name="title" type="text"
										placeholder="제목을입력하시오" class="form-control"
										value="${join.title}">
								</div>
							</div>

							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i
									class="fa fa-pencil-square-o bigicon"></i></span>
								<div class="col-md-8">
									Need_Member <select name="member_need">
										<c:choose>
											<c:when test="${join.member_need eq 1}">
												<option value="1" selected="selected">1명</option>
											</c:when>
											<c:otherwise>
												<option value="1">1명</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${join.member_need eq 2}">
												<option value="2" selected="selected">2명</option>
											</c:when>
											<c:otherwise>
												<option value="2">1명</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${join.member_need eq 3}">
												<option value="3" selected="selected">3명</option>
											</c:when>
											<c:otherwise>
												<option value="3">3명</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${join.member_need eq 4}">
												<option value="4" selected="selected">4명</option>
											</c:when>
											<c:otherwise>
												<option value="4">4명</option>
											</c:otherwise>
										</c:choose>
										<c:choose>
											<c:when test="${join.member_need eq 5}">
												<option value="5" selected="selected">5명</option>
											</c:when>
											<c:otherwise>
												<option value="5">5명</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>
							</div>



							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i
									class="fa fa-pencil-square-o bigicon"></i></span>
								<div class="col-md-8">
									Content
									<textarea class="form-control" id="content" name="content"
										placeholder="내용을 입력하시오." rows="7">${join.content}</textarea>
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-12 text-center">
									<button type="submit" class="btn btn-primary btn-lg">Submit</button>
								</div>
							</div>


						</fieldset>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<style>
.h1 { [
	padding: 10px;
	]
}

.header {
	color: black;
	font-size: 27px;
	padding: 10px;
}

.bigicon {
	font-size: 35px;
	color: #36A0FF;
}
</style>

</body>
</html>