<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>注册</title>

	<%-- 静态包含 base标签、css样式、jQuery文件 --%>
	<%@ include file="/pages/common/head.jsp"%>


	<script type="text/javascript">
		// 页面加载完成之后
		$(function () {

			$("#username").blur(function () {
				//1 获取用户名
				var username = this.value;
				$.getJSON("http://localhost:8080/web/userServlet","action=ajaxExistsUsername&username=" + username,function (data) {
					if (data.existsUsername) {
						$("span.errorMsg").text("用户名已存在！");
					} else {
						$("span.errorMsg").text("用户名可用！");
					}
				});
			});


			// 给验证码的图片，绑定单击事件
			$("#code_img").click(function () {
				// 在事件响应的function函数中有一个this对象。这个this对象，是当前正在响应事件的dom对象
				// src属性表示验证码img标签的 图片路径。它可读，可写
				// alert(this.src);
				this.src = "${basePath}kaptcha.jpg?d=" + new Date();
			});

			// 给注册绑定单击事件
			$("#sub_btn").click(function () {
				// 验证用户名：必须由字母，数字下划线组成，并且长度为5到12位
				//1 获取用户名输入框里的内容
				var usernameText = $("#username").val();
				//2 创建正则表达式对象
				var usernamePatt = /^\w{5,12}$/;
				//3 使用test方法验证
				if (!usernamePatt.test(usernameText)) {
					//4 提示用户结果
					$("span.errorMsg").text("用户名不合法！");

					return false;
				}
				// 验证密码：必须由字母，数字下划线组成，并且长度为5到12位
				//1 获取用户名输入框里的内容
				var passwordText = $("#password").val();
				//2 创建正则表达式对象
				var passwordPatt = /^\w{5,12}$/;
				//3 使用test方法验证
				if (!passwordPatt.test(passwordText)) {
					//4 提示用户结果
					$("span.errorMsg").text("密码不合法！");

					return false;
				}

				// 验证确认密码：和密码相同
				//1 获取确认密码内容
				var repwdText = $("#repwd").val();
				//2 和密码相比较
				if (repwdText != passwordText) {
					//3 提示用户
					$("span.errorMsg").text("确认密码和密码不一致！");

					return false;
				}

				// 邮箱验证：xxxxx@xxx.com
				//1 获取邮箱里的内容
				var emailText = $("#email").val();
				//2 创建正则表达式对象
				var emailPatt = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
				//3 使用test方法验证是否合法
				if (!emailPatt.test(emailText)) {
					//4 提示用户
					$("span.errorMsg").text("邮箱格式不合法！");

					return false;
				}

				// 验证码：现在只需要验证用户已输入。因为还没讲到服务器。验证码生成。
				var codeText = $("#code").val();

				//去掉验证码前后空格
				// alert("去空格前：["+codeText+"]")
				codeText = $.trim(codeText);
				// alert("去空格后：["+codeText+"]")

				if (codeText == null || codeText == "") {
					//4 提示用户
					$("span.errorMsg").text("验证码不能为空！");

					return false;
				}

				// 去掉错误信息
				$("span.errorMsg").text("");

			});

		});
		$(function(){



			// 随机展示背景图片
			var imgSrcs = [ "static/img/1.jpg",
				"static/img/2.jpg",
				"static/img/3.jpg",
				"static/img/4.jpg" ,
				"static/img/5.jpg"
			];
			var randomBgIndex = parseInt(Math.random() * (imgSrcs.length));

			$(document).ready(
					function() {
						$("body").css("background-image","url(" + imgSrcs[randomBgIndex] + ")");
					});



		})

	</script>
	<style type="text/css">
		.login_form{
			height:420px;
			margin-top: 25px;
		}

	</style>
</head>
<body style="overflow: inherit">
<div class="container">
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<form class="form-horizontal" action="userServlet" method="post">
				<span class="heading">欢迎注册</span>
				<div class="form-group">

					<input type="hidden" name="action" value="regist" />
					<span class="errorMsg" style="color: tomato">
						${ requestScope.msg }
					</span>

					<input  type="text"  class="form-control"  required oninvalid="setCustomValidity('用户名不能为空');" oninput="setCustomValidity('');"  placeholder="请输入用户名"
							value="${requestScope.username}"
							autocomplete="off" tabindex="1" name="username" id="username" />

				</div>
				<div class="form-group">
					<input  class="form-control" required oninvalid="setCustomValidity('密码不能为空');" oninput="setCustomValidity('');" placeholder="请输入密码" type="password" placeholder="请输入密码"
							autocomplete="off" tabindex="1" name="password" id="password" />
				</div>

				<div class="form-group">
					<input  class="form-control" required  placeholder="请再次密码"
							type="password" placeholder="确认密码"
							autocomplete="off" tabindex="1" name="repwd" id="repwd" />
				</div>

				<div class="form-group">

					<input  class="form-control" required  type="text" placeholder="请输入邮箱地址"
							value="${requestScope.email}"
							autocomplete="off" tabindex="1" name="email" id="email"  />
				</div>


				<div class="form-group" >

					<input  class="form-control" placeholder="请输入验证码" required  type="text" name="code" style="width: 300px;" id="code"  />
					<img id="code_img" alt="" src="kaptcha.jpg" style="float: right; margin-right: 20px; top: 20px; width: 160px; height: 45px;">

				</div>




				<div class="form-group">
					<input type="submit" value="注册" id="sub_btn" class="btn btn-default" />
					<!--                    <button class="btn btn-default" id="btn1">注册</button>-->
				</div>
			</form>
		</div>
	</div>
</div>
</body>

</html>