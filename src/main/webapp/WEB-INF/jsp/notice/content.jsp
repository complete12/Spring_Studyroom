<%@ page language="java" pageEncoding="EUC-KR"%>
<%@ include file="../jsp_header.jsp"%>
<%@ include file="../cart_header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>

<div class="container" style="padding-top:50px; padding-bottom:50px;">
		<center>
			<table class="table" style="text-align: center;">
				<thead>
					<tr class="success">
						<td style="width: 10%;">번호</td>
						<td style="width: 50%;">제목</td>
						<td style="width: 10%;">작성자</td>
						<td style="width: 30%;">작성일</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 10%;">${notice.content_id}</td>
						<td style="width: 50%;">${notice.title}</td>
						<td style="width: 10%;">${notice.writer}</td>
						<td style="width: 30%;">${notice.write_time}</td>
					</tr>
				</tbody>
				<thead>
				<tr class="success">
					<td colspan="4" style="width: 100%;">내용</td></tr>
				</thead> 
				<tr style="height: 300px;">
					<td colspan="4" style="width: 100%;">${notice.content}</td>
				</tr>
				</tbody>
				
			</table>
			
			<a class="btn btn-success" href="./list.html" role="button">목록으로</a>
		</center>
	</div>

</body>
</html>