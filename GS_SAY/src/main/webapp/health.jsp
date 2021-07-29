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
            float: left; line-height: 25px; text-align: center;
            width: 100%; height: 50%; margin-left: 15%; margin-right: 15%;  display: flex;
        }

        .new{
            color: white; border: white; background-color: #298AFF; width:50px; height: 30px; border-radius: 10%;
        }
        #tegbox3{
            width: 100%; position: absolute; top: 26%; align-content: center;
        }
        #tegbox4{
            width: 70%; margin-left: 15%; margin-right: 15%;  display: flex;
        }
        #start{
            float: right; color: black; padding: 0 15px; display: block; text-decoration: none; margin-top: 2%; 
            font-weight: bold; font-size: 160%;
        }
        #new{
            width: 17%; position: absolute; margin-top: 0.3%; margin-left: 13.5%; margin-right: 15%; width:18%; height: 15%; font-size: 60%;
        }
        #region{
            position: absolute; top: 26%; margin-left: 56%; margin-right: 0%;
        }
        #field{
            position: absolute; top: 26%; margin-left: 66%; margin-right: 0%;
        }
        #target{
            position: absolute; top: 26%; margin-left: 76%; margin-right: 0%;
        }
        #table{
            position: absolute; width:70%; top:36%; margin-left: 15%; margin-right: 16%;
            border-top: 1px solid #444444;
            border-collapse: collapse;
        }
        th,td{
            border-bottom: 1px solid #444444;
            padding:10px;
        }
        #button{
            position: absolute; width:70%; top:125%; margin-left: 15%; text-align: center;
        }
        .button{
            font-size: 20px; width: 50px; height: 50px; background-color:#C1DDFF; border-radius: 10%;
        }
        #bar{
            width:70%;
        }
        #menutable{
            width: 70%; border: none; border-collapse: collapse;
        }
        .menufont{
            color:white; text-decoration: none; 
        }
        #menutable:hover{
            background-color: #FF853F;
        }
    </style>
    <style type = "text/css">
    ul{
        list-style-type: none;
        margin: 0;
        width : 50%;
        overflow: hidden;
        padding: 0;
        background-color: #298AFF;
    }
    ul:after{
        content: '';
        display: block;
        clear: both;
    }
    li{
        float: left;
    }
    li a{
        display: block;
        color : white;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }
    li a:hover:not(.active){
        background-color: #298AFF;
        color: white;
    }
    .active{
        background-color: #298AFF;
    
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
                <a href="field.jsp" style="color:#298AFF">분야별 제도</a>
            </nav>
            <% } else { %>
            <nav id="menubox">
                <a href="login.jsp">로그인</a>
                <a href="target.jsp">대상별 제도</a>
                <a href="field.jsp" style="color:#298AFF">분야별 제도</a>
            </nav>
            <% } %>
        </div>
        <div id="tegbox1">
            <div id= "tegbox2">
                <table id="menutable" style="text-align: center;">
                    <tr style="background-color:#298AFF;">
                        <th id="menutable" style="width:20%; font-size: 100%; height: 50%; color: white;"><a href="field.jsp" class="menufont">지역</a></th>
                        <th id="menutable" style="width:20%; font-size: 100%; height: 50%; color: white;"><a href="education.jsp" class="menufont">교육</a></th>
                        <th id="menutable" style="width:20%; font-size: 100%; height: 50%; color: white;"><a href="employ.jsp" class="menufont">고용 / 창업</a></th>
                        <th id="menutable" style="width:20%; font-size: 100%; height: 50%; color: white;"><a href="live.jsp" class="menufont">주거</a></th>
                        <th id="menutable" style="width:20%; font-size: 100%; height: 50%; color: white; background-color: #FF853F;"><a href="health.jsp" class="menufont">건강 및 기타</a></th>
                    </tr>
                </table>
            </div>
        </div>
        <div id="tegbox3">
            <div id= "tegbox4">
                <div id = "endbar"> 
                     <div id = "start">
                        <span class="title"><strong>건강 및 기타 제도 안내</strong></span>
                    </div>
                </div> 
            </div>
        </div>
        <div id = "target">
            <select name="target" style="width: 170px; height: 40px; font-size: 100%;">
                <option value="">대상 선택</option>
                <option value="대학생/대학원생">대학생/대학원생</option>
                <option value="군인">군인</option>
                <option value="구직/이직희망/실업자">구직/이직희망/실업자</option>
                <option value="재직자">재직자</option>
                <option value="창업자/예비창업자">창업자 / 예비창업자</option>
                <option value="장애인">장애인</option>
                <option value="임신부">임신부</option>
            </select>
        </div>
    </div>
    <table id="table" style="text-align: center;">
        <thead>
            <tr>
                <th colspan="5" style="font-size: 130%; height: 40px; background-color: #9FCAFF; font-weight: bold;" >전 체</th>
            </tr>
            <tr style="background-color:#C1DDFF;">
                <th width="7%" style="font-size: 110%; height: 40px;">No.</th>
                <th width="14%" style="font-size: 110%; height: 40px;">시작날짜</th>
                <th width="14%" style="font-size: 110%; height: 40px;">종료날짜</th>
                <th width="15%" style="font-size: 110%; height: 40px;">대상</th>
                <th width="50%" style="font-size: 110%; height: 40px;">제도명</th>
            </tr>
        </thead>
           <tbody>
            <tr>
              <td style="font-size: 100%; height: 40px; font-weight: bold;">1</td><td></td><td></td><td></td><td></td>
            </tr>
            <tr>
                <td style="font-size: 100%; height: 40px; font-weight: bold;">2</td><td></td><td></td><td></td><td></td>
            </tr>
            <tr>
                <td style="font-size: 100%; height: 40px; font-weight: bold;">3</td><td></td><td></td><td></td><td></td>
            </tr>
            <tr>
                <td style="font-size: 100%; height: 40px; font-weight: bold;">4</td><td></td><td></td><td></td><td></td>
            </tr>
            <tr>
                <td style="font-size: 100%; height: 40px; font-weight: bold;">5</td><td></td><td></td><td></td><td></td>
            </tr>
            <tr>
                <td style="font-size: 100%; height: 40px; font-weight: bold;">6</td><td></td><td></td><td></td><td></td>
            </tr>
            <tr>
                <td style="font-size: 100%; height: 40px; font-weight: bold;">7</td><td></td><td></td><td></td><td></td>
            </tr>
            <tr>
                <td style="font-size: 100%; height: 40px; font-weight: bold;">8</td><td></td><td></td><td></td><td></td>
            </tr>
            <tr>
                <td style="font-size: 100%; height: 40px; font-weight: bold;">9</td><td></td><td></td><td></td><td></td>
            </tr>
            <tr>
                <td style="font-size: 100%; height: 40px; font-weight: bold;">10</td><td></td><td></td><td></td><td></td>
            </tr>
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
   </div>
</body>
</html>