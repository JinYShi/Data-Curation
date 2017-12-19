<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

<script type="text/javascript" src="/static/js/searchbar.js"></script>
<style>
body{
  background: #225faa;
  background: linear-gradient(135deg, #BEF4F7 0%, #f7c1be 100%);
  overflow: scroll;
  perspective: 1000px;
}
</style>
<style type="text/css">
	#tfnewsearch{
		float:middle;
		padding:10px;
	}
	.tftextinput{
		margin: 0;
		padding: 5px 15px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		border:1px solid #0076a3; border-right:0px;
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
	}
	.tfbutton {
		margin: 0;
		padding: 5px 15px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		outline: none;
		cursor: pointer;
		text-align: center;
		text-decoration: none;
		color: #ffffff;
		border: solid 1px #0076a3; border-right:0px;
		background: #0095cd;
		background: -webkit-gradient(linear, left top, left bottom, from(#00adee), to(#0078a5));
		background: -moz-linear-gradient(top,  #00adee,  #0078a5);
		border-top-right-radius: 5px 5px;
		border-bottom-right-radius: 5px 5px;
	}
	.tfbutton:hover {
		text-decoration: none;
		background: #007ead;
		background: -webkit-gradient(linear, left top, left bottom, from(#0095cc), to(#00678e));
		background: -moz-linear-gradient(top,  #0095cc,  #00678e);
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
	}
	
	.adbutton{
		margin: 0;
		padding: 5px 15px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		outline: none;
		cursor: pointer;
		text-align: center;
		text-decoration: none;
		color: #ffffff;
		border: solid 1px #0076a3; border-right:0px;
		background: #0095cd;
		background: -webkit-gradient(linear, left top, left bottom, from(#00adee), to(#0078a5));
		background: -moz-linear-gradient(top,  #00adee,  #0078a5);
		border-top-right-radius: 5px 5px;
		border-bottom-right-radius: 5px 5px;	
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
	}
	
	/* Fixes submit button height problem in Firefox */
	.tfbutton::-moz-focus-inner {
	  border: 0;
	}
	.tfclear{
		clear:both;
	}
	.adinput{
		margin: 0;
		padding: 5px 15px;
		font-family: Arial, Helvetica, sans-serif;
		font-size:14px;
		border:1px solid #0076a3;
		border-right:1px solid #0076a3;
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
		border-top-right-radius: 5px 5px;
		border-bottom-right-radius: 5px 5px;
	}
</style>
<style>
select {
    padding:5px 10px;
}

  .container1 {
	margin:0 auto;
	position:absolute;
	right:250px;
	bottom:250px;
			float:middle;
		padding:10px;
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
					<li class="active"><a href="/search">Search</a></li>
					<li><a href="/contact">Contact us</a></li>
					<li><a href="/sitemap">Sitemap</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

				
		 <div class="starter-template">	
<!-- 		 		<div class="container1">
		<img src="https://livingstoneadvisory.com/wp-content/uploads/2016/10/Fotolia_63892082_S_-SEARCH.jpg"  style="width:600px;height:428px;">
		</div> -->
		<h3>Quick Search</h3>
		 
		 
				<div id="tfheader">
					<form id="tfnewsearch" method="get" action="/result">
						
						<select name="param">
							  <option value="Year">Year</option>
							  <option value="City">City</option>
							  <option value="Agency">Agency</option>
							  <option value="Content">Content</option>
						</select>
						<input type="text" class="tftextinput" name="q" size="21" maxlength="120" required><input type="submit" value="search" class="tfbutton">
						
					</form>
					<div class="tfclear"></div>
				</div>
		
			
				<h3>Advanced Search</h3>
				<form id="tfnewsearch" method="get" action="/result">
					<input type="text" name="date" placeholder="YYYY" class = "adinput" >
					<span style="display:inline-block; width: 1000px;"></span>	
					<input type="text" name="ci" placeholder="Name of City" class = "adinput" >
					<span style="display:inline-block; width: 1000px;"></span>	
					<input type="text" name="ag" placeholder="Name of Agency" class = "adinput" >
					<span style="display:inline-block; width: 1000px;"></span>	
					<input type="text" name="ke" placeholder="Keyword of Content" class = "adinput">
					<span style="display:inline-block; width: 10000px;"></span>					
					<input type="submit" value="search" name = "se" class="adbutton">
				</form>
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
