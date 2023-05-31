<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="reqPath" value="${pageContext.request.servletPath}"/> 
<ul id="main-nav" class="main-nav nav nav-tabs nav-stacked" style="">
<li ${fn:contains(reqPath,"/admin/home")?"class='active'":""}>
    <a href="${pageContext.request.contextPath}/admin/home">
        <i class="glyphicon glyphicon-th-large"></i>
        首页 		
    </a>
</li>
<li ${fn:contains(reqPath,"/admin/cate")?"class='active'":""}>
    <a href="#cate" class="nav-header ${fn:contains(reqPath,'/admin/cate')?'':'collapsed'}" data-toggle="collapse">
        <i class="glyphicon glyphicon-th-list"></i>
        	咖啡分类管理
        
        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
    </a>
    <ul id="cate" class="nav nav-list secondmenu ${fn:contains(reqPath,'/admin/cate')?'':'collapse'}" style="height: auto;">
    	<li><a href="${pageContext.request.contextPath}/admin/cate/handleCate"><i class="glyphicon glyphicon-plus"></i>&nbsp;添加咖啡分类</a></li>
	    <li><a href="${pageContext.request.contextPath}/admin/cate/getAdminCates"><i class="glyphicon glyphicon-list"></i>&nbsp;查看咖啡分类</a></li>
    </ul>
</li>
<li ${fn:contains(reqPath,"/admin/size")||fn:contains(reqPath,"/admin/color")?"class='active'":""}>
    <a href="#base" class="nav-header ${fn:contains(reqPath,'/admin/size')||fn:contains(reqPath,'/admin/color')?'':'collapsed'}" data-toggle="collapse">
        <i class="glyphicon glyphicon-briefcase"></i>
        	资讯信息管理
        
        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span>
    </a>
    <ul id="base" class="nav nav-list secondmenu ${fn:contains(reqPath,'/admin/size')||fn:contains(reqPath,'/admin/color')?'':'collapse'}" style="height: auto;">
    	<li><a href="${pageContext.request.contextPath}/admin/information/handleInformation"><i class="glyphicon glyphicon-resize-full"></i>&nbsp;增加资讯信息</a></li>
	    <li><a href="${pageContext.request.contextPath}/admin/information/getAdminInformations"><i class="glyphicon glyphicon-edit"></i>&nbsp;查看资讯信息</a></li>
    </ul>
</li>

  <li ${fn:contains(reqPath,"/admin/coffee")?"class='active'":""}>
	  <a href="#coffee" class="nav-header ${fn:contains(reqPath,'/admin/coffee')?'':'collapsed'}" data-toggle="collapse" > 
	  	<i class="glyphicon glyphicon-gift"></i>
       		 咖啡管理
        
        <span class="pull-right glyphicon glyphicon-chevron-toggle"></span></a>
	  
	  <ul id="coffee" class="nav nav-list secondmenu ${fn:contains(reqPath,'/admin/coffee')?'':'collapse'}" style="height: auto;">
	    <li><a href="${pageContext.request.contextPath}/admin/coffee/handleCoffee"><i class="glyphicon glyphicon-plus"></i>&nbsp;添加咖啡信息</a></li>
	    <li><a href="${pageContext.request.contextPath}/admin/coffee/getAdminCoffee"><i class="glyphicon glyphicon-list"></i>&nbsp;查看咖啡信息</a></li>
	    <li><a href="${pageContext.request.contextPath}/admin/coffee/getCoffeePics"><i class="glyphicon glyphicon-picture"></i>&nbsp;咖啡图片管理</a></li>
	   
	  </ul>
	  
  </li>

   <li ${fn:contains(reqPath,"/admin/order")?"class='active'":""}>
	  <a href="#order" class="nav-header ${fn:contains(reqPath,'/admin/order')?'':'collapsed'}" data-toggle="collapse" >
	  <i class="glyphicon glyphicon-menu-hamburger"></i>
	  	留言管理
	  <span class="pull-right glyphicon glyphicon-chevron-toggle"></span></a>
	  
	  <ul id="order" class="nav nav-list secondmenu ${fn:contains(reqPath,'/admin/order')?'':'collapse'}" style="height: auto;">
	    <li><a href="${pageContext.request.contextPath}/admin/message/getAdminMessages"><i class="glyphicon glyphicon-list"></i>&nbsp;查看留言信息</a></li>
	
	  </ul>
	  
  </li>  

   <li ${fn:contains(reqPath,"/admin/user")?"class='active'":""}>
	  <a href="#user" class="nav-header ${fn:contains(reqPath,'/admin/user')?'':'collapsed'}" data-toggle="collapse" >
	  <i class="glyphicon glyphicon-user"></i>
	  	用户管理<span class="pull-right glyphicon glyphicon-chevron-toggle"></span></a>
	  
	  <ul id="user" class="nav nav-list secondmenu ${fn:contains(reqPath,'/admin/user')?'':'collapse'}" style="height: auto;">
	    <li><a href="${pageContext.request.contextPath}/admin/user/handleUser"><i class="glyphicon glyphicon-plus"></i>&nbsp;添加用户信息</a></li>
	    <li><a href="${pageContext.request.contextPath}/admin/user/getAdminUsers"><i class="glyphicon glyphicon-list"></i>&nbsp;查看用户信息</a></li>
	  </ul>
	  
  </li>  
  </ul>



