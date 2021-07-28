<%@page import="data.listDAO"%>
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
    <link rel="stylesheet" href="css/mypage.css">
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
    </style> 
</head>
<body>
<% 
listDTO login = (listDTO)session.getAttribute("login");
%>
    <div>
        <!--�޴���-->
        <div id = "menubar">
            <div id="rogobox">
                <a href="mainHome.jsp">
                    <img id="rogo" src="img/rogo.bmp">
                </a>
            </div>
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
        <div id="mytegbox1">
            <div id= "mytegbox2">
                <img id = "myteg" src="img/myteg.bmp">
            </div>
        </div>
        <!--�ȳ��ϼ��� ������-->
        <div id="hibox">
            <h1>
                �ȳ��ϼ���, <%= login.getName() %>��!
            </h1>
            <hr color="#298AFF" size="7%" width="100%" align="left">
        </div>
        <div id="myinfo">
            <h1>���� ���� ����</h1>
        </div>
        <div id="myinfotable">
            <table id="mytable">
                <tr>
                    <td class="fo"><span>����</span></td>
                    <td><span><%= login.getName() %></span></td>
                </tr>
                <tr>
                    <td class="fo"><span>��ȭ��ȣ</span></td>
                    <td><span><%= login.getTel() %></span></td>
                </tr>
                <tr>
                    <td class="fo"><span>���̵�</span></td>
                    <td><span><%= login.getId() %></span></td>
                </tr>
                <tr>
                    <td class="fo"><span>��й�ȣ</span></td>
                    <td><span><%= login.getPw() %></span></td>
                </tr>
            </table>
        </div>





    </div>
</body>