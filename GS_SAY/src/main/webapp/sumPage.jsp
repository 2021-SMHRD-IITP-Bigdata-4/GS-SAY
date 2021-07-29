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
    <link rel="stylesheet" href="css/sum.css">
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
        #tegbox1{
            width: 100%; position: absolute; top: 15%; align-content: center;
        }
        #tegbox2{
            width: 70%; margin-left: 15%; margin-right: 15%;  display: flex;
        }
        #teg{
            width: 100%;
        }
       
        
    </style>
</head>
<body>
    <div>
        <!--�޴���-->
        <div id = "menubar">
            <div id="rogobox">
                <a href="#">
                    <img id="rogo" src="img/rogo.bmp">
                </a>
            </div>
            <% listDTO login = (listDTO)session.getAttribute("login"); %>
            <% if (login != null) { %>
            <nav id="menubox">
                <a href="goLogin">�α׾ƿ�</a>
                <a href="myInfo.jsp">���� ��������</a>
                <a href="myPage.jsp">����������</a>
                <a href="target.jsp">��� ����</a>
                <a href="field.jsp">�оߺ� ����</a>
            </nav>
            <% } else { %>
            <nav id="menubox">
                <a href="login.jsp">�α���</a>
                <a href="target.jsp">��� ����</a>
                <a href="field.jsp">�оߺ� ����</a>
            </nav>
            <% } %>
        </div>
        <!--�±׹�-->
        <div id="tegbox1">
            <div id= "tegbox2">
                <img id = "teg" src="img/sumcheck.bmp">
            </div>
        </div>
        <div id="sumhead">
            <div id="checkimg">
                <img src="img/check.bmp">
            </div>
            <div id="headfont">
                <span>������ �� �� ������ ���� �����ҵ� Ȯ��</span>
            </div>
        </div>
        <div id="jungwibox">
            <img src="img/info.bmp">
        </div>
        <div id="onefm">
            <span>[ 1�� ���� ]</span>
        </div>
        <div id="oneimg">
            <img src="img/onepp.bmp">
        </div>
        <div id="twofm">
            <span>[ 2�� ���� ]</span>
        </div>
        <div id="twoimg">
            <img src="img/twopp.bmp">
        </div>
        <div id="threefm">
            <span>[ 3�� ���� ]</span>
        </div>
        <div id="threeimg">
            <img src="img/threepp.bmp">
        </div>
        <div id="fourfm">
            <span>[ 4�� ���� ]</span>
        </div>
        <div id="fourimg">
            <img src="img/fourpp.bmp">
        </div>
        <div id="fivefm">
            <span>[ 5�� ���� ]</span>
        </div>
        <div id="fiveimg">
            <img src="img/fivepp.bmp">
        </div>
        <div id="sixfm">
            <span>[ 6�� ���� ]</span>
        </div>
        <div id="siximg">
            <img src="img/sixpp.bmp">
        </div>
        <div id="sevenfm">
            <span>[ 7�� ���� ]</span>
        </div>
        <div id="sevenimg">
            <img src="img/sevenpp.bmp">
        </div>
        <div id="yo">
            <span>����</span>
        </div>
    </div>
</body>