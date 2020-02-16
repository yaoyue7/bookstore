<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	

<script type="text/javascript">
function zx(){
	if(confirm("是否注销登录？")){
		location.href="doCancle.jsp";
	}
}
</script>
	
<div class="container">
	<div class="row">
		<div class="col-md-4" id="a">
			<img src="img/logo.png" />
		</div>
		<div class="col-md-4" id="b">
			<img src="img/header.png" />
		</div>
		<div class="col-md-4" id="c">
			<ul>
				<li>
					<c:if test="${sessionScope.s1!=null}">
						<h4>欢迎${sessionScope.s1.uname}登陆</h4>
						<input class="btn btn-default" type="button" value="注销" onclick="zx()" id="cancel">
					</c:if>
					<c:if test="${sessionScope.s1==null}">
						<a href="login.jsp">登录</a>
					</c:if>
				</li>													
				<li><a href="register.jsp">注册</a></li>
				<li><a href="DoCart">购物车</a></li>
			</ul>				
		</div>
	</div>
</div>
<div class="a"></div>

<div class="content">
	<!--导航条-->
	<nav class="navbar navbar-link" role="navigation" style="background-color: #1d9c77;">
	  <!-- Brand and toggle get grouped for better mobile display -->
	  <div class="navbar-header">
	    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
	      <span class="sr-only"></span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	      <span class="icon-bar"></span>
	    </button>
	    <a class="navbar-brand" href="DoIndex">首页</a>
	  </div>
	  
	  <!-- Collect the nav links, forms, and other content for toggling -->
	  <div class="collapse navbar-collapse navbar-ex1-collapse">
	    <ul class="nav navbar-nav">
	      	<c:forEach var="category" items="${sessionScope.clist}" varStatus="status" >
	      		<c:if test="${status.index<5}">
	      			<li><a href="DoProduct?category=${category.catid}">${category.name}</a></li>
	      		</c:if>
	      		
	      		<c:if test="${status.index==5}">
	      			<li class="dropdown">			      		
		        		<a href="#" class="dropdown-toggle" data-toggle="dropdown">所有分类<b class="caret"></b></a>				       
	        		<ul class="dropdown-menu" style="background-color: #1d9c77;">
	        	</c:if>
        		<c:if test="${status.index>5}">
      				<li><a href="DoProduct?category=${category.catid}">${category.name}</a></li>
      			</c:if>	
      		</c:forEach>		      	
	        		</ul>
	      		</li>
	     
	    </ul>
	    <form class="navbar-form navbar-right" role="search" action="DoSearch" method="post">
	      <div class="form-group">
	        <input type="text" class="form-control" placeholder="search" name="desc">
	      </div>
	      <button type="submit" class="btn btn-default">搜索</button>
	    </form>
	  </div><!-- /.navbar-collapse -->
	</nav>
</div>