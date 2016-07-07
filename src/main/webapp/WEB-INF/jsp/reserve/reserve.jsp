<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>
<%@ include file="/WEB-INF/jsp/cart_header.jsp"%>

<html>
<head>
<style>
body {
	background: url("../userImg/study.jpg") no-repeat;
	background-size: cover;
	font-family: Montserrat;
}
</style>
</head>

<body>

	<div class="container" style="padding-top: 50px; padding-bottom: 50px;">
		<center>
			<h1>
				<strong>LET'S </strong>STUDY!
			</h1>
		</center>

		<div class="well well-sm"
			style="border-radius: 10px; background: rgba(255, 255, 255, 0.4);">
			<table class="table" style="text-align: center; margin-top: 20px;">
				<tr>
					<td colspan="4"><font color="green">*예약된 내역입니다.</font></td>
				</tr>
				<c:forEach items="${rList}" var="itemSet">
					<tr><center>
						<td>${itemSet.room_name}</td>
						<td>${itemSet.reserve_date}</td>
						<td>${itemSet.reserve_time}시 - ${itemSet.reserve_time+1}시</td>
						<td>${itemSet.price}원</td></center>
					</tr>
				</c:forEach>
			</table>
			<center>
				<a class="btn btn-info" href="../reserve/checkout.html"
					role="button">계산하러 가기</a>
			</center>
		</div>
	</div>

</body>
</html>