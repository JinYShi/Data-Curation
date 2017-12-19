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
<style>
div.content {
    background-color: #f3e6ff;
    width: 1000px;
    height: 120px;
    font-family: Arial, Helvetica, sans-serif;
    border: 8px solid #f3e6ff;
    overflow: scroll;
    border-top-right-radius: 5px 5px;
	border-bottom-right-radius: 5px 5px;	
	border-top-left-radius: 5px 5px;
	border-bottom-left-radius: 5px 5px;
}

div.headline {
    background-color: #e6e6e6;
    width: 1000px;
    height: 50px;
    border: 1px solid black;
}

.control-label {
  background-color: #ffffe6;
  border: 1px solid #ffffe6;
  color: seagreen;
  position: relative;
  font-size: 12px;
  display: block;
  float:   left;
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
					<li><a href="/">Home</a></li>
					<li><a href="/search">Search</a></li>
					<li><a href="/contact">Contact us</a></li>
					<li><a href="/sitemap">Sitemap</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="starter-template">

			<div class="alert alert-info">
        			<a href="/" class="btn btn-xs btn-primary pull-right">Back to start</a>
			        <strong>Back to Start</strong>
			</div>
			
			<div class="alert alert-warning">
			        <a href="/get100" class="btn btn-xs btn-warning pull-right">Get the records</a>
			        <strong>Generate 100 records randomly</strong>
			</div>
			
			<div class="alert alert-danger">
			        <a href="/get1000" class="btn btn-xs btn-danger pull-right">Get the records</a>
			        <strong>Generate 1000 records randomly</strong>
			 </div>
			 <div class="alert alert-info">
			        <a href="/getAll" class="btn btn-xs btn-primary pull-right">Get the records</a>
			        <strong>Generate All records</strong>
			 </div>
		
		</div>
			<c:forEach var="con" items="${list}">
				<div><h4><i>${con.getHeadline()}</i>></h4></div>
				
				
				<div class="content"><p>${con.getContent()}</p></div>
  					<h5><label class="label control-label">${con.getAgency()}</label></h5>
					<br><h5><label class="label control-label">${con.getPublish_year()}</label></h5> 
					<br><form action= ${con.getAddress()}>
    					<h5><input type="submit" value="More details" /></h5>
					</form>
				<span style="display:inline-block; width: 1000px;"></span>			
			</c:forEach>
	</div>	
	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
