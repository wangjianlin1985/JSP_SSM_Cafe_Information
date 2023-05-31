<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../../common/setReferUrl.jsp" %>
<%@include file="../../common/adminTopNav.jsp" %>
<script type="text/javascript">
function selCoffeeBut(formName,cbName){
	if($("#selAllCoffee").is(":checked"))
		selectAll(formName,cbName);
	else
		unSelectAll(formName,cbName);
}
function check(){
	if(!validateCheckbox("coffeeIds","请至少选中一个咖啡"))
		return false;
	else
		return confirm("确实要删除选中的所有咖啡吗？");
}
</script>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <%@include file="../../common/adminLeftNav.jsp" %>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
         <div class="row">
        	<div class="col-md-10">
            <form class="form-inline" role="form" id="searchForm"  method="post" 
          action="${pageContext.request.contextPath}/admin/coffee/getAdminCoffee">			
				<div class="form-group">
					<label for="cateId">  商品类别</label> 
					<select class="form-control input-sm" name="cateId" id="cateId">
					  <option value="0">---所有类别---</option>
					  <c:forEach items="${cates }" var="c">
					  	<option value="${c.cateId }" ${param.cateId==c.cateId?'selected':''}>${fn:escapeXml(c.cateName) }</option>
					  </c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label for="coffeeName"> 商品名称</label> 
					<input class="form-control input-sm" name="coffeeName" id="coffeeName" value="${fn:escapeXml(param.coffeeName)}" type="text" placeholder="商品名称" />
				</div>
		
				<button class="btn btn-primary btn-sm" type="submit" >搜索</button>
			</form>
			</div>
	
		  </div>
		  
          
        
		  <h2 class="sub-header">咖啡信息列表</h2>
		  
          <c:if test="${!empty coffee.list }">
          <div class="table-responsive ">
          	<form name="coffeeForm" method="post" action="${pageContext.request.contextPath}/admin/coffee/delCoffeeByIds" onsubmit="return check()">
          	<button class="btn btn-primary" type="submit">批量删除</button>		
            <table class="table table-striped">
              <thead>
                <tr>
                  <th><input type="checkbox" id="selAllCoffee" onchange="selCoffeeBut('coffeeForm', 'coffeeIds')"/> 全选</th>
                  <th>#</th>
                  <th>咖啡名称</th>
                  <th>咖啡图片</th>
                  <th>咖啡描述</th>
              
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${coffee.list}" var="g" varStatus="vs">
                <tr>
                  <td><input type="checkbox" name="coffeeIds" value="${g.coffeeId }"/></td>
                  <td>${vs.count }</td>
                  <td>${fn:escapeXml(g.coffeeName) }</td>
                  <td><img src="${pageContext.request.contextPath}${fn:escapeXml(g.coffeePic)}" width="50" height="50"></td>
                  <td>${g.coffeeDisc }</td>
               
                  <td>
                  	<a href="${pageContext.request.contextPath}/admin/coffee/handleCoffee?coffeeId=${g.coffeeId}">修改</a> |
                  	<a href="${pageContext.request.contextPath}/admin/coffee/delCoffee?coffeeId=${g.coffeeId}" onclick="return confirm('确定要删除这个咖啡吗？')">删除</a>   
				  </td>
                </tr>
               </c:forEach>
              </tbody>
            </table>
            </form>
            <%@include file="../../common/pageList.jsp" %>
          </div>
          </c:if>
          <c:if test="${empty coffee.list }">暂无咖啡信息</c:if>
        </div>
      </div>
    </div>

<%@include file="../../common/adminFooter.jsp" %>
</body>
</html>