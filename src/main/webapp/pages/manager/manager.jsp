
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<meta charset="UTF-8">
<title>后台管理</title>
	<%--静态包含base标签 css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%><style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
</style>
</head>
<body style="overflow: inherit;">
<div class="Pheade" style="width: 100vw;height: 8vw;">
	<img src="static/img/8.jpg" width="100%" height="100%" >
</div>
	<div id="header">
			<span class="wel_word">后台管理系统</span>
		<div style=>
			<a href="manager/bookServlet?action=page">图书管理</a>
			<a href="pages/manager/order_manager.jsp">订单管理</a>
			<a href="index.jsp">返回商城</a>
		</div>

	</div>
	
	<div id="main" style="position: relative;left: 15vw;">
		<h1>欢迎管理员进入后台管理系统</h1>
	</div>

	<%--页脚--%>
	<%@include file="/pages/common/footer.jsp"%>

</body>
</html>