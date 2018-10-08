<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE>
<html>
<head>
 <script src="http://localhost:8080/A_2016_final/static/js/Chart.bundle.js"></script>
  <script src="http://localhost:8080/A_2016_final/static/js/utils.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome-Boss</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.bootcss.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>	
</head>
	<style>
		  	body{font-size:13px;font-family:"Arial","Microsoft YaHei","黑体","宋体",sans-serif;}
	 
    </style>
<body>
	<div class="container">
	
    <h2 class="bg-info">AdminPage.</h2>
  
	 <a href="message"><button type="button" class="btn btn-primary">Unread <span class="badge">Comment:${ccount} || Message:${mcount}</span></button></a>

	  <table class="table table-bordered">
	    <thead>
	      <tr>
	        <th>Title</th>
	        <th>Date</th>
	        <th>Clicks</th>
	        <th>Comments</th>
	        <th>Operate</th>
	      </tr>
	    </thead>
	    <tbody>
	        <c:forEach var="article" items="${list}">
		      <tr>
		        <td><a href="http://localhost:8080/A_2016_final/Article/${article.id}">${article.title}</a></td>
		        <td>${article.date }</td>
		        <td>${article.click }</td>
		        <td>${article.cNum}</td>
		        <td><a>删除</a>&nbsp&nbsp
		        	<a href="edit?id=${article.id}">修改</a></td>
		      </tr>
		   </c:forEach>
	    </tbody>
	  </table>
	</div>



    
    
    
     <div style="width: 75%">
        <canvas id="canvas"></canvas>
    </div>
    <script>
        var color = Chart.helpers.color;
        var barChartData = {
            labels: ["Resource", "Algorithm", "MyLife", "Development"],
            datasets: [{
                type: 'bar',
                label: 'VIEWS',
                backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                borderColor: window.chartColors.red,
                data: [
                	${cateNum[0]},
                	${cateNum[1]},
                	${cateNum[3]},
                	${cateNum[2]}
                ]
            }, {
                type: 'line',
                label: 'Comments',
                backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                borderColor: window.chartColors.blue,
                data: [
                	${clickNum[0]},
                	${clickNum[1]},
                	${clickNum[3]},
                	${clickNum[2]}
                ]
            }]
        };

        // Define a plugin to provide data labels
        Chart.plugins.register({
            afterDatasetsDraw: function(chartInstance, easing) {
                // To only draw at the end of animation, check for easing === 1
                var ctx = chartInstance.chart.ctx;

                chartInstance.data.datasets.forEach(function (dataset, i) {
                    var meta = chartInstance.getDatasetMeta(i);
                    if (!meta.hidden) {
                        meta.data.forEach(function(element, index) {
                            // Draw the text in black, with the specified font
                            ctx.fillStyle = 'rgb(0, 0, 0)';

                            var fontSize = 16;
                            var fontStyle = 'normal';
                            var fontFamily = 'Helvetica Neue';
                            ctx.font = Chart.helpers.fontString(fontSize, fontStyle, fontFamily);

                            // Just naively convert to string for now
                            var dataString = dataset.data[index].toString();

                            // Make sure alignment settings are correct
                            ctx.textAlign = 'center';
                            ctx.textBaseline = 'middle';

                            var padding = 5;
                            var position = element.tooltipPosition();
                            ctx.fillText(dataString, position.x, position.y - (fontSize / 2) - padding);
                        });
                    }
                });
            }
        });

        window.onload = function() {
            var ctx = document.getElementById("canvas").getContext("2d");
            window.myBar = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        text: 'comments and views dateChart'
                    },
                }
            });
        };

    
    </script>
</body>
</html>