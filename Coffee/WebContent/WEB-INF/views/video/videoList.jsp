<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../common/userTopNav.jsp"%>
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
				<c:forEach items="${videoList}" var="g">
					<div class="col-md-6">
						<div class="thumbnail">
							<div class="caption text-center">
							</div>
							
							<a
								href="${pageContext.request.contextPath}/video/getVideoDetailById?videoId=${g.videoId}">
								<img alt="${g.videoName}"
								src="${pageContext.request.contextPath}${g.videoPic}" />
							</a>
							<div class="caption text-center">${g.videoDesc}</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<%@include file="../common/userFooter.jsp"%>
</body>
</html>