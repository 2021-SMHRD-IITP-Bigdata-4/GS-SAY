<%@page import="org.apache.catalina.filters.ExpiresFilter.XServletOutputStream"%>
<%@page import="data.mainInfoDTO"%>
<%@page import="java.util.ArrayList"%>
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
            src: url(font/NanumBarunGothic.ttf);
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
        #localselect{
            margin-left: 15%; margin-right: 15%; display: flex; width: 70%; position: absolute; display: flex; top: 35%;
        }
        #localteg{
            width: 7%; font-family: menufont; font-size: 130%; margin-left: 1%; color:  #ED7D31; font-weight: bold;
        }
        #localchoice{
            width: 92%; font-family: menufont; font-size: 130%;
        }
        .localip{
            margin-right: 20px;
        }
        #categoryselect{
            margin-left: 15%; margin-right: 15%; display: flex; width: 70%; position: absolute; top: 40%;
        }
        #categoryteg{
            width: 7%; font-family: menufont; font-size: 130%; margin-left: 1%; color:  #ED7D31; font-weight: bold;
        }
        #categorychoice{
            width: 92%; font-family: menufont; font-size: 130%;
        }
        #peopleselect{
            margin-left: 15%; margin-right: 15%; display: flex; width: 70%; position: absolute; display: flex; top: 45%;
        }
        #peopleteg{
            width: 7%; font-family: menufont; font-size: 130%; margin-left: 1%; color:  #ED7D31; font-weight: bold;
        }
        #peoplechoice{
            width: 92%; font-family: menufont; font-size: 130%;
        }
        #tablebox{
            margin-left: 15%; margin-right: 15%;  width: 70%; position: absolute;  top: 61%; padding-bottom: 5%;
        }
        #table{
            width: 100%; border-bottom: black;
        }
        tbody td{
            font-size: 100%; height: 55px; font-weight: bold; text-align: center; font-family: menufont;
        }
        tbody a{
            text-decoration: none; color: black; font-family: menufont;
        }
        #go{
           position: absolute; top:51%; margin-left: 47%; text-align: center;
        }
        .go{
           font-size: 50px; width: 45px; height: 15px; background-color:#FFDEAD; border-radius: 10%;
        }
        #menubutton{
            position: absolute; width:70%; top:125%; margin-left: 15%; text-align: center; 
        }
        .menubutton{
            font-size: 20px; width: 130px; height: 50px; color:#EA5400; background-color:#FFE4C4; border-radius: 8%; font-weight: bold; 
            border-color: #FF853F; font-weight: bold;
        }
        #needbox{
       	 width: 100%; position: absolute; text-align: center; font-family: menufont;  font-weight: bold;
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

    <div>
        <!--메뉴바-->
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
        <!--태그바-->
        <div id="tegbox1">
            <div id= "tegbox2">
                <img id = "teg" src="img/search.bmp">
            </div>
        </div>
        <!--선택하기-->
        <form action="searchProgram">
        <div id = localselect>
            <div id="localteg">
                <span>지역</span>
            </div>
            <div id="localchoice">
                전국<input type="radio" name="local" class="localip" value="전국">
                광주<input type="radio" name="local" class="localip" value="광주">
                광주 북구<input type="radio" name="local" class="localip" value="광주북구">
                광주 남구<input type="radio" name="local" class="localip" value="광주남구">
                광주 서구<input type="radio" name="local" class="localip" value="광주서구">
                광주 동구<input type="radio" name="local" class="localip" value="광주동구">
                광주 광산구<input type="radio" name="local" class="localip" value="광주광산구">
            </div>
        </div>
        <div id = "categoryselect">
            <div id="categoryteg">
                <span>분류</span>
            </div>
            <div id="categorychoice">
                전체<input type="radio" name="category" class="localip" value="전체">
                교육<input type="radio" name="category" class="localip" value="교육">
                고용/창업<input type="radio" name="category" class="localip" value="창업">
                주거<input type="radio" name="category" class="localip" value="주거">
                건강<input type="radio" name="category" class="localip" value="건강">
                기타<input type="radio" name="category" class="localip" value="기타">
            </div>
        </div>
        <div id = "peopleselect">
            <div id="peopleteg">
                <span>대상</span>
            </div>
            <div id="peoplechoice">
                전체<input type="radio" name="people" class="localip" value="전체">
                대학생/대학원생<input type="radio" name="people" class="localip" value="대학생">
                군인<input type="radio" name="people" class="localip" value="군인">
                구직/이직희망자/실업자<input type="radio" name="people" class="localip" value="구직">
                재직자<input type="radio" name="people" class="localip" value="재직자">
                창업자/예비창업자<input type="radio" name="people" class="localip" value="창업자">
                장애인<input type="radio" name="people" class="localip" value="장애인">
                임신부<input type="radio" name="people" class="localip" value="임신부">
            </div>
        </div>
        <div id = "go">
            <input class="menubutton" type="submit" value="검색하기">
        </div>
        </form>
        <div id="tablebox">
            <% ArrayList<mainInfoDTO> searchDTO = (ArrayList<mainInfoDTO>)session.getAttribute("searchDTO");%>
                   <% if(searchDTO !=null){ %>
                   <% System.out.println("전송완료");%>
                   <% System.out.println(searchDTO.size());%>
                   
                    <table id="table">
                <thead>
                    <tr>
                        <th colspan="5" style="font-size: 130%; height: 40px; background-color: #9FCAFF; font-weight: bold; font-family: menufont; text-align: left;" >&nbsp&nbsp&nbsp&nbsp&nbsp나의 선택 : 
                        <%request.setCharacterEncoding("EUC-KR"); %>
                        <%String name = request.getParameter("name");%>
                        <%=name %>
                        </th>
                    </tr>
                    <tr style="background-color:#C1DDFF;">
                        <th width="7%" style="font-size: 110%; height: 40px;">No.</th>
                        <th width="14%" style="font-size: 110%; height: 40px;">시작날짜</th>
                        <th width="14%" style="font-size: 110%; height: 40px;">종료날짜</th>
                        <th width="60%" style="font-size: 110%; height: 40px;">제도명</th>
                        <th width="5%" style="font-size: 110%; height: 40px;">비고</th>
                    </tr>
                </thead>
                   <tbody>
                   
                   <% for(int i =0; i<searchDTO.size();i++){%>
                    <tr>
                      <td><%=i+1%></td><td><%= searchDTO.get(i).getStartDay().substring(0, 11)%></td>
                      <td><%=searchDTO.get(i).getEndDay().substring(0, 11)%></td>
                      <td><a id="info" href="<%=searchDTO.get(i).getInfoLink()%>" target="_blank"><%=searchDTO.get(i).getInfoName()%></a></td>
                      <td><a id="info" href="myInfoProgram?num=<%=+searchDTO.get(i).getInfoNum()%>">저장</a></td>
                    </tr>
                    
                    <%}%>
                    	</tbody>
            		</table>
                   <%}else{ %>
                    <div id = "needbox">지역 분류 대상을 선택하세요!</div>
                    <% }%>
        </div>
    </div>
</body>
</html>