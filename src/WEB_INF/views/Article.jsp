<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${article.title}</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.bootcss.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<style>
	  	body{font-size:16px;font-family:"Arial","Microsoft YaHei","黑体","宋体",sans-serif;}

	  	body{background-image:url(http://localhost:8080/A_2016_final/static/img/bg.jpg);text-decoration: none;width:100%}
	  	a:{color: }
 		li {list-style-type:none;} 
	    p{padding:30px;font-size:16px;font-family:"Arial","Microsoft YaHei","黑体","宋体",sans-serif;}
	    a:hover{text-decoration: none;}
	  	#container{margin-top: 20px;}
	  	#banner{background-image: url(http://localhost:8080/A_2016_final/static/img/banner.jpg);height: 250px;margin-bottom: 10px}
		#menu{background-color:#c7e6f8;}
		#main{margin-left:5%;width:60%;background-color: #e4f0f9;border:3px solid grey;float:left}
		.a_menu{color:#000000}
		.dropdown-toggle{color:#000000}
		.date{padding-left: 20px;color: #e89f8b}
		#catalog{width:18%;margin-right:5%;float:right;}
		#popular{width:25%;margin-right:5%;float:right}
		#tagcloud{width:23%;margin-right:5%;float:right}
		.comment {background-color:#ffffff;min-height:250px;border-bottom:1px dotted #d7d2d0;}
		.info{height:150px;width:230px;border-right:1px dotted #d7d2d0;padding:20px;float:left;margin-top:10px}
		.name_span{font-weight:bolder}
		.message{padding:10px;float:right;width:500px;height:200px}
		
		.a_menu{color:#000000}
		.dropdown-toggle{color:#000000}
		.title{padding-left: 20px;font-size: 25px;color:#000000}
		.date{padding-left: 20px;color: #e89f8b}
		
		.tagcloud {
		  font-weight: bolder;
		  line-height: 1.4em;
		}
		.tagcloud li {
		  display: inline;
		  white-space: nowrap;
		  padding: 0;
		  margin: 0;
		}
		.tagcloud li a {
		  padding: 0 0.2em 0 0.2em;
		  text-decoration: none;
		}
</style>
<body>

<div id="banner">		
	</div>
	<div id="menu">
	    	<ul class="nav nav-tabs" style="margin-left:5%;">
	   			<li style="border-right-style:dotted "><a class="a_menu" href="../home" >Home</a></li>
	   			<li style="border-right-style:dotted"><a class="a_menu" href="../algorithm">Algorithm</a></li>	    		
	   			<li style="border-right-style:dotted"><a class="a_menu" href="../development">Development</a></li>
	   		    <li style="border-right-style:dotted"><a class="a_menu" href="../resource">Resource</a></li>   			
	    		<li style="border-right-style:dotted"><a class="a_menu" href="../board">Contact Me</a></li>
	    		<li><a class="a_menu" href="#">About&nbsp&nbspMe</a></li>
	  		</ul>
	</div>
	
	
	<div id="container">		
		<div id="main">
  			
			<div class="panel panel-default">
	  			<div class="panel-heading" style="font-size:20px;">${article.title} <br>
	  			
	  				<span class="date" style="font-size:15px">Posted on ${article.date}</span>
	  			</div>
	  			
	  			<div class="panel-body" style="font-size:16px"><p>${article.content}</p></div>
		   </div>
		   
		 
  		  <c:forEach var="comment" items="${list}">
			    <div class="comment" >
			   		<div class="info">		   			
			   			<img src="http://localhost:8080/A_2016_final/static/img/default_head.png">
			   			<span class="name_span">${comment.name} :</span>
			   		</div>
			   		<div class="message">
			   			<span style="color:#00bfff">${comment.date}</span><br><br>
			   			<p>${comment.content}</p>
			   			
			   		</div>
			   		
			   </div>
  		  </c:forEach>
		   
		
		   <h2>Leave a Message</h2>
		<div class="alert alert-warning">
  			<strong>Attention!</strong> Your email address will not be published. Required fields are marked *
		</div>
		   <div class="form-group">
  			  <form method="post">
  			  		 <div class="form-group" style="margin-left:25px">
						  <label>*Name:</label>
						  <input type="text" class="form-control" id="name" name="name" style="width:500px">
					 </div>
					 <div class="form-group"style="margin-left:25px" >
						  <label>*Email:</label>
						  <input type="email" class="form-control" id="email" name="email"style="width:500px">
					 </div> 
					 <div class="form-group" style="margin-left:25px" >		 
						 <label for="comment">Comment:</label>
	  			    	 <textarea class="form-control" rows="5" id="content" name="content" style="width:700px"></textarea> <br>
	  			      </div>
  			    	 <button type="submit" class="btn btn-default" style="margin-left:25px">Post Comment</button>
  			  </form>
		   </div>
	    </div>
		
			<div id="catalog">
			<div class="panel panel-primary">
        	<div class="panel-heading">Categories</div>
        	<div class="panel-body">
        		<>
        			<br><li><a href="algorithm">Algorithm(${count[0]})</a></li><br>
        			<li><a href="resource">Resource(${count[1]})</a></li><br>
        			<li><a href="development">Development(${count[2]})</a></li><br>
        			<li><a href="mylife">MyLife(${count[3]})</a></li><br>
        		</ul>
        	</div>
    	</div>
		</div>	
    	</div>
			
		
			<div id="popular">
			<div class="panel panel-primary">
        	<div class="panel-heading">Most Popular</div>
        	<div class="panel-body">
        		<ul>
        			<c:forEach items="${popular}" var="article"><li style="border-bottom:1px dotted #c9cbcb ">
        			<br><a href="Article/${article.id}">${article.title}</a> - ${article.click} views</li></c:forEach>
        			
        			
        		</ul>
        	</div>
    	</div>
		</div>	
		
		<div id="tagcloud">
			<div class="panel panel-primary">
        	<div class="panel-heading">TAG CLOUD</div>
        	<div class="panel-body">
        		<div style="width: 200px; text-align: left">
				<ul class="tagcloud" >
				<li><a href="#"
				 style="font-family: Verdana; font-size: 12px; color: #66edf2;"
				 title="ACM">ACM</a></li>
				<li><a href="algorithm"
				 style="font-family: Verdana; font-size:25px; color: #d422db;"
				 title="Algorithm">Algorithm</a><br></li>
				<li><a href="#"
				 style="font-family: Verdana; font-size: 16px; color: #cacbeb;"
				 title="Code">MOOC</a></li>
				<li><a href="#"
				 style="font-family: Verdana; font-size: 15px; color: #a0a0a0;"
				 title="Computer">Computer Science</a></li>
				<li><a href="#"
				 style="font-family: Verdana; font-size: 16px; color: #a2f266;"
				 title="DATABASE">Introduction <br>to Computer Networks</a></li>
				<li><a href="development"
				 style="font-family: Verdana; font-size: 21px; color: #8166f2;"
				 title="DEVELOPMENT">Development</a></li>
				<li><a href="https://arena.topcoder.com/#/u/dashboard"
				 style="font-family: Verdana; font-size: 12px; color: #b8b8b8;"
				 title="RESOURCE"><br>TOPCODER</a></li>
				<li><a href="#"
				 style="font-family: Verdana; font-size: 15px; color: #eddd57;"
				 title="Machine Learning">Machine Learning</a></li>
				<li><a href="mylife"
				 style="font-family: Verdana; font-size: 25px; color: #f22929;"
				 title="MyLife">MyLife</a></li>
				<li><a href="resource"
				 style="font-family: Verdana; font-size: 12px; color: #b8b8b8;"
				 title="RESOURCE"><br>RESOURCE</a></li>
				 <li><a href="http://wjmzbmr.com/about-me/"
				 style="font-family: Verdana; font-size: 19px; color: #8166f2;"
				 title="RESOURCE"><br>CLJ大大</a></li>
				</ul>
				</div>
        	</div>	
        	</div>	
	</div>	
	
	
	
</body>
</html>