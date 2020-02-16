<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--本周推荐-->
<div class="row">
	<div class="col-md-3">
		<c:forEach var="h" items="${sessionScope.hm}" varStatus="status" end="1">
			<div class="tuijian" align="center"><strong>${h.key}</strong></div>
			<hr />
			<ul>
				<c:forEach var="p" items="${h.value}" varStatus="status" end="8">
					<li><a href="#" class="varity">「${p.descn}」</a><a href="#" class="book">${p.name}</a><a href="#" class="author">余华</a></li>
				</c:forEach>
			</ul>
		</c:forEach>
	</div>
	
	<!--轮播图-->
	<div class="col-md-9" align="center" id="lunbo">
	<div id="carousel-example-generic" class="carousel slide">
	  	<!-- Indicators -->
	  	<ol class="carousel-indicators">
	    	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	    	<li data-target="#carousel-example-generic" data-slide-to="1"></li>
	    	<li data-target="#carousel-example-generic" data-slide-to="2"></li>
	  	</ol>
	
	 	<!-- Wrapper for slides -->
	  	<div class="carousel-inner">
	    	<div class="item active">
	     	<img src="img/lunbo1.jpg" alt="...">
	     		<div class="carousel-caption"></div>
	    	</div>
	    	<div class="item">
	     	<img src="img/lunbo2.jpg" alt="...">
	     		<div class="carousel-caption"></div>
	    	</div>
	    	<div class="item">
	     	<img src="img/lunbo3.jpg" alt="...">
	     		<div class="carousel-caption"></div>
	    	</div>
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a>
		<a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
		</a>
	</div>
</div>
</div>		

<div class="row">
	<c:forEach var="h" items="${sessionScope.hm}" varStatus="status" end="7">
		<c:if test="${status.index>1 && status.index<3}">
			<div class="col-md-3">
				<div class="tuijian" align="center">
					<strong>${h.key}</strong>
				</div>

				<ul>
					<c:forEach var="p" items="${h.value}" varStatus="status" end="8">
						<li><a href="#" class="varity">「${p.descn}」</a><a href="DoItem?productid=${p.productid}" class="book">${p.name}</a><a href="#" class="author">余华</a></li>					
					</c:forEach>
				</ul>
			</div>
		</c:if>
		
		<c:if test="${status.index>4}">	
			<div class="col-md-3">
				<div class="tuijian" align="center">
					<strong>${h.key}</strong>
				</div>
				
				<ul>
					<c:forEach var="p" items="${h.value}" varStatus="status" end="8">
						<li><a href="#" class="varity">「${p.descn}」</a><a href="DoItem?productid=${p.productid}" class="book">${p.name}</a><a href="#" class="author">余华</a></li>					
					</c:forEach>
				</ul>
			</div>
		</c:if>
	</c:forEach>
</div>

<div>
	<img src="img/ad.jpg" class="ad" />
</div>