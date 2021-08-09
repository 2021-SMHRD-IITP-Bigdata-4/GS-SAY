<%@page import="data.mainInfoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.maininfoDAO"%>
<%@page import="data.listDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height:120%; width:100%;
            overflow:auto;
        }
        #menubar{
            margin-left: 15%; margin-right: 15%; display: flex; width: 70%; margin-top: 2%; position: absolute;top: 0%;
        }

        #rogobox{
            margin: 0; width: 25%;
        }

        #menubox{
            margin: 0; width: 100%; float: right;
        }

        #rogo{
            width: 100%; height: 100%;
        }

        #menubox a{
            float: right; color: black; padding: 0 15px; display: block; text-decoration: none; margin-top: 2%; 
            font-weight: bold; font-size: 120%;
        }
        @font-face {
            font-family: menufont;
            src: url(/font/NanumBarunGothic.ttf);
        }
        #tegbox1{
            width: 100%; position: absolute; top: 15%; align-content: center;
        }
        #tegbox2{
            width: 70%; margin-left: 15%; margin-right: 15%;  display: flex;
        }
        #teg{
            width: 100%;
        }
        .hotnew{
            color: white; border: white; background-color: lightsalmon; width:50px; height: 30px; border-radius: 10%;
        }
        #tegbox3{
            width: 100%; position: absolute; top: 46%; align-content: center;
        }
        #tegbox4{
            width: 70%; margin-left: 15%; margin-right: 15%;  display: flex;
        }
        #end{
            float: right; color: black; padding: 0 15px; display: block; text-decoration: none; margin-top: 2%; 
            font-weight: bold; font-size: 160%;
        }
        #hot{
             width: 17%; position: absolute; margin-top: 0.5%; margin-left: 16.5%; margin-right: 15%; width:18%; height: 15%; font-size: 60%;
        }
        #field{
            position: absolute; top: 50%; margin-left: 66%; margin-right: 0%;
        }
        #target{
            position: absolute; top: 50%; margin-left: 76%; margin-right: 0%;
        }
        #table{
        	width:100%;
            border-top: 1px solid #444444;
            border-collapse: collapse;
        }
        th,td{
            border-bottom: 1px solid #444444;
            padding:10px;
        }
        #info:hover {
        	text-decoration: underline;
        }
        #info{
        	text-decoration: none; font-weight: bold; color: black; 
        }
        #tablebox{
        position: absolute; width:70%; top:54%; margin-left: 15%; margin-right: 16%; padding-bottom: 7.5%;
        }
    </style>
     
</head>
<body>
    <div>
        <div id = "menubar">
            <div id="rogobox">
                <a href="mainHome.jsp">
                    <img id="rogo" src="img/rogo.bmp">
                </a>
            </div>
            <% listDTO login = (listDTO)session.getAttribute("login"); %>
            <% if (login != null) { %>
            <nav id="menubox">
                <a href="goLogin">로그아웃</a>
                <a href="myInfo.jsp">나의 지원제도</a>
                <a href="myPage.jsp">마이페이지</a>
                <a href="search.jsp">지원제도 검색</a>
            </nav>
            <% } else { %>
            <nav id="menubox">
                <a href="login.jsp">로그인</a>
                <a href="search.jsp">지원제도 검색</a>
            </nav>
            <% } %>
        </div>
        
        <div id="tegbox1">
            <div id= "tegbox2">
                <img id = "teg" src="img/tege.bmp">
            </div>
        </div>
        <div id="tegbox3">
            <div id= "tegbox4">
                <div id = "endbar"> 
                     <div id = "end">
                        <span class="title"><strong>종료가 얼마 안남았어요!</strong></span>
                    </div>
                    <div id = "hot">
                        <input class=hotnew type="button" value="HOT">
                    </div>
                </div> 
            </div>
        </div>
    </div>
    <div id="tablebox">
    <table id="table" style="text-align: center;">
        <thead>
            <tr>
                <th colspan="5" style="font-size: 130%; height: 40px; background-color: #9FCAFF; font-weight: bold;" >전 체</th>
            </tr>
            <tr style="background-color:#C1DDFF;">
                <th width="7%" style="font-size: 110%; height: 40px;">No.</th>
                <th width="14%" style="font-size: 110%; height: 40px;">시작일</th>
                <th width="14%" style="font-size: 110%; height: 40px;">종료일</th>
                <th width="65%" style="font-size: 110%; height: 40px;">대상</th>
            </tr>
        </thead>
          <tbody>
            <% maininfoDAO dao = new maininfoDAO(); %>
          	<% ArrayList<mainInfoDTO> endDateMore = dao.endinfoMore(); %>
     	    <% for (int i = 0; i < endDateMore.size(); i++) {%>
            <tr>
              <td style="font-size: 100%; height: 40px; font-weight: bold;"><%= i+1 %></td>
              <td><%= endDateMore.get(i).getStartDay().substring(0, 11) %></td>
              <td><%= endDateMore.get(i).getEndDay().substring(0, 11) %></td>
              <td><a id="info" href="<%= endDateMore.get(i).getInfoLink() %>"><%= endDateMore.get(i).getInfoName() %></a></td>
            </tr>
    	     <% } %>  
          </tbody>
    </table>
    </div>
</body>
</html>