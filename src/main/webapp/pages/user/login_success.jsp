<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<meta charset="UTF-8">
<title>网上书城注册页面</title>
	<%--静态包含base标签 css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
</style>
</head>
<body style="overflow: inherit;">
		<div id="header">
			<div class="Pheade" style="width: 100vw;height: 8vw;">
				<img src="static/img/8.jpg" width="100%" height="100%" >
			</div>
                   <%--静态包含 登录 成功之后的菜单--%>
			<%@ include file="/pages/common/login_success_menu.jsp"%>
		</div>
		
		<div id="main">
		
			<h1>欢迎回来 <a href="index.jsp">转到主页</a></h1>
	
		</div>
		
		<div id="bottom">
			<span>
				网上书城.Copyright &copy;2021
			</span>
		</div>
</body>
</html>