<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../../common/setReferUrl.jsp" %>
<%@include file="../../common/adminTopNav.jsp" %>
 <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <%@include file="../../common/adminLeftNav.jsp" %>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		  

          <h2 class="sub-header">用户管理列表</h2>
          <c:if test="${!empty users.list }">
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>#</th>
                  <th>用户Id</th>
                  <th>用户名</th>
                   <th>密码</th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${users.list}" var="user" varStatus="vs">
                <tr>
                  <td>${vs.count }</td>
                  <td>${fn:escapeXml(user.userId) }</td>
                  <td>${fn:escapeXml(user.userName) }</td>
                   <td>${fn:escapeXml(user.userPass) }</td>
                  <td>
                  	<a href="${pageContext.request.contextPath}/admin/user/handleUser?userId=${user.userId}">修改</a> |
                  	<a href="${pageContext.request.contextPath}/admin/user/delUser?userId=${user.userId}" onclick="return confirm('确定要删除这个用户吗？')">删除</a>   
				  </td>
                </tr>
               </c:forEach>
              </tbody>
            </table>
            <%@include file="../../common/pageList.jsp" %>
          </div>
          </c:if>
          <c:if test="${empty users.list }">暂无用户信息</c:if>
        </div>
      </div>
    </div>

<%@include file="../../common/adminFooter.jsp" %>
</body>
</html>