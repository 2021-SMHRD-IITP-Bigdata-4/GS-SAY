<%@page import="data.listDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <style>
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
        #loginTitle{
            left: 10%; position: absolute; top:45%; margin-left: 15%;
            height: 1.5%; width: 50%; align-content: center;
        }
        #loginDiv{
            left: 50%;position: absolute; top:60%; margin-left: -10.5%;
            height: 20%; width:26%
        }
        #login{
            font-size: 18px; height: 60px; background-color: white;
            font-weight: bold;
        }
        tr > th{
            font-size: 25px;
        }
        td > a {
            font-size: 15px;
        }
        #inputBox {
            font-size: 18px;
            
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
                <a href="login.jsp">로그인/회원가입</a>
                <a href="search.jsp">지원제도 검색</a>
            </nav>
            <% } %>
        </div>
        <div id="tegbox1">
            <div id= "tegbox2">
                <img id = "teg" src="img/tege.bmp">
            </div>
        </div>
    </div>
        <!--로그인-->
    <div id = "loginTitle">
        <h1 class="title">로그인</h1>
    </div>
    <div id = "loginDiv">
        <form action="loginProgram">
            <table id="loginbox">
                <tr>
                    <th align="center"> &nbsp ID &nbsp</th>
                    <td><input id="inputBox" type="text" name="id" placeholder="E-MAIL을 입력하세요">
                    </td>
                    <td rowspan=2><input type="submit" value="로그인" id="login">
                    </td>
                </tr>
                <tr>
                    <th align="center"> &nbsp PW &nbsp</th>
                    <td><input id="inputBox" type="password" name="pw" placeholder="PW를 입력하세요">
                    </td>
                </tr>
                <tr>
                    <td colspan=2>
                        &nbsp&nbsp&nbsp <a href="find.jsp">ID/PW찾기</a>
                        &nbsp&nbsp <a href="join.jsp">회원가입</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>