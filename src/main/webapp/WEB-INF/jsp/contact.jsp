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
  .container1 {
	max-width:400px;
	width:100%;
	margin:0 auto;
	position:absolute;
	right:20%;
} 
</style>
<style> 
  .container2 {
	max-width:400px;
	width:100%;
	margin:0 auto;
	position:absolute;
	/* left:150px; */
	 bottom:-150%;
}

 
 #contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact input[type="url"], #contact textarea, #contact button[type="submit"] { font:400 12px/16px "Open Sans", Helvetica, Arial, sans-serif; }
 
#contact {
	background:#F9F9F9;
	padding:25px;
	margin:50px 0;
	/* position:pull-left; */
}

 #contact h3 {
	color: #F96;
	display: block;
	font-size: 30px;
	font-weight: 400;
}

 #contact h4 {
	margin:5px 0 15px;
	display:block;
	font-size:13px;
} 

  fieldset {
	border: medium none !important;
	margin: 0 0 10px;
	min-width: 100%;
	padding: 0;
	width: 100%;
}  

 #contact input[type="text"], #contact input[type="email"], #contact input[type="tel"], #contact input[type="url"], #contact textarea {
	width:100%;
	border:1px solid #CCC;
	background:#FFF;
	margin:0 0 5px;
	padding:10px;
}  

#contact textarea {
	height:100px;
	max-width:100%;
  resize:none;
}

#contact button[type="submit"] {
	cursor:pointer;
	width:100%;
	border:none;
	background:#0CF;
	color:#FFF;
	margin:0 0 5px;
	padding:10px;
	font-size:15px;
}

#contact button[type="submit"]:hover {
	background:#09C;
	-webkit-transition:background 0.3s ease-in-out;
	-moz-transition:background 0.3s ease-in-out;
	transition:background-color 0.3s ease-in-out;
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
					<li class="active"><a href="/contact">Contact us</a></li>
					<li><a href="/sitemap">Sitemap</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="starter-template">
		<br>
		<br>
		<div class="row">
		 <div class="col-sm-6">
			<br>
			<br>
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our Location</legend>
            <address>
                <strong>webapps.cse.unsw.edu.au</strong><br>
                CSE K17<br>
                Barker St, Kensington NSW 2052<br>
                <abbr title="Phone">
                    Phone</abbr>
                (+61) 401 000 000
            </address>
            <address>
                Email: <a href="mailto:#">z5108573@ad.unsw.edu.com</a>
            </address>
            </form>
             <div class="container2">  
             	<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d13243.362330548322!2d151.2277415!3d-33.9195023!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sau!4v1504406870032" width="500" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>   		 	</div>
            
            
        </div>
		
		
			<div class="col-sm-6">
			 <div class="container1"> 
					  <form id="contact" action="" method="post">
					    <h3>Contact us</h3>
					    <h4>We are waiting for your feedback</h4>
					    <fieldset>
					      <input placeholder="Your name" type="text" tabindex="1" required autofocus>
					    </fieldset>
					    <fieldset>
					      <input placeholder="Your Email Address" type="email" tabindex="2">
					    </fieldset>
					    <fieldset>
					      <input placeholder="Your Phone Number" type="tel" tabindex="3">
					    </fieldset>
					    <fieldset>
					      <input placeholder="Your Web Site starts with http://" type="url" tabindex="4">
					    </fieldset>
					    <fieldset>
					      <textarea placeholder="Type your Message Here...." tabindex="5"></textarea>
					    </fieldset>
					    <fieldset>
					      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
					    </fieldset>
					  </form>
 
  
			</div>
			 </div> 
			
			
		</div>
		
		
		</div>

	</div>


	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
