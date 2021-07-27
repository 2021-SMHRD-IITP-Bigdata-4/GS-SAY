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
            width: 70%; margin-left: 15%; margin-right: 15%;  display: flex;
        }
        #teg{
            width: 100%;
        }
        .new{
            color: white; border: white; background-color: #298AFF; width:50px; height: 30px; border-radius: 10%;
        } 
        #tegbox3{
            width: 100%; position: absolute; top: 46%; align-content: center;
        }
        #tegbox4{
            width: 70%; margin-left: 15%; margin-right: 15%;  display: flex;
        }
        #start{
            float: right; color: black; padding: 0 15px; display: block; text-decoration: none; margin-top: 2%; 
            font-weight: bold; font-size: 160%;
        }
        #new{
            width: 17%; position: absolute; margin-top: 0.5%; margin-left: 16%; margin-right: 15%; width:18%; height: 15%; font-size: 60%;
        }
        #field{
            position: absolute; top: 50%; margin-left: 66%; margin-right: 0%;
        }
        #target{
            position: absolute; top: 50%; margin-left: 76%; margin-right: 0%;
        }
        #table{
            position: absolute; width:70%; top:58%; margin-left: 15%; margin-right: 16%;
            border-top: 1px solid #444444;
            border-collapse: collapse;
        }
        th,td{
            border-bottom: 1px solid #444444;
            padding:10px;
        }
        #button{
            position: absolute; width:70%; top:135%; margin-left: 15%; text-align: center;
        }
        .button{
            font-size: 20px; width: 50px; height: 50px; background-color:#C1DDFF; border-radius: 10%;
        }

    </style>
     
</head>
<body>
    <div>
        <div id = "menubar">
            <div id="rogobox">
                <a href="#">
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
        <div id="tegbox3">
            <div id= "tegbox4">
                <div id = "endbar"> 
                     <div id = "start">
                        <span class="title"><strong>새로 올라온 제도에요!</strong></span>
                    </div>
                    <div id = "new">
                        <input class=new type="button" value="NEW">
                    </div>
                </div> 
            </div>
        </div>
        <div id = "field">
            <select name="field" style="width: 170px; height: 40px; font-size: 100%;">
                <option value="">분야 선택</option>
                <option value="지역">지역</option>
                <option value="교육">교육</option>
                <option value="고용/창업">고용 / 창업</option>
                <option value="주거">주거</option>
                <option value="건강및기타">건강 및 기타</option>
            </select>
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
                <th width="5%" style="font-size: 110%; height: 40px;">No.</th><th width="20%" style="font-size: 110%; height: 40px;">시작일
                </th><th width="20%" style="font-size: 110%; height: 40px;">분야</th><th width="25%" style="font-size: 110%; height: 40px;">대상
                </th><th width="30%" style="font-size: 110%; height: 40px;">제도명</th>
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