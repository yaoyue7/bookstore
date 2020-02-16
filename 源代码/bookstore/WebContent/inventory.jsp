<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>某人的小树屋</title>
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
			<table border="0" width="800px" align="center">
				<thead>
					<tr>
						<td colspan="2" align="center"><h1>图书库存一览表</h1></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>项目编号</td>
						<td>库存数量</td>
					</tr>

					<tr>
						<td>${in.itemid}</td>
						<td>${in.qty}</td>
					</tr>
				</tbody>
			</table>	
		</div>
		<%@ include file="footer.jsp" %>
	</body>
</html>