<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="../jsp_header.jsp"%>
<%@ include file="../cart_header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<style>
body {
	background: url("../userImg/study.jpg") no-repeat;
	background-size: cover;
	font-family: Montserrat;
}
</style>
<body>

	<center>
		<h1>
			ADMIN<STRONG>BOARD</STRONG>
		</h1>
	</center>
	<center>
		<div class="container" style="padding-top: 3px; padding-bottom: 50px;">

			<div class="well well-sm"
				style="border-radius: 10px; background: rgba(255, 255, 255, 0.4); margin-left: 3px;">

				<table class="table" style="text-align: center;">
					<thead>
						<tr class="active">
							<td style="width: 5%;">번호</td>
							<td style="width: 40%;">제목</td>
							<td style="width: 15%;">작성자</td>
							<td style="width: 20%;">작성일</td>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${fn:length(noticeList) > 0}">
								<c:forEach items="${noticeList}" var="row">
									<tr>
										<td style="width: 5%;">${row.content_id }</td>
										<td style="width: 40%;"><a
											href="./content.html?content_id=${row.content_id}">${row.title }</a></td>
										<td style="width: 15%;">${row.writer }</td>
										<td style="width: 20%;">${row.write_time }</td>
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
	</center>

	</div>
</body>
</html>