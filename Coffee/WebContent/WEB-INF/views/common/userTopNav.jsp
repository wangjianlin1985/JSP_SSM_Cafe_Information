<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"href="${pageContext.request.contextPath}/css/bootstrap/css/default.css">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/carousel.css"rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap/css/style.css" rel='stylesheet'type='text/css' />
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<script src="${pageContext.request.contextPath}/js/functions.js"></script>


<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(
			function() {
				//验证用户名是否可用
				$("#regForm #userName").blur(function() {
					$.post(getContextPath() + "/user/checkUserName", {
						userName : $("#regForm #userName").val()
					}, function(result) {
						if (result.available) {
							$("#checkNameResult").html("该用户名可用");
						} else {
							$("#checkNameResult").html("对不起，该用户名已被占用，请更换");
						}
					});
				});
			//修改导航菜单选中状态
			$("#nav li").click(function(){
				$(this).siblings().removeClass("active");
				$(this).addClass("active");
			});
			

			
			$.post(getContextPath()+"/cate/findAll",null,function(result){
			var cate=result.cate;
			if(cate && cate.length>0){
				
				for(var i=0;i<cate.length;i++){
					//上方导航下拉菜单-商品分类
					var s="<li><a href='"+getContextPath()+"/cate/findAll?cateId="+cate[i].cateId+"'>"+(cate[i].cateName).escapeHTML()+"</a></li>";
					$("#dropdown_cate").append(s);
					
				}
			}
			else{
				$("#dropdown_cate").html("暂无相关信息");	
			}
		},"json");
		}
	);
	function login(){
		var userName=$("#userName").val();
		var userPass=$("#userPass").val();
		$.post(getContextPath()+"/user/login",{userName:userName,userPass:userPass},
				function(result){
					$('#loginFormModal').modal('hide');
					if(result.login=="yes"){
						//alert("true");
				$("#info").html("<li><a href='${pageContext.request.contextPath}/index'>Coffee</a></li>"+								
						"<li><a href='${pageContext.request.contextPath}/video/getAllVideo'>视频中心</a></li>"+
						"<li><a href='${pageContext.request.contextPath}/information/getAllInformation'>资讯 </a></li>"+
								"<li><a href='${pageContext.request.contextPath}/cate/getAllCatesList'>咖啡</a></li>"+
								"<li><span><a class='active'>${sessionScope['_LOGIN_USER_'].userName }</a></span></li>"+
								"<li><a href='${pageContext.request.contextPath}/coffee/getCollection'>我的收藏</a></li>"+
								"<li><a href='#' onclick='logout()'>退出登录</a></li>");
			
					}
					
					else{
						//alert("false");
						$("#msgTitle").html("登录失败");
						$("#msgBody").html("用户名或密码错误");
						$("#msgModal").modal();
		
					}
				});

	}
	function logout(){
		$.post(getContextPath()+"/user/logout",null,function(){
			$("#info").html("<li><a href='home.jsp' class='active'>Coffee</a></li>"+	
				
					"<li><a href='${pageContext.request.contextPath}/information/getAllInformation'>资讯 </a></li>"+
	    	        
				            "<li><a href='#loginFormModal' data-toggle='modal'>登陆</a></li>"+															
                            "<li><a href='#regFormModal' data-toggle='modal'>注册</a></li>");
		
		});
	}


	function reg(){
		$.post(getContextPath()+"/user/reg",$('#regForm').serialize(),function(result){
			$('#regFormModal').modal('hide');
			if(result.reg=="yes"){
				$("#msgTitle").html("注册成功");
				$("#msgBody").html("恭喜您，注册成功");
				$("#msgModal").modal();
			}
			else{
				$("#msgTitle").html("注册失败");
				$("#msgBody").html("对不起，注册失败");
				$("#msgModal").modal();
			}
		});
	}
	function checkLogin(result){
		if(result.login){
			//$("#msgTitle").html(result.login);
			//$("#msgBody").html(result.login);
			//$("#msgModal").modal();
			$("#loginFormModal").modal();
			return false;
		}
		return true;
	}
	
</script>

<!-- <div class="container-fluid"> -->
<!-- 	<div class="banner"> -->
		<!-- header -->
		<div class="header">
			<!-- container -->
			<div class="container">
				<div class="logo">
					<h1>


						<a href="${pageContext.request.contextPath}/index"><span>COFF</span>ee </a>

					</h1>
				</div>
			
				<div class="top-nav">
				
					<nav class="navbar navbar-default">
						<form class="navbar-form navbar-left form-inline " role="search" method="post" action="${pageContext.request.contextPath}/coffee/searchCoffee">
						<div class="form-group">
							<input class="form-control " type="text" name="keyword" value="${fn:escapeXml(param.keyword)}"/>
						</div> 
						
						<button class="btn btn-default"  type="submit" style="background:#424040;color:white ">
							搜索
						</button>
					</form>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav" id="info">
							
				                <c:if test="${sessionScope['_LOGIN_USER_']==null}">

								

								<li><a href="${pageContext.request.contextPath}/index" class="active">Coffee</a></li>

								<li><a href="${pageContext.request.contextPath}/video/getAllVideo">视频中心</a></li>
								<li><a href="${pageContext.request.contextPath}/information/getAllInformation">资讯 </a></li>
						    	<li><a href="${pageContext.request.contextPath}/cate/getAllCatesList">咖啡</a></li>	
						    	<li><a href="${pageContext.request.contextPath}/message/getAllMessage">留言板</a></li>												
								<li><a href="#loginFormModal" data-toggle='modal'>登陆</a></li>															
								<li><a href="#regFormModal" data-toggle='modal'>注册</a></li>				
								</c:if>
							
								<c:if test="${sessionScope['_LOGIN_USER_']!=null}">

								<li><a href="${pageContext.request.contextPath}/index" class="active">Coffee</a></li>

								<li><a href="${pageContext.request.contextPath}/video/getAllVideo">视频中心</a></li>

								<li><a href="${pageContext.request.contextPath}/information/getAllInformation">资讯 </span></a></li>
								<li><a href="${pageContext.request.contextPath}/cate/getAllCatesList">咖啡</a></li>
								<li><span><a class="active">${sessionScope['_LOGIN_USER_'].userName }</a></span></li>	
								<li><a href="${pageContext.request.contextPath}/coffee/getCollection?userId=${sessionScope['_LOGIN_USER_'].userId }">我的收藏</a></li>	
								<li><a href="${pageContext.request.contextPath}/message/getAllMessage">留言板</a></li>											
								<li><a href="#" onclick="logout()">退出登录</a></li>
								</c:if>
							</ul>
							
							<div class="clearfix"></div>
						</div>
					</nav>
				</div>
			</div>
			
			<!-- //container -->
		</div>

		
	</div>

<!-- 	</div> -->

	<%@include file="loginFormModal.jsp"%>

	<%@include file="msgModal.jsp"%>

	<%@include file="regFormModal.jsp"%>

	

	<%@include file="confirmModal.jsp"%>

<!-- </div> -->