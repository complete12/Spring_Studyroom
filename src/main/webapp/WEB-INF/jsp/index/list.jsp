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
				<strong>LET'S </strong>RESERVE!
			</h1>
		</center>

		<div class="well well-sm"
			style="border-radius: 10px; background: rgba(255, 255, 255, 0.4);">
			
			<table class="table" style="text-align: center; margin-top: 20px;">
				<thead>
					<tr class="active">
						<td style="width: 40%;">스터디룸 이름</td>
						<td style="width: 30%;">최대 인원</td>
						<td style="width: 30%;">시간당 가격</td>
					</tr>
				</thead>
					<c:forEach items="${itemList}" var="item">
						<tr class="record">
							<td align="center"><a
								href="../detail/detail.html?itemId=${item.room_id}">${item.room_name}</a></td>
								<td align="center">${item.max_user}명</td>
							<td align="center">${item.price}원</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>


		</div>
	</div>
</body>
</html>
