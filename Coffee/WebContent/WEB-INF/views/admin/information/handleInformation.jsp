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
		  

          <h2 class="sub-header">${empty information.informationId?"添加":"修改" }资讯</h2>
          <div class="col-sm-6 col-sm-offset-3 col-md-8 col-md-offset-2">
           
         	<form class="form" role="form" method="post" action="${pageContext.request.contextPath}/admin/information/doHandleInformation" enctype="multipart/form-data">
					
					<input type="hidden" id="informationId" name="informationId" value="${empty information.informationId?0:information.informationId}"/>
					<div class="form-group">
						<label for="informationID"> 资讯ID </label> 
						<input class="form-control" name="informationId" id="informationId" value="${fn:escapeXml(information.informationId)}" type="text"  placeholder="${fn:escapeXml(information.informationId)}" required/>
					</div>
					
					<div class="form-group">
						<label for="informationName"> 资讯名 </label> 
						<textarea class="form-control" name="informationName" id="informationName" rows="3" placeholder="资讯名" required>${fn:escapeXml(information.informationName)}</textarea>
					</div>
		 <div class="form-group">
						<label for="informationContent"> 资讯内容 </label> 
						<textarea class="form-control" name="informationContent" id="informationContent" rows="3" placeholder="资讯内容" required>${fn:escapeXml(information.informationContent)}</textarea>
					</div> 
		 <div class="form-group">
						<label for="informationDate"> 资讯时间</label> 
						<textarea class="form-control" name="informationDatet" id="informationDate" rows="3" placeholder="资讯时间" required>${fn:escapeXml(information.informationDate)}</textarea>
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