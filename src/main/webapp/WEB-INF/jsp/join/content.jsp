<%@ page language="java" pageEncoding="EUC-KR"%>
<%@ include file="../jsp_header.jsp"%>
<%@ include file="../cart_header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<div class="container"
		style="padding-top: 100px; padding-bottom: 50px;">
		<center>
			<table class="table" style="text-align: center;">
				<thead>
					<tr class="success">
						<td style="width: 5%;">번호</td>
						<td style="width: 35%;">제목</td>
						<td style="width: 10%;">작성자</td>
						<td style="width: 10%;">구하는 인원</td>
						<td style="width: 30%;">작성일</td>
						<td style="width: 10%;">조회수</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 5%;">${join.content_id}</td>
						<td style="width: 35%;">${join.title}</td>
						<td style="width: 10%;">${join.writer}</td>
						<td style="width: 10%;">${join.member_need}명</td>
						<td style="width: 30%;">${join.write_time}</td>
						<td style="width: 10%;">${join.clicks}</td>
					</tr>
				</tbody>
				<thead>
					<tr class="success">
						<td colspan="6" style="width: 100%;">내용</td>
					</tr>
				</thead>
				<tr style="height: 300px;">
					<td colspan="6"
						style="width: 100%; text-align: left; padding-left: 30px; padding-top: 30px; padding-right: 30px;">${join.content}</td>
				</tr>
				</tbody>

			</table>
			<a class="btn btn-success" href="./list.html" role="button">목록으로</a>
			&nbsp;&nbsp;&nbsp;
			<c:if test="${loginUser.userId eq join.writer}">
				<a class="btn btn-warning" role="button"
					href="./modify.html?content_id=${join.content_id}">수정</a>
			&nbsp;&nbsp;&nbsp; <a class="btn btn-danger" role="button"
					href="./delete.html?content_id=${join.content_id}">삭제</a>
			</c:if>


			<div class="row" style="margin-top: 50px;">
				<div class="col-md-12">
					<div class="well well-sm"
						style="padding: 30px; border-radius: 10px; background: rgba(255, 255, 255, 0.4);">
						<div style="text-align: left;">
							<c:choose>
								<c:when test="${fn:length(commentList) > 0}">
									<c:forEach items="${commentList}" var="row">
										<tr>
											<td style="width: 5%;">${row.writer}</td>
											<td style="width: 10%;">${row.write_time}</td>
											<td style="width: 30%;">${row.content}</td>

											<c:if test="${loginUser.userId eq row.writer}">
												<a class="btn btn-default"
													href="./reply_delete.html?content_id=${join.content_id}&comment_id=${row.comment_id}"
													role="button" style="float: right;">댓글 삭제</a>
											</c:if>
										</tr>
										<hr>
										<br>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="4""><strong>*등록된 댓글이 없습니다.</strong><br>
											<br></td>
									</tr>
								</c:otherwise>
							</c:choose>
						</div>

						<form:form method="POST" action="./reply.html"
							class="form-horizontal">
							<input type="hidden" name="writer" value="${loginUser.userId}" />
							<input type="hidden" name="content_id" value="${join.content_id}" />
							<div class="form-group">
								<span class="col-md-1 col-md-offset-2 text-center"><i
									class="fa fa-user bigicon"></i></span>
								<textarea class="form-control" id="content" name="content"
									placeholder="댓글 내용을 입력하세요." rows="7"></textarea>

							</div>
							<div class="form-group">
								<div class="col-md-12 text-center">
									<button type="submit" class="btn btn-primary btn-lg">Submit</button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</center>
	</div>


</body>
</html>