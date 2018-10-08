<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update article</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.bootcss.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<form role="form" style="width:1000px" method="post">
    	<div class="form-group">
    		<label for="title">标题:</label>
    		<input type="text" class="form-control" id="title" name="title" value="${article.title}">
  		</div>
  		
	    <div class="form-group">
	  		<textarea class="form-control" rows="25" id="edit" name="content">${article.content}</textarea>
		</div>
  		<button type="submit" class="btn btn-default">完成</button>
	</form>
	
	
</body>
</html>