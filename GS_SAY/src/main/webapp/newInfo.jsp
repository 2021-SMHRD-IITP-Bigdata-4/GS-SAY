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
        .new{
            color: white; border: white; background-color: #298AFF; width:50px; height: 30px; border-radius: 10%;
        } 
        #tegbox3{
            width: 100%; position: absolute; top: 46%; align-content: center;
        }
        #tegbox4{
            width: 70%; margin-left: 15%; margin-right: 15%;  display: flex;
        }
        #start{
            float: right; color: black; padding: 0 15px; display: block; text-decoration: none; margin-top: 2%; 
            font-weight: bold; font-size: 160%;
        }
        #new{
            width: 17%; position: absolute; margin-top: 0.4%; margin-left: 13%; margin-right: 15%; width:18%; height: 15%; font-size: 60%;
        }
        #field{
            position: absolute; top: 50%; margin-left: 66%; margin-right: 0%;
        }
        #target{
            position: absolute; top: 50%; margin-left: 76%; margin-right: 0%;
        }
        #table{
            position: absolute; width:70%; top:54%; margin-left: 15%; margin-right: 16%;
            border-top: 1px solid #444444;
            border-collapse: collapse;
        }
        th,td{
            border-bottom: 1px solid #444444;
            padding:10px;
        }
        #button{
            position: absolute; width:70%; top:178%; margin-left: 15%; text-align: center;
        }
        .button{
            font-size: 20px; width: 50px; height: 50px; background-color:#C1DDFF; border-radius: 10%;
        }
        #info:hover {
        	text-decoration: underline;
        }
        #info{
        	text-decoration: none; font-weight: bold; color: black; 
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
                     <div id = "start">
                        <span class="title"><strong>새로 올라온 제도에요!</strong></span>
                    </div>
                    <div id = "new">
                        <input class=new type="button" value="NEW">
                    </div>
                </div> 
            </div>
        </div>
        
    </div>
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
          <% ArrayList<mainInfoDTO> startDateMore = dao.startinfoMore(); %>
          <% for (int i = 0; i < startDateMore.size(); i++) {%>
            <tr>
              <td style="font-size: 100%; height: 40px; font-weight: bold;"><%= i+1 %></td>
              <td><%= startDateMore.get(i).getStartDay() %></td>
              <td><%= startDateMore.get(i).getEndDay() %></td>
              <td><a id="info" href="<%= startDateMore.get(i).getInfoLink() %>"><%= startDateMore.get(i).getInfoName() %></a></td>
            </tr>
          <% } %>  
          </tbody>
    </table>
    <div id="button">
        <input class="button" type="button" value="<" id="bc">
        <input class="button" type="button" value="1" id="b1">
        <input class="button" type="button" value="2" id="b2">
        <input class="button" type="button" value="3" id="b3">
        <input class="button" type="button" value="4" id="b4">
        <input class="button" type="button" value="5" id="b5">
        <input class="button" type="button" value=">" id="fo">
        <br><br><br><br><br><br><br><br><br>
   </div>
</body>
</html>