<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/default.css">
<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/carousel.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap/css/style.css" rel='stylesheet'
	type='text/css' />
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<script src="${pageContext.request.contextPath}/js/functions.js"></script>
<script src="${pageContext.request.contextPath}/js/cart.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script	src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">
$(document).ready(
		function(){
			$('#loginFormModal').modal();
		}
);
	function login(redirUrl){
		var userName=$("#userName").val();
		var userPass=$("#userPass").val();
		$.post(getContextPath()+"/user/login",{userName:userName,userPass:userPass},
				function(result){				
					if(result.login=="yes"){
						
						//alert("true");
						$('#loginFormModal').modal('hide');
						if(redirUrl)
							location.href=redirUrl;
						else
							location.href=getContextPath()+"/index";
					}
					else{
						//alert("false");
						$("#msgTitle").html("登录失败");
						$("#msgBody").html("用户名或密码错误");
						$("#msgModal").modal();
		
					}
				});
	}
	function closeLogForm(backUrl){
		location.href=backUrl;
	}
</script>
</head>
<body>

<%@include file="loginFormModal.jsp" %>

<%@include file="msgModal.jsp" %>
</body>
</html>