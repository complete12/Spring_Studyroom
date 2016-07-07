<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../jsp_header.jsp"%>
<%@ include file="../cart_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<style>
body{
   background: url("../userImg/study.jpg") no-repeat;
    background-size: cover;
    font-family: Montserrat;
}

</style>
</head>
<body>
	
	<c:if test="${empty loginUser}">
		 <script>alert('로그인이 필요한 서비스입니다.'); window.history.back(); </script>
	</c:if>

	<div class="container" style="padding-top:50px; padding-bottom:50px;">
	<center><h1> <strong>LET'S  </strong>STUDY!</h1></center>
	
	 <div class="well well-sm" style="border-radius:10px; background:rgba(255,255,255,0.4);">
		<a class="btn btn-info" role="button" href="./writeform.html">글쓰러가기</a>

		
			<table class="table" style="text-align: center; margin-top:20px;">
				<thead>
					<tr class="active">
						<td style="width: 5%;">번호</td>
						<td style="width: 35%;">제목</td>
						<td style="width: 10%;">작성자</td>
						<td style="width: 10%;">구하는 인원</td>
						<td style="width: 30%;">작성일</td>
						<td style="width: 10%;">조회수</td>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(joinList) > 0}">
							<c:forEach items="${joinList}" var="row">
								<tr>
									<td style="width: 5%;">${row.content_id }</td>
									<td style="width: 35%;"><a href="./content.html?content_id=${row.content_id}">${row.title }</a></td>
									<td style="width: 10%;">${row.writer }</td>
									<td style="width: 10%;">${row.member_need }명</td>
									<td style="width: 30%;">${row.write_time }</td>
									<td style="width: 10%;">${row.clicks }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		

	</div>
	</div>

</body>
</html>