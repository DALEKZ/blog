<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>留言板</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pink Contact Form ,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.bootcss.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
		body{font-size:13px;font-family:"Arial","Microsoft YaHei","黑体","宋体",sans-serif;}
	  	body{background-image:url(http://localhost:8080/A_2016_final/static/img/bg.jpg);text-decoration: none;width:100%;  		 font-family:"Arial","Microsoft YaHei","黑体","宋体",sans-serif;}
	  	label{color:#ffffff}

		#board{idth: 30%;height: 300px;margin:18%;margin-top: 6%;}
	</style>
</head>
<body>
	
	<div id="board">
	<h2 style="color:#ffffff">Please write your message.</h2>
			<form method="post">				
				<div class="form-group" style="margin-left:25px">
						  <label >Name:</label>
						  <input type="text" class="form-control" id="name" name="name" style="width:500px">
					 </div>
					 <div class="form-group"style="margin-left:25px" >
						  <label>Email:</label>
						  <input type="email" class="form-control" id="email" name="email"style="width:500px">
					 </div> 
					 <div class="form-group" style="margin-left:25px" >		 
						 <label >Message:</label>
	  			    	 <textarea class="form-control" rows="5" id="content" name="message" style="width:700px"></textarea> <br>
	  			      </div>				
				
  			    	 <button type="submit" class="btn btn-default" style="margin-left:25px">Post Message</button>
		</form>
       
    
</div>
	<!--start-copyright-->
   		<div class="copy-right">
   			<div class="wrap">
				<p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/"></a></p>
		</div>
	</div>
	<!--//end-copyright-->
</body>
</html>