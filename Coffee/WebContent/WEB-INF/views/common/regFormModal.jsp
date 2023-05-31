<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid">
	<div class="row">
<!-- 		<div class="col-md-12"> -->

<!-- 			<a class="btn" id="modal-224089" role="button" -->
<!-- 				href="#modal-container-224089" data-toggle="modal"></a> -->

			<div class="modal fade" id="regFormModal" role="dialog"
				aria-hidden="true" aria-labelledby="myModalLabel">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">

							<button class="close" aria-hidden="true" type="button"
								data-dismiss="modal">×</button>
							<h4 class="modal-title" id="myModalLabel">注册</h4>
						</div>
						<div class="modal-body">
							<form role="form" id="regForm">
								<div class="form-group">

									<label for="exampleInputEmail1"> 用户名 </label> <input
										class="form-control" id="userName" name="userName" type="text"
										placeholder="用户名" required> <span id="checkNameResult"></span>
								</div>
								<div class="form-group">

									<label for="userPass"> 密码 </label> <input
										class="form-control" id="userPass" name="userPass"
										type="password" />
								</div>
								<div class="form-group">
									<label for="userPass1"> 确认密码 </label> <input
										class="form-control" id="userPass1" name="userPass1"
										type="password" />
								</div>
								<div class="form-group">
									<label for="userAge"> 年龄 </label> <input class="form-control"
										id="userAge" name="userAge" type="number" />
								</div>
								<div class="form-group">
									<label for="userSex"> 性别 </label>
									<div class="radio">
										<label> <input type="radio" name="userSex"
											id="userSex1" value="0" checked> 男
										</label> <label> <input type="radio" name="userSex"
											id="userSex2" value="1"> 女
										</label>
									</div>
								</div>

								<div class="form-group">
									<label for="userEmail"> 邮箱 </label> <input class="form-control"
										id="userEmail" name="userEmail" type="email" />
								</div>

							</form>
						</div>
						<div class="modal-footer">

							<button class="btn btn-default" type="button" onclick="reg()">注册</button>
							<button class="btn btn-primary" type="button">取消</button>
						</div>
					</div>

				</div>

			</div>

<!-- 		</div> -->
	</div>
</div>
