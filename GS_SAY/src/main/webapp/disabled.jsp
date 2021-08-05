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
            width: 100%; position: absolute; top: 25%; align-content: center;
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
            position: absolute; top: 26%; margin-left: 72.6%; margin-right: 0%;
        }
        #go{
        	position: absolute; top:26%; margin-left: 82%; text-align: center;
        }
        .go{
        	font-size: 50px; width: 45px; height: 15px; background-color:#FFDEAD; border-radius: 10%;
        }
        #menubutton{
            position: absolute; width:70%; top:125%; margin-left: 15%; text-align: center; 
        }
        .menubutton{
            font-size: 20px; width: 50px; height: 40px; color:#FF853F; background-color:#FFE4C4; border-radius: 10%; font-weight: bold; 
            border-color: #FF853F;
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
        #mainbutton{
            position: absolute; width:70%; top:125%; margin-left: 15%; text-align: center;
        }
        .mainbutton{
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
                <a href="target.jsp" style="color:#298AFF">대상별 제도</a>
                <a href="field.jsp">분야별 제도</a>
            </nav>
            <% } else { %>
            <nav id="menubox">
                <a href="login.jsp">로그인</a>
                <a href="target.jsp" style="color:#298AFF">대상별 제도</a>
                <a href="field.jsp">분야별 제도</a>
            </nav>
            <% } %>
        </div>
        <div id="tegbox1">
            <div id= "tegbox2">
                <table id="menutable" style="text-align: center;">
                    <tr style="background-color:#298AFF;">
                        <th id="menutable" style="width:14%; font-size: 90%; height: 50%; color: white;"><a href="target.jsp" class="menufont">대학생 / 대학원생</a></th>
                        <th id="menutable" style="width:14%; font-size: 90%; height: 50%; color: white;"><a href="soldier.jsp" class="menufont">군인</a></th>
                        <th id="menutable" style="width:14%; font-size: 90%; height: 50%; color: white;"><a href="workfind.jsp" class="menufont">구직 / 이직희망 / 실업자</a></th>
                        <th id="menutable" style="width:14%; font-size: 90%; height: 50%; color: white;"><a href="working.jsp" class="menufont">재직자</a></th>
                        <th id="menutable" style="width:14%; font-size: 90%; height: 50%; color: white;"><a href="selling.jsp" class="menufont">창업자 / 예비창업자</a></th>
                        <th id="menutable" style="width:14%; font-size: 90%; height: 50%; color: white; background-color: #FF853F;"><a href="disabled.jsp" class="menufont">장애인</a></th>
                        <th id="menutable" style="width:14%; font-size: 90%; height: 50%; color: white;"><a href="pregnant.jsp" class="menufont">임신부</a></th>
                    </tr>
                </table>
            </div>
        </div>
        <div id="tegbox3">
            <div id= "tegbox4">
                <div id = "endbar"> 
                     <div id = "start">
                        <span class="title"><strong>장애인 제도 안내</strong></span>
                    </div>
                </div> 
            </div>
        </div>
       <form action="">
        <div id = "field">
        	<table>
            	<tr>
            		<td>
            			<input type="radio" name="region" value="">지역 선택
            			<input type="radio" name="region" value="광주">광주 전체
            			<input type="radio" name="region" value="광주광산구">광주 광산구
            			<input type="radio" name="region" value="광주북구">광주 북구
            			<input type="radio" name="region" value="광주서구">광주 서구
            			<input type="radio" name="region" value="광주남구">광주 남구
            			<input type="radio" name="region" value="광주동구">광주 동구
            		</td>
            		<td></td>
            		<td></td>
            	</tr>
            </table>
            <option value="">지역 선택</option>
                <option value="광산구">광산구</option>
                <option value="남구">남구</option>
                <option value="동구">동구</option>
                <option value="북구">북구</option>
                <option value="서구">서구</option>
            <select name="field" style="width: 170px; height: 40px; font-size: 100%;">
                <option value="">분야 선택</option>
                <option value="지역">지역</option>
                <option value="교육">교육</option>
                <option value="고용/창업">고용 / 창업</option>
                <option value="주거">주거</option>
                <option value="건강">건강</option>
                <option value="기타">기타</option>
            </select>
        </div>
        <div id = "go">
			<input class="menubutton" type="button" value="GO" id="go">
        </div>
        </form>
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
                <th width="15%" style="font-size: 110%; height: 40px;">분야</th>
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
    <div id="mainbutton">
        <input class="mainbutton" type="button" value="<" id="bc">
        <input class="mainbutton" type="button" value="1" id="b1">
        <input class="mainbutton" type="button" value="2" id="b2">
        <input class="mainbutton" type="button" value="3" id="b3">
        <input class="mainbutton" type="button" value="4" id="b4">
        <input class="mainbutton" type="button" value="5" id="b5">
        <input class="mainbutton" type="button" value=">" id="fo">
   </div>
</body>
</html>