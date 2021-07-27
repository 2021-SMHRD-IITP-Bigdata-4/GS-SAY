<%@page import="data.listDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>findSuccess</title>
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
                <a href="goLogin">�α׾ƿ�</a>
                <a href="#">���� ��������</a>
                <a href="myPage.jsp">����������</a>
                <a href="#">��� ����</a>
                <a href="#">�оߺ� ����</a>
            </nav>
            <% } else { %>
            <nav id="menubox">
                <a href="login.jsp">�α���</a>
                <a href="#">��� ����</a>
                <a href="#">�оߺ� ����</a>
            </nav>
            <% } %>
        </div>
        <div id="tegbox1">
            <div id= "tegbox2">
                <img id = "teg" src="img/tege.bmp">
            </div>
        </div>
    </div>
        <!--ID_PWã��-->
    <div id="title">
        <h1>ID, PW ã��</h1>
    </div>
    <div id="findDiv">
        <%
	listDTO findDto = (listDTO)session.getAttribute("findDto");
	%>
		
	<%if (findDto != null) {%>
		<p>ID�� <%=findDto.getId() %>, PW�� <%=findDto.getPw() %>�Դϴ�.</p>
		<br>
		<a href="goLogin">����ȭ������</a>
	<%} else {%>
		<p>������ �ٽ� Ȯ�����ּ���.</p>
		<a href="find.jsp">�ٽ�ã��</a>
		<a href="goLogin">����ȭ������</a>
		<%} %> 
    </div>
</body>
</html>