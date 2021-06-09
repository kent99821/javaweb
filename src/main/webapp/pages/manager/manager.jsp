
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
	
	<div id="header">
		<div class="Pheade" style="width: 100vw;height: 8vw;">
			<img src="static/img/8.jpg" width="100%" height="100%" >
		</div>
			<span class="wel_word">后台管理系统</span>
		<%--菜单--%>
		<%@include file="/pages/common/manager_menu.jsp"%>

	</div>
	
	<div id="main">
		<h1>欢迎管理员进入后台管理系统</h1>
	</div>

	<%--页脚--%>
	<%@include file="/pages/common/footer.jsp"%>

</body>
</html>