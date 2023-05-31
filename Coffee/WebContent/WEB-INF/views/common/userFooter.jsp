<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){
	var winHeight=$(window).height(); //浏览器当前窗口可视区域高度	
	var bodyHeight=$(document.body).height();//浏览器当前窗口文档body的高度
	var footerHeight=$('#bottomNav').height();
	
	if(bodyHeight<=winHeight-50){ 
		$("#bottomNav").addClass("navbar-fixed-bottom");
	}
	else{
		$("#bottomNav").removeClass("navbar-fixed-bottom");
	}
});


</script>
	<!-- footer -->
	<div class="footer">
		<!-- container -->
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid">
					<h3>Details 更多信息</h3>
					<ul>
						<li><a href="about.html">About</a></li>
						<li><a href="codes.html">Codes</a></li>
						<li><a href="gallery.html">Gallery</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>Contact 联系我们</h3>
					<ul>
						<li>756 gt globel Place,</li>
						<li>CD-Road,M 07 435.</li>
						<li>Telephone: +1 234 567 9871</li>
						<li>FAX: +1 234 567 9871</li>
						<li>Email : <a href="mailto:example@email.com">Example@mail.com</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>Social 合作网站</h3>
					<ul>
						<li><a href="#">Facebook</a></li>
						<li><a href="#">Twitter</a></li>
						<li><a href="#">Google +</a></li>
						<li><a href="#">Rss</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h3>Newsletter 业务联系</h3>
					<form>
						<input type="text" placeholder="Email address" required="">
						<input type="submit" value="Subscribe">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- container -->
	</div>
	<!-- //footer -->
	<!-- footer-bottom -->
	<div class="footer-bottom">
		<!-- container -->
		<div class="container">
			<p>
				© 2017  coffee . All rights reserved | Design by <a
					href="http://w3layouts.com/">W3layouts</a>
			</p>
		</div>
		<!-- //container -->
	</div>
	<!-- footer-bottom -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>

