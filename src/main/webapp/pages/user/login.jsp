<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
	<%--静态包含base标签 css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>
	<link rel="stylesheet" type="text/css" href="static/css/bootstrap/css/bootstrap.min.css" />
	<style>
		.container{
			padding-top: 100px;

		}
		.form-bg{
			background: #00b4ef;
		}
		.form-horizontal{
			background: #fff;
			padding-bottom: 40px;
			border-radius: 15px;
			text-align: center;
		}
		.form-horizontal .heading{
			display: block;
			font-size: 35px;
			font-weight: 700;
			padding: 35px 0;
			border-bottom: 1px solid #f0f0f0;
			margin-bottom: 30px;
		}
		.form-horizontal .form-group{
			padding: 0 40px;
			margin: 0 0 25px 0;
			position: relative;
		}
		.form-horizontal .form-control{
			background: #f0f0f0;
			border: none;
			border-radius: 20px;
			box-shadow: none;
			padding: 0 20px 0 45px;
			height: 40px;
			transition: all 0.3s ease 0s;
		}
		.form-horizontal .form-control:focus{
			background: #e0e0e0;
			box-shadow: none;
			outline: 0 none;
		}
		.form-horizontal .form-group i{
			position: absolute;
			top: 12px;
			left: 60px;
			font-size: 17px;
			color: #c8c8c8;
			transition : all 0.5s ease 0s;
		}
		.form-horizontal .form-control:focus + i{
			color: #00b4ef;
		}
		.form-horizontal .fa-question-circle{
			display: inline-block;
			position: absolute;
			top: 12px;
			right: 60px;
			font-size: 20px;
			color: #808080;
			transition: all 0.5s ease 0s;
		}
		.form-horizontal .fa-question-circle:hover{
			color: #000;
		}
		.form-horizontal .main-checkbox{
			float: left;
			width: 20px;
			height: 20px;
			background: #11a3fc;
			border-radius: 50%;
			position: relative;
			margin: 5px 0 0 5px;
			border: 1px solid #11a3fc;
		}
		.form-horizontal .main-checkbox label{
			width: 20px;
			height: 20px;
			position: absolute;
			top: 0;
			left: 0;
			cursor: pointer;
		}
		.form-horizontal .main-checkbox label:after{
			content: "";
			width: 10px;
			height: 5px;
			position: absolute;
			top: 5px;
			left: 4px;
			border: 3px solid #fff;
			border-top: none;
			border-right: none;
			background: transparent;
			opacity: 0;
			-webkit-transform: rotate(-45deg);
			transform: rotate(-45deg);
		}
		.form-horizontal .main-checkbox input[type=checkbox]{
			visibility: hidden;
		}
		.form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
			opacity: 1;
		}
		.form-horizontal .text{
			float: left;
			margin-left: 7px;
			line-height: 20px;
			padding-top: 5px;
			text-transform: capitalize;
		}
		.form-horizontal .btn{
			float: right;
			font-size: 14px;
			color: #fff;
			background: #00b4ef;
			border-radius: 30px;
			padding: 10px 25px;
			border: none;
			text-transform: capitalize;
			transition: all 0.5s ease 0s;
		}
		@media only screen and (max-width: 479px){
			.form-horizontal .form-group{
				padding: 0 25px;
			}
			.form-horizontal .form-group i{
				left: 45px;
			}
			.form-horizontal .btn{
				padding: 10px 20px;
			}
		}
		.btn{
			/*margin: 10px;*/
		}

	</style>

</head>
<body style="background-image:url('static/img/bg.png')">
<div class="container">
	<div class="row">
		<div class="col-md-offset-3 col-md-6">
			<form class="form-horizontal" action="userServlet" method="post">
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