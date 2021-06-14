<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
	<%--静态包含base标签 css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>



</head>
<body style="overflow: inherit;">
<div class="container">
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<form  class="form-horizontal" action="userServlet" method="post">
				<span class="heading">欢迎登录</span>
				<div class="form-group">
						<span class="errorMsg" style="color: firebrick">
							${ empty requestScope.msg?"请输入用户名和密码":requestScope.msg }
						</span>
					<br>
					<input type="hidden" name="action" value="login">
					<input type="text"  class="form-control" id="uname" required oninvalid="setCustomValidity('用户名不能为空');" oninput="setCustomValidity('');"  placeholder="请输入用户名" autocomplete="off" tabindex="1" name="username"
						   value="${requestScope.username}">
					<i class="fa fa-user"></i>
				</div>
				<div class="form-group help">
					<input type="password" class="form-control" id="inputPassword3" required oninvalid="setCustomValidity('密码不能为空');" oninput="setCustomValidity('');" placeholder="请输入密码" autocomplete="off" tabindex="1" name="password">
					<i class="fa fa-lock"></i>

				</div>
				<div class="form-group">

					<input type="submit" value="登录" id="sub_btn" class="btn btn-default" />
					<!--                    <button class="btn btn-default" id="btn1">注册</button>-->
				</div>
			</form>
		</div>
	</div>
</div>
</body>


<script>

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

</html>