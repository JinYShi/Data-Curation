<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="static/js/database.js"></script>
	
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

#myInput {
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}
</style>
<style type="text/css">
	#tfnewsearch{
		float:center;
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
		border-top-left-radius: 5px 5px;
		border-bottom-left-radius: 5px 5px;
	}
	.tfbutton:hover {
		text-decoration: none;
		background: #007ead;
		background: -webkit-gradient(linear, left top, left bottom, from(#0095cc), to(#00678e));
		background: -moz-linear-gradient(top,  #0095cc,  #00678e);
	}
	/* Fixes submit button height problem in Firefox */
	.tfbutton::-moz-focus-inner {
	  border: 0;
	}
	.tfclear{
		clear:both;
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
		
			<c:if test="${list.size() == 0}">	
				 <h3>Sorry, no matching datasets found!</h3>		
			</c:if>
			<form id="tfnewsearch" method="get" action="/search">
				<input type="submit" value="Back to search" class="tfbutton">
			</form>
		</div>
		     
        <br><br>
        <!--table-->
      	 <table class="table table-striped" id="example">
       		<thead>
            <tr class="info">
            	<th>ID Number</th>
                <th>Headline</th>
                <th>Agency</th>
                <th>Publish Date</th>
            </tr>
        	</thead>
         <tbody>
        
	        <c:forEach var="con" items="${list}">
					<tr>
					<td>${con.getRow_Id()}</td>
					<td><a href="/headline/${con.getRow_Id()}">${con.getHeadline()}</a></td>
					<td>${con.getAgency()}</td>
					<td>${con.getPublish_date()}</td>
					</tr>		
			</c:forEach>        
         </tbody>
    	</table>
		
	</div>
	<br>
	<br>
	<br>
	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
