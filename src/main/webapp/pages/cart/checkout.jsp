<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>结算页面</title>

	<%-- 静态包含 base标签、css样式、jQuery文件 --%>
	<%@ include file="/pages/common/head.jsp"%>


	<style type="text/css">
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

	<span class="wel_word">结算</span>

	<%--静态包含，登录 成功之后的菜单 --%>
	<%@ include file="/pages/common/login_success_menu.jsp"%>


</div>

<div id="main" >

	<h1>你的订单已结算，订单号为: ${sessionScope.orderId}</h1>


</div>


<%--静态包含页脚内容--%>
<%@include file="/pages/common/footer.jsp"%>


</body>
</html>