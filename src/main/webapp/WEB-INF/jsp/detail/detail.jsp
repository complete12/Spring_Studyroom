<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/jsp/jsp_header.jsp"%>
<%@ include file="/WEB-INF/jsp/cart_header.jsp"%>

<html>
<head>
<title>상품상세화면</title>
<script language="javascript">
	function formChk() {
		var count = 0;
		var date = new Date();
		var x = document.form1.reserve_date.value;
		if (x == null || x == "") {
			alert("예약할 날짜를 바르게 선택하세요.");
			return false;
		} else
			//선택된것 갯수 체크
			for (i = 0; i < document.form1.r_time.length; i++) {
				if (document.form1.r_time[i].checked == true) {
					count++;
				}
			}
		//체크박스 선택개수가 3보다 크면
		if (count < 1) {
			//경고문을 띄우고
			alert("예약할 시간을 선택하세요.");
			return false;
		} else
			document.joinForm1.submit();
		return true;
	}
</script>


<style>
body {
	background: url("../userImg/study.jpg") no-repeat;
	background-size: cover;
	font-family: Montserrat;
}
</style>
</head>
<body>
	<c:if test="${empty loginUser}">
		<script>
			alert('로그인이 필요한 서비스입니다.');
			window.history.back();
		</script>
	</c:if>

	<div class="container" style="padding-top: 50px; padding-bottom: 50px;"
		align="center">
		<center>
			<h1>
				<strong>LET'S </strong>RESERVE!
			</h1>
		</center>
		<div class="well well-sm"
			style="border-radius: 10px; background: rgba(255, 255, 255, 0.4);">

			<form name=form1 action="../reserve/reserveAdd.html"
				onSubmit="formChk();return false;">
				<table class="table" style="text-align: center; margin-top: 20px;">
					<tr><center>
						<td style="width: 33%;">ROON NAME</td>
						<td style="width: 30%;"><input type="hidden" name="room_name"
							value="${item.room_name}">${item.room_name}</td>
							</center>
					</tr>
					<tr>
						<td style="width: 33%;">PRICE
						</td>
						<td style="width: 30%;"><input type="hidden" name="price"
							value="${item.price}">${item.price}원</td>
					</tr>
					<tr>
						<input type="hidden" name="room_id" value="${item.room_id}">
						<td style="width: 33%;">날짜</br>
						</td>
						<td style="width: 66%;"><input type="date"
							name="reserve_date"></td>
					</tr>
					<tr>
						<td style="width: 33%;">시작시간</br>
						<td style="align: center;">

							<table border="0">
								<tr>
									<td><input type="checkbox" name="r_time" value="9">9시
										- 10시</td>
									<td><input type="checkbox" name="r_time" value="10">10시
										- 11시</td>
									<td><input type="checkbox" name="r_time" value="11">11시
										- 12시</td>
									<td><input type="checkbox" name="r_time" value="12">12시
										- 13시</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="r_time" value="13">13시
										- 14시</td>
									<td><input type="checkbox" name="r_time" value="14">14시
										- 15시</td>
									<td><input type="checkbox" name="r_time" value="15">15시
										- 16시</td>
									<td><input type="checkbox" name="r_time" value="16">16시
										- 17시</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="r_time" value="17">17시
										- 18시</td>
									<td><input type="checkbox" name="r_time" value="18">18시
										- 19시</td>
									<td><input type="checkbox" name="r_time" value="19">19시
										- 20시</td>
									<td><input type="checkbox" name="r_time" value="20">20시
										- 21시</td>
								</tr>
								<tr>
									<td><input type="checkbox" name="r_time" value="21">21시
										- 22시</td>
									<td><input type="checkbox" name="r_time" value="22">22시
										- 23시</td>
								</tr>

							</table>


						</td>
					</tr>
					<tr>
						<td colspan=2 align="center"></br> <input type="submit"
							value="예약하기" class="btn btn-success" role="button"></td>
					</tr>

				</table>
		</div>
	</div>
</body>
</html>