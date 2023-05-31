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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap/css/default.css">
<!-- Custom styles for this template -->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Red coffee Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<!-- bootstrap-css -->

<link href="${pageContext.request.contextPath}/css/carousel.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/bootstrap/css/style.css"
	rel='stylesheet' type='text/css' />
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.3.js"></script>
<script src="${pageContext.request.contextPath}/js/functions.js"></script>
<script src="${pageContext.request.contextPath}/js/cart.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
</head>
<body>

	<!-- 导航栏 -->
	<%@include file="common/userTopNav.jsp"%>
	<!-- 	<div class="container"> -->
	<!-- 轮播 -->
	<%@include file="./common/adver.jsp"%>
	<div class="top-grids">
		<div class="col-md-6 banner-grid">
			<div class="banner-left-grid blue">
				<div class="banner-left-icon">
					<div class="services-icon">
						<span class="glyphicon glyphicon-glass" aria-hidden="true"></span>
					</div>
				</div>
				<div class="banner-grid-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							<a class="btn"
								href="${pageContext.request.contextPath}/cate/getAllCatesList"><h3>coffee 咖啡</h3></a>
						</h3>
					</div>
					<p>Lorem ipsum dolor sit amet conse ctetur adipiscing elit
						neque erat iaculis faucibus laoreet nec</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="col-md-6 banner-grid">
			<div class="banner-left-grid green">
				<div class="banner-left-icon">
					<div class="services-icon">
						<span class="glyphicon glyphicon-glass glyphicon-cog"
							aria-hidden="true"></span>
					</div>
				</div>
				<div class="banner-grid-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							<a class="btn"
								href="${pageContext.request.contextPath}/information/getAllInformation"><h3>资讯</h3></a>
						</h3>
					</div>
					<p>Lorem ipsum dolor sit amet conse ctetur adipiscing elit
						neque erat iaculis faucibus laoreet nec</p>
				</div>
				<div class="clearfix"></div>

			</div>
		</div>
		<div class="banner-grid-info">
			<h3>资讯</h3>
			<p>最新的咖啡资讯</p>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- 			</div> -->
	<div class="clearfix"></div>
	</div>

	</div>
	</div>
	<!-- welcome -->
	<div class="welcome">
		<div class="container">
			<div class="welcome-info">
				<h2>Welcome</h2>
				<h5>Coffee culture website.</h5>
				<p>Here you will learn more about coffee, including the kinds of coffee, coffee making and so on.</p>
			</div>
		</div>
	</div>

	<!-- 未定版块 -->
	<div class="news">
		<!-- container -->
		<div class="container">
			<div class="news-info">
				<h3>Good Coffee店主推荐</h3>
			</div>
			
			<div class="container">

				<c:forEach items="${List}" var="l" varStatus="lm">
					<c:if test="${lm.count<2}">
						<div class="col-md-6">
							<a href="${pageContext.request.contextPath}/index"></a> <img
								src="${pageContext.request.contextPath}${l.coffeePic}"
								alt="${l.coffeeName}">

						</div>
						<div>
							<p>&nbsp &nbsp &nbsp 简述：${l.coffeeDisc}</p>
						</div>
						
					</c:if>


				</c:forEach>
				<div class="clearfix"></div>
				
			</div>
		</div>
		<!-- //container -->
	</div>

	<!-- 新货 -->
	<div class="news">
		<!-- container -->
		<div class="container">
			<div class="news-info">
				<h3>News 新咖啡</h3>
			</div>
			
			<div class="container">

				<c:forEach items="${List}" var="l" varStatus="lm">
					<c:if test="${lm.count<3 }">
						<div class="col-md-6">
							<a href="${pageContext.request.contextPath}/index"></a> <img
								src="${pageContext.request.contextPath}${l.coffeePic}"
								alt="${l.coffeeName}">
						</div>
						<div>
							<p>&nbsp &nbsp &nbsp 咖啡名字：${l.coffeeName}</p>
						</div>
					</c:if>


				</c:forEach>
				<div class="clearfix"></div>
          
			</div>
			<!-- //container -->
		</div>
	</div>
	<!-- //news -->
	<!-- footer -->
	<%@include file="./common/userFooter.jsp"%>
	<a href="#" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- content-Get-in-touch -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
</body>
</html>