<%@page import="data.listDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>find</title>
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
        #title{
            left: 10%; position: absolute; top:45%; margin-left: 15%;
            height: 1.5%; width: 50%; align-content: center;
        }
        #findDiv{
            left: 50%;position: absolute; top:60%; margin-left: -10.5%;
            height: 20%; width:26%
        }
        #find{
            font-size: 18px; width: 120px; background-color: white;
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
        strong {
            font-size: 17px;
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
                <a href="target.jsp">대상별 제도</a>
                <a href="field.jsp">분야별 제도</a>
            </nav>
            <% } else { %>
            <nav id="menubox">
                <a href="login.jsp" style="color:#298AFF">로그인</a>
                <a href="target.jsp">대상별 제도</a>
                <a href="field.jsp">분야별 제도</a>
            </nav>
            <% } %>
        </div>
        <div id="tegbox1">
            <div id= "tegbox2">
                <img id = "teg" src="img/tege.bmp">
            </div>
        </div>
    </div>
        <!--ID_PW찾기-->
    <div id="title">
        <h1>ID, PW 찾기</h1>
        <strong>&nbsp : 가입할때 입력하신 전화번호를 입력해주세요!</strong>
    </div>
    <div id="findDiv">
        <form action="findProgram">
            <table>
                <tr align="center">
                <th>
                전화번호 &nbsp
                </th>
                <td>
                <input id="inputBox" type="text" name="phone" placeholder="하이픈(-)을 포함하여 입력하세요">
                </td>
                </tr>
        
                <tr align="center">
                <td colspan="2"><br>
                <input type="submit" value="찾아보기" id="find">
                </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>