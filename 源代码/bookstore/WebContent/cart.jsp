<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>购物车</title>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/info.css">
		<!-- Optional theme -->
		<link rel="stylesheet" href="css/bootstrap-theme.min.css">
		<!-- Latest compiled and minified JavaScript -->
		<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<div class="tt">
			<form action="DoUpdateCart" method="post">
				<table border="0" width="800px" align="center">
					<thead>
						<tr>
							<td colspan="8" align="center"><h1>购物车</h1></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>项目编号</td>
							<td>图书编号</td>
							<td>描述</td>
							<td>库存</td>
							<td>数量</td>
							<td>单价</td>
							<td>总价</td>
							<td>操作</td>
						</tr>
						<%int i=0;%>
						<c:forEach var="c" items="${sessionScope.cartlist}" varStatus="status">
							<tr>
								<td>${c.itemid}</td>
								<td>${c.productid}</td>
								<td>${c.attr1}${c.name}</td>
								<td>${c.qty}</td>
								<td><input type="text" name="qty<%=i%>" value="${c.buyqty}" size="3" /></td>
								<td>${c.listprice}</td>
								<td>${c.listprice*c.buyqty}</td>
								<td><a href="DoRemoveCart?itemid=${c.itemid}">删除</a></td>
							</tr>
							<%i++;%>
						</c:forEach>
						<tr>
							<td colspan="7" align="right">总价格:${sessionScope.total}</td>
							<td><input type="button" class="btn btn-default" value="刷新"></td>
						</tr>
					</tbody>
				</table>
			</form>	
		</div>
		<table align="center"><tr><td><a href="checkCartInfo.jsp">检查购物车</a></td></tr></table>
		<%@ include file="footer.jsp" %>
	</body>
</html>