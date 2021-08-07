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
    <link rel="stylesheet" href="css/myinfo.css">
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height:110%; width:100%;
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
        #mytegbox1{
            width: 100%; position: absolute; top: 15%; align-content: center;
        }
        #mytegbox2{
            width: 70%; margin-left: 15%; margin-right: 15%;  display: flex;
        }
        #myteg{
            width: 100%;
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
    <!--메뉴바-->
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
    <!--태그바-->
    <div id="mytegbox1">
        <div id= "mytegbox2">
            <img id = "myteg" src="img/scrapteg.bmp">
        </div>
    </div>
    <!--표-->
    <div id="tablebox">
        <table id="table" style="text-align: center;">
            <tr id="titled">
                <td class="t1"><span>순번</span></td>
                <td class="t2"><span>제도 종료일</span></td>
                <td class="t3"><span>제도명</span></td>
            </tr>
            <tr>
                <td><span>1</span></td>
                <td><span>07.15</span><span class="dday">(D-8)</span></td>
                <td><span>2021년 2학기 농촌희망재단 장학금</span></td>
            </tr>
            <tr>
                <td><span>2</span></td>
                <td><span></span><span class="dday"></span></td>
                <td><span></span></td>
            </tr>
            <tr>
                <td><span>3</span></td>
                <td><span></span><span class="dday"></span></td>
                <td><span></span></td>
            </tr>
            <tr>
                <td><span>4</span></td>
                <td><span></span><span class="dday"></span></td>
                <td><span></span></td>
            </tr>
            <tr>
                <td><span>5</span></td>
                <td><span></span><span class="dday"></span></td>
                <td><span></span></td>
            </tr>
            <tr>
                <td><span>6</span></td>
                <td><span></span><span class="dday"></span></td>
                <td><span></span></td>
            </tr>
            <tr>
                <td><span>7</span></td>
                <td><span></span><span class="dday"></span></td>
                <td><span></span></td>
            </tr>
            <tr>
                <td><span>8</span></td>
                <td><span></span><span class="dday"></span></td>
                <td><span></span></td>
            </tr>
            <tr>
                <td><span>9</span></td>
                <td><span></span><span class="dday"></span></td>
                <td><span></span></td>
            </tr>
            <tr>
                <td><span>10</span></td>
                <td><span></span><span class="dday"></span></td>
                <td><span></span></td>
            </tr>
        </table>
    </div>
</body>
</html>