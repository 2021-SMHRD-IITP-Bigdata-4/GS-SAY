<%@page import="data.myScrapDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="data.myScrapDAO"%>
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
    <!--?޴???-->
    <div id = "menubar">
        <div id="rogobox">
            <a href="mainHome.jsp">
                <img id="rogo" src="img/rogo.bmp">
            </a>
        </div>
        <% listDTO login = (listDTO)session.getAttribute("login"); %>
            <% if (login != null) { %>
            <nav id="menubox">
                <a href="goLogin">?α׾ƿ?</a>
                <a href="myInfo.jsp">???? ????????</a>
                <a href="myPage.jsp">??????????</a>
                <a href="search.jsp">???????? ?˻?</a>
            </nav>
            <% } else { %>
            <nav id="menubox">
                <a href="login.jsp">?α???/ȸ??????</a>
                <a href="search.jsp">???????? ?˻?</a>
            </nav>
            <% } %>
    </div>
    <!--?±׹?-->
    <div id="mytegbox1">
        <div id= "mytegbox2">
            <img id = "myteg" src="img/scrapteg.bmp">
        </div>
    </div>
    <!--ǥ-->
    <div id="tablebox">
        <table id="table" style="text-align: center;">
            <tr id="titled">
                <td class="t1"><span>????</span></td>
                <td class="t2"><span>???? ??????</span></td>
                <td class="t3"><span>??????</span></td>
            </tr>
            <% myScrapDAO dao = new myScrapDAO(); %>
            <% ArrayList<myScrapDTO> scrapView = dao.scrapView(login); %>
            <% for (int i = 0; i < scrapView.size(); i++) {%>
            <tr>
                <td><span><%= i+1 %></span></td>
                <td><span><%= scrapView.get(i).getEndDay().substring(0, 11) %></span></td>
                <td><span><a id="info" href="<%= scrapView.get(i).getInfoLink() %>" target="_blank"><%= scrapView.get(i).getInfoName() %></a></span></td>
            </tr>
            <% } %>
        </table>
    </div>
</body>
</html>