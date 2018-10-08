<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.bootcss.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>未读消息</title>
</head>
<style>
		  	body{font-size:13px;font-family:"Arial","Microsoft YaHei","黑体","宋体",sans-serif;}
	
	</style>
<body>
<div class="container">
	
    <h2 class="bg-info">AdminPage.</h2>
  
	  <label>Unread Comments：</label>
	  <table class="table table-bordered">
	    <thead>
	      <tr>
	        <th>Name</th>
	        <th>Email</th>
	        <th>Operate</th>
	      </tr>
	    </thead>
	    <tbody>
	        <c:forEach var="comment" items="${list}">
		      <tr>
		        <td>${comment.name}</td>
		        <td>${comment.email}</td>
		        <td>
		        	<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#c${comment.cid}" >查看内容</button>
  						<div id="c${comment.cid }" class="collapse" >
  							 ${comment.content}
  						</div>


                </td>
		      </tr>
		   </c:forEach>
	    </tbody>
	  </table>
	  <label>Unread Message：</label>
	  
	  <table class="table table-bordered">
	    <thead>
	      <tr>
	        <th>Name</th>
	        <th>Email</th>
	        <th>Content</th>
	        <th>Time</th>
	      </tr>
	    </thead>
	    <tbody>
	        <c:forEach var="message" items="${mlist}">
		      <tr>
		        <td>${message.name}</td>
		        <td>${message.email}</td>
		        <td>
		        	<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#m${message.id}" >查看内容</button>
  						<div id="m${message.id}" class="collapse" >
  							 ${message.content}
  						</div>


                </td>
                <td>${message.date}</td>
		      </tr>
		   </c:forEach>
	    </tbody>
	  </table>
	</div>

</body>
</html>