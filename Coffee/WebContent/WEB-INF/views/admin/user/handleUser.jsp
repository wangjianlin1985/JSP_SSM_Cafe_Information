<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../../common/adminTopNav.jsp" %>


    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <%@include file="../../common/adminLeftNav.jsp" %>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		  

          <h2 class="sub-header">${empty user.userId?"添加":"修改" }用户</h2>
          <div class="col-sm-6 col-sm-offset-3 col-md-8 col-md-offset-2">
           
         	<form class="form" role="form" method="post" action="${pageContext.request.contextPath}/admin/user/doHandleUser" enctype="multipart/form-data">
					
					<input type="hidden" id="userId" name="userId" value="${empty user.userId?0:user.userId}"/>
				<%-- 	<div class="form-group">
						<label for="userID"> 用户ID </label> 
						<input class="form-control" name="userId" id="userId" value="${fn:escapeXml(user.userId)}" type="text"  placeholder="${fn:escapeXml(user.userId)}" required/>
					</div> --%>
					
					<div class="form-group">
						<label for="userName"> 用户名 </label> 
						<textarea class="form-control" name="userName" id="userName" rows="3" placeholder="用户名" required>${fn:escapeXml(user.userName)}</textarea>
					</div>
		<div class="form-group">
						<label for="userPass"> 密码 </label> 
						<textarea class="form-control" name="userPass" id="userPass" rows="3" placeholder="密码" required>${fn:escapeXml(user.userPass)}</textarea>
					</div>
		
				<button class="btn btn-primary" type="submit" >确定</button>
				<button class="btn btn-default" type="reset" >重置</button>
			
			</form>
		   </div>
        </div>
      </div>
    </div>

<%@include file="../../common/adminFooter.jsp" %>
</body>
</html>