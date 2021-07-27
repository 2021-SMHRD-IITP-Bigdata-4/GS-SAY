<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>join</title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height:107%; width:100%;
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
        #joinTitle{
            left: 10%; position: absolute; top:45%; margin-left: 15%;
            height: 0.5%; width: 100%; align-content: center; 
        }
        #joinDiv{
            left: 50%;position: absolute; top:55%; margin-left: -8%;
            height: 20%; width:26%;
            font-size: 20px;
        }
        .joinBtn{
            font-size: 20px; background-color: white; width:50%;
            font-weight: bold
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
            <% String name = (String)session.getAttribute("name"); %>
            <% if (name != null) { %>
            <nav id="menubox">
                <a href="goLogin">로그아웃</a>
                <a href="#">나의 지원제도</a>
                <a href="#">마이페이지</a>
                <a href="#">대상별 제도</a>
                <a href="#">분야별 제도</a>
            </nav>
            <% } else { %>
            <nav id="menubox">
                <a href="login.jsp">로그인</a>
                <a href="#">대상별 제도</a>
                <a href="#">분야별 제도</a>
            </nav>
            <% } %>
        </div>
        <div id="tegbox1">
            <div id= "tegbox2">
                <img id = "teg" src="img/tege.bmp">
            </div>
        </div>
    </div>
    <!--회원가입-->
    <div id = "joinTitle">
        <h1 class="title">회원가입</h1>
    </div>
    <div id = "joinDiv"> <!--hot-->
        <form action="joinProgram" method = "post">
            <table>
                <tr>
                    <th align = "center"> &nbsp&nbsp&nbsp 아이디 &nbsp&nbsp&nbsp<br><br>
                    </td>
                    <td><input id="inputBox" type="text" name="id" placeholder = "ID를 입력하세요"><br><br>
                    </td>
                </tr>
                <tr>
                    <th align = "center">비밀번호<br><br>
                    </td>
                    <td><input id="inputBox" type="text" name="pw" placeholder = "비밀번호를 입력하세요"><br><br>
                    </td>
                </tr>
                <tr>
                    <th align = "center">이름<br><br>
                    </td>
                    <td><input id="inputBox" type="text" name="name" placeholder = "이름을 입력하세요"><br><br>
                    </td>
                </tr>
                <tr>
                    <th align = "center">전화번호<br><br>
                    </td>
                    <td><input id="inputBox" type="text" name="tel" placeholder="하이픈(-)을 포함하여 입력하세요"><br><br>
                    </td>
                </tr>			
                <tr align = "center">
                    <td colspan = "2"><br><input class="joinBtn" type="submit" value="회원가입">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>