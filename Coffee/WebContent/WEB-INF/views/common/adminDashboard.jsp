<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1 class="page-header">后台管理</h1>

<div class="row placeholders">
  <div class="col-xs-5 col-sm-2 ">
    <img src="${pageContext.request.contextPath}/images/admin/cate.png" width="150" height="150"  alt="咖啡分类管理">
    <h4><a href="${pageContext.request.contextPath}/admin/cate/getAdminCates">咖啡分类管理</a></h4>
    <span class="text-muted">对咖啡分类进行添加、修改和删除</span>
  </div>
  <div class="col-xs-5 col-sm-2 ">
    <img src="${pageContext.request.contextPath}/images/admin/informations.png" width="150" height="150" alt="基本参数管理">
    <h4><a href="${pageContext.request.contextPath}/admin/information/getAdminInformations">资讯信息管理</a></h4>
    <span class="text-muted">对资讯信息进行添加和删除</span>
  </div>
  <div class="col-xs-5 col-sm-2 ">
    <img src="${pageContext.request.contextPath}/images/admin/coffee.png" width="150" height="150" alt="咖啡信息管理">
    <h4><a href="${pageContext.request.contextPath}/admin/coffee/getAdminCoffee">咖啡信息管理</a></h4>
    <span class="text-muted">对咖啡进行添加、修改和删除</span>
  </div>
  <div class="col-xs-5 col-sm-2 ">
    <img src="${pageContext.request.contextPath}/images/admin/messages.png" width="150" height="150" alt="订单信息管理">
    <h4><a href="${pageContext.request.contextPath}/admin/message/getAdminMessages">留言信息管理</a></h4>
    <span class="text-muted">对留言信息进行管理</span>
  </div>
  <div class="col-xs-4 col-sm-2 ">
    <img src="${pageContext.request.contextPath}/images/admin/user.png" width="150" height="150" alt="用户信息管理">
    <h4><a href="${pageContext.request.contextPath}/admin/user/getAdminUsers">用户信息管理</a></h4>
    <span class="text-muted">对用户进行添加、修改和删除</span>
  </div>
</div>