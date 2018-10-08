<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>admin-login</title>

	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.bootcss.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	<style>
		body{background-image:url(http://localhost:8080/A_2016_final/static/img/bg.jpg);}
		#container{width: 30%;height: 300px;border-style: solid;margin: auto;margin-top: 10%;background-color: #e4f0f9;}
		#form{margin: 13% 25%}
	</style>

</head>
<body>
	<div id="container">
		<form id="form" role="form" method="post">
		  			<p>${error}</p>
		
  			<div class="form-group">
    			<label>AdminID:</label>
    			<input type="text" class="form-control" id="account" name="account" style="width:100%">
  			</div>
 	 		<div class="form-group">
    			<label for="pwd">Password:</label>
    			<input type="password" class="form-control" id="password"style="width:100%" name="password">
  			</div>
  			<div class="checkbox">
    			<label><input type="checkbox"> Remember me</label>
  			</div>
  			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>