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
					<li><a href="/">Home</a></li>
					<li><a href="/search">Search</a></li>
					<li><a href="/contact">Contact us</a></li>
					<li class="active"><a href="/sitemap">Sitemap</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="starter-template">
			<h3>Sitemap</h3>
			<ul>
                <li><a href="http://webapps.cse.unsw.edu.au/webcms2/course/index.php?cid=2465"><strong>COMP9321 Assignment 1</strong></a></li>   
                 <li><a href="/"><strong>Home</strong></a></li>
                 <ul><li><a href="/get10">Get 10</a></li></ul>
                 	<ul><ul><li><a href="https://data.oregon.gov/Administrative/Oregon-Newsroom/j8eb-8um2/473">Example: get more details</a></ul></ul> 
                 <ul><li><a href="/get100">Get 100</a></li></ul>
                	<ul><ul><li><a href="https://data.oregon.gov/Administrative/Oregon-Newsroom/j8eb-8um2/473">Example: get more details</a></ul></ul> 
                 <ul><li><a href="/get1000">Get 1000</a></li></ul>
                 	<ul><ul><li><a href="https://data.oregon.gov/Administrative/Oregon-Newsroom/j8eb-8um2/473">Example: get more details</a></ul></ul> 
                 <ul><li><a href="/getAll">Get All</a></li></ul>
                 	<ul><ul><li><a href="https://data.oregon.gov/Administrative/Oregon-Newsroom/j8eb-8um2/473">Example: get more details</a></ul></ul> 
                <li><a href="/search"><strong>Search</strong></a></li>
                <ul><li><a href="/search">Quick Search</a></li></ul>
                <ul><ul><li><a href="/result?param=Year&q=2012">Example: search result for 2012(Year)</a></ul></ul>  
                <ul><ul><ul><li><a href="/headline/275">Example: Enter by headline</a></ul></ul></ul>          
                <ul><ul></li><li><a href="/result?param=City&q=Salem">Example: search result for Salem(City)</a></li></ul></ul>
                <ul><ul><ul><li><a href="/headline/4">Example: Enter by headline</a></ul></ul></ul>
                <ul><ul></li><li><a href="/result?param=Agency&q=Governor%27s+Office">Example: search result for Governor's Office(Agency)</a></li></ul></ul>
                <ul><ul><ul><li><a href="/headline/9">Example: Enter by headline</a></ul></ul></ul>
                <ul><ul></li><li><a href="/result?param=Content&q=agreement">Example: search result for agreement(Keyword)</a></li></ul></ul>
                <ul><ul><ul><li><a href="/headline/103">Example: Enter by headline</a></ul></ul></ul>
                
                <ul><li><a href="/search">Advanced Search</a></li></ul>
                <ul><ul></li><li><a href="/result?date=2014&ci=Salem&ag=Governor%27s+Office&ke=agreement&se=search">Example: search result for 2014(Year)+Salem(City)+Governor's Office(Agency)+agreement(Keyword)</a></li></ul></ul>
                <ul><ul><ul><li><a href="/headline/22">Example: Enter by headline</a></ul></ul></ul>
                <li><a href="/contact"><strong>Contact us</strong></a></li>
                <li><a href="/sitemap"><strong>Sitemap</strong></a></li>
    	    </ul>
		</div>

	</div>
	<!-- /.container -->

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
