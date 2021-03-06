<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.hkd.entity.*" %>
<%@ page import="com.hkd.serviceImpl.*" %>
<%@ page import="java.util.ArrayList" %>
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
		<%@include file="header.jsp" %>		
		<div class="tt">
			<table border="0" width="800px" align="center">
				<thead>
					<tr>
						<td colspan="3" align="center"><h1>图书搜索信息一览表</h1></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>图书编号</td>
						<td>图书名称</td>
						<td>图书描述</td>
					</tr>

					<c:forEach var="p" items="${plist1}" varStatus="status">
						<tr>
							<td>${p.productid}</td>
							<td><a href="DoItem?productid=${p.productid}">${p.name}</a></td>
							<td>${p.descn}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div align="center">
				<ul class="pagination">
					<li><a href="DoProduct?flag=down">&laquo;</a></li>
					<c:forEach var="num" items="${SessionScope.pageNo1}" varStatus="status">
						<li><a href="DoProduct?flag=${status.index}">${status.index}</a></li>
					</c:forEach>
					<li><a href="DoProduct?flag=up">&raquo;</a></li>
				</ul>
			</div>
		</div>
		<%@ include file="footer.jsp" %>	
	</body>
</html>