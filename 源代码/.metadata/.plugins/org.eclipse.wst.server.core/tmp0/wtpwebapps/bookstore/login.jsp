<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>某人的小树屋</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<!-- Latest compiled and minified JavaScript -->
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<style>
		body{
			height: 800px;
			margin: 0 20px;
		}
		.menu{
			font-size: 20px;
		}
		#a{
			left: -270px;
		}
		#b{
			top: 10px;
		}
		#c{
			left: 400px;
		}
		#c ul li{
			list-style: none;
			font-size: 20px;
		}
		a{
			text-decoration: none;
			color: black;	
		}
		a:hover{
			text-decoration: none;
			color: red;
		}
		ul li{
			list-style: none;
		}
		.col-md-4 ul li{			
			float: left;
			padding: 5px 10px;
			line-height: 70px;
		}
		.sign{
			width: 450px;
			font-size: 16px;
			margin: 150px auto;
		}
		.ad{
			margin: 20px 0 0 0;
			width:100%;
		}
		.t a{
			color: grey;
			font-size: 20px;
			margin: 5px 20px;
		}
		.t a:hover{
			color: red;
		}
		.bq div{
			color: grey;
			font-size: 12px;
			margin: 5px;
		}			
	</style>
</head>
<body>
	<%@include file="header.jsp" %>		
	
	<div class="sign">
		<form class="form-horizontal" action="DoLogin">
		  	<div class="form-group">
		    	<label for="inputUsername3" class="col-sm-2 control-label">用户名</label>
		    	<div class="col-sm-10">
		      		<input type="text" class="form-control" id="inputUsername3" placeholder="用户名" name="uname">
		   	 	</div>
		  	</div>
		  	<div class="form-group">
		    	<label for="inputPassword3" class="col-sm-2 control-label">密&emsp;码</label>
		    	<div class="col-sm-10">
		      		<input type="password" class="form-control" id="inputPassword3" placeholder="密码" name="pwd">
		    	</div>
		  	</div>
		  	<div class="form-group">
		    	<div class="col-sm-offset-2 col-sm-10">
		      		<div class="checkbox">
		        		<label>
		          			<input type="checkbox"> 记住密码
		        		</label>
		      		</div>
		    	</div>
		  	</div>
		  	<div class="form-group">
		    	<div class="col-sm-offset-2 col-sm-10">
		     		<button type="submit" class="btn btn-default">登录</button>
		     		<script>
			  			if(${sessionScope.msg}!=null){
			  				alert(${sessionScope.msg});
			  			}
		  			</script>
		    	</div>
		  	</div>
		</form>
	</div>
	
	<%@ include file="footer.jsp" %>			
</body>
</html>
