<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.lang.*, java.util.*, java.sql.*, javax.sql.*, javax.naming.*,loldata.*" %>
<!DOCTYPE html>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@300;400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>
<style>
 html,body {
        width: 100%;
        height: 100%;
        position: relative;
        font-family: 'Gothic A1', sans-serif;
      }
      .content{
       width: 100%;
        height: 100%;
        position : relative;
      }
      .content > h1{
      position: absolute;
	  top: 50%; left: 50%;
	  transform: translate(-50%,-50%);
 
	  font-size: 20em;
	  font-weight: bold;
	  text-shadow: 4px 4px 4px rgba(0, 0, 0, 0.6);
 
	  }
      .container::after {
 		 width: 100%;
 		 height: 100%;
 		 content: "";
 		 background-image: url('./img/background1.jpg');background-size: cover; background-repeat: no-repeat;
 		 position: absolute;
 		 top : 0;
 		 left : 0;
 		 z-index:-1;
 		 opacity: 0.75;
		}
		 .containerbottom::after {
 		 width: 100%;
 		 height: 100%;
 		 content: "";
 		 background-image: url('./img/background1.jpg');background-size: cover; background-repeat: no-repeat;
 		 position: absolute;
 		 top : 0;
 		 left : 0;
 		 z-index:-1;
 		 opacity: 0.2;
		}
	nav ul li {
	  display: inline-block;
	}
 
	nav ul li a {
	  padding: 18px; 
	  text-transform:uppercase;
	  color: rgba(0, 0, 0, 1);
	  font-size: 18px;
	  text-decoration: none;
	  display: block;
	  color: white;
	  font-weight: 550;
	}
 
		nav ul li a:hover {
 		  box-shadow: 0 0 5px rgba(0, 0, 0, 0.3), inset 0 0 1px rgba(255, 255, 255, 0.3);
 		  color: rgba(0, 0, 0, 1);
 		  font-weight: 550;
		}
		
</style>
<head>
<meta charset="UTF-8">
<title>게임 안에서 발생한 상황 결과</title>
</head>
<body>
<%
	ArrayList<lol_data_dto> vec = new ArrayList<lol_data_dto>();
	vec = (ArrayList<lol_data_dto>)request.getAttribute("search");
	double count = 0;
%>

<nav class="navbar navbar-expand-sm fixed-top"">  
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" style="color:black"data-toggle="tooltip" data-placement="right" title="4조의 프로젝트 홈페이지" href="final.jsp">league of legends</a>
    </li>
  </ul>
</nav>
<div class = "content" style = "display:table; position : relative; z-index: 1;">
 	<div class="containerbottom" style="display:table-cell; margin: 200px; vertical-align:middle; color :black;"">    
 		<h1 style="font-size:80px; text-align:center; color: white; text-shadow: -3px 0 black, 0 3px black, 3px 0 black, 0 -3px black;">게임들</h1>
  		<p style="font-size:20px; text-align:center; color: white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;">체크한 상황과 비슷한 경기 결과 모음</p>      
  <table class="table" style="text-align:center;">
    <thead>
      <tr>
        <th>win</th>
        <th>firstBlood</th>
        <th>firstTower</th>
        <th>firstInhibitor</th>
        <th>firstBaron</th>
        <th>firstDragon</th>
      </tr>
    </thead>
    <tbody>
    <%
    	Iterator iterator = vec.iterator();
    	while (iterator.hasNext()) {
    		lol_data_dto dto = (lol_data_dto)iterator.next();
    %>
      <tr>
        <td><%=dto.Win %></td>
        <td><%=dto.First_Blood %></td>
        <td><%=dto.First_Tower %></td>
        <td><%=dto.First_Inhibitor %></td>
        <td><%=dto.First_Baron %></td>
        <td><%=dto.First_Dragon %></td>
      </tr>
      <% count += 1; } System.out.println(count);%>
    </tbody>   
  </table>
  		<p style="font-size:20px; text-align:center; color: white; text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;">
  		총 데이터 108,147 개중 <%=count %> 결과 : <%=Math.round(108147/count) %></p>
	
  </div>
</div>

 
</body>
</html>