<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<!-- 
	<spring:url value="/css/main.css" var="springCss" />
	<link href="${springCss}" rel="stylesheet" />
	 -->
<c:url value="/css/main.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet" />
<style>
body{
  background: #225faa;
  background: linear-gradient(135deg, #BEF4F7 0%, #f7c1be 100%);
  overflow: scroll;
  perspective: 1000px;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container">
 			<div class="navbar-header">
				<a class="navbar-brand" href="http://webapps.cse.unsw.edu.au/webcms2/course/index.php?cid=2465">COMP9321 Assignment 1</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="/search">Search</a></li>
					<li><a href="/contact">Contact us</a></li>
					<li><a href="/sitemap">Sitemap</a></li>
				</ul>
					
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="starter-template">
			<br>
			<br>
			<br>
			<br>
			<br>
		    <div class="alert alert-info">
        			<a href="/get10" class="btn btn-xs btn-primary pull-right">Get the records</a>
			        <strong>Generate 10 records randomly</strong>
			</div>
			<br><br>
			<div class="alert alert-warning">
			        <a href="/get100" class="btn btn-xs btn-warning pull-right">Get the records</a>
			        <strong>Generate 100 records randomly</strong>
			</div>
			<br><br>
			<div class="alert alert-danger">
			        <a href="/get1000" class="btn btn-xs btn-danger pull-right">Get the records</a>
			        <strong>Generate 1000 records randomly</strong>
			 </div>
			 <br><br>
			 <div class="alert alert-info">
			        <a href="/getAll" class="btn btn-xs btn-primary pull-right">Get the records</a>
			        <strong>Generate All records</strong>
			 </div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
  		
		</div>
	</div>	
	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

</body>

</html>
