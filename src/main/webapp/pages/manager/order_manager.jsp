<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
<meta charset="UTF-8">
<title>订单管理</title>
	<%--静态包含base标签 css样式 jQuery文件--%>
	<%@include file="/pages/common/head.jsp"%></head>
<body style="overflow: inherit;">
<div class="Pheade" style="width: 100vw;height: 8vw;">
	<img src="static/img/8.jpg" width="100%" height="100%" >
</div>
	<div id="header">

			<span class="wel_word">订单管理系统</span>
		<%--菜单--%>
		<%@include file="/pages/common/manager_menu.jsp"%>

	</div>
	
	<div id="main" >
		<table>
			<tr>
				<td>日期</td>
				<td>金额</td>
				<td>详情</td>
				<td>发货</td>
				
			</tr>		
			<tr>
				<td>2021.06.03</td>
				<td>90.00</td>
				<td><a href="#">查看详情</a></td>
				<td><a href="#">点击发货</a></td>
			</tr>	
			
			<tr>
				<td>2021.06.01</td>
				<td>20.00</td>
				<td><a href="#">查看详情</a></td>
				<td>已发货</td>
			</tr>	
			
			<tr>
				<td>2021.06.09</td>
				<td>190.00</td>
				<td><a href="#">查看详情</a></td>
				<td>等待收货</td>
			</tr>		
		</table>
	</div>

	<%--页脚--%>
	<%@include file="/pages/common/footer.jsp"%>

</body>
</html>