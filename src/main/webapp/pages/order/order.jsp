<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<meta charset="UTF-8">
<title>我的订单</title>
	<%--静态包含base标签 css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%>
	<style type="text/css">
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
			<span class="wel_word">我的订单</span>
		<%--静态包含 登录 成功之后的菜单--%>
		<%@ include file="/pages/common/login_success_menu.jsp"%>
	</div>
	
	<div id="main">
		
		<table>
			<tr>
				<td>日期</td>
				<td>金额</td>
				<td>状态</td>
				<td>详情</td>
			</tr>		
			<tr>
				<td>2015.04.23</td>
				<td>90.00</td>
				<td>未发货</td>
				<td><a href="#">查看详情</a></td>
			</tr>	
			
			<tr>
				<td>2015.04.20</td>
				<td>20.00</td>
				<td>已发货</td>
				<td><a href="#">查看详情</a></td>
			</tr>	
			
			<tr>
				<td>2014.01.23</td>
				<td>190.00</td>
				<td>已完成</td>
				<td><a href="#">查看详情</a></td>
			</tr>		
		</table>
		
	
	</div>

	<%--页脚--%>
	<%@include file="/pages/common/footer.jsp"%>

</body>
</html>