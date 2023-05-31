<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@include file="../common/userTopNav.jsp" %>
<form  method="post" action="${pageContext.request.contextPath}/message/insert">
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<form>
				<fieldset>
					 <legend>留言板</legend> 
					 <input type="text" name="keyword" value="${fn:escapeXml(param.keyword)}" /> 
					 <span class="help-block">这里填写留言.</span>
					  <button type="submit" class="btn">提交</button>
				</fieldset>
			</form>
			<table class="table">
				<thead>
					<tr>
						<th>
							编号
						</th>
						<th>
							内容
						</th>
						
						<th>
							用户名
						</th>
					</tr>
				</thead>
				<tbody>
			    <c:if test="${!empty messages}">
				<c:forEach items="${messages}" var="c">
				<tr>
				<th>${c.messageId}</th>
				<th>${c.messageContent}</th>
				<th>${c.messageUserName}</th>
		        </tr>			
			    </c:forEach>
			    </c:if>
				</tbody>
			</table>
		</div>
	</div>
</div>
</form>
<%@include file="../common/userFooter.jsp" %>	
</body>
</html>