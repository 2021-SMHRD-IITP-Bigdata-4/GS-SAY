<%@page import="data.mainInfoDTO"%>
<%@page import="data.endInfoDTO"%>
<%@page import="data.maininfoDAO"%>
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
    <link rel="stylesheet" href="css/mainHomeCSS.css">
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
            width: 100%; position: absolute; top: 17%; align-content: center;
        }
        #tegbox2{
            width: 70%; margin-left: 15%; margin-right: 15%;  display: flex;
        }
        #teg{
            width: 100%;
        }
       	#jung3{
    		width: 25%; padding-top: 4%; 
		}
		#jung3btn:hover{
			border-color: #B44000; border-width: 2.5px; border-style: solid;
		}
		#jung3btn{
    		background-color: #FFE4C4; padding: 0.5%; border-radius: 5%;
   		 	width: 60%; text-align: center; height: 40%; margin-left: 115px;
		}
		#jung3 a{
    		text-decoration: none; display: block; padding-top: 5%;
		}
		#jung3 span{
   			color:#EA5400; font-size: 150%; 
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
                <img id = "teg" src="img/tege.bmp">
            </div>
        </div>
        <!--중위소득계산기-->
        <div id="jungwibox">
            <div id="jung1">
                <img src="img/sum.bmp">
            </div>
            <div id="jung2">
                <span id="jung2stop">[잠깐!]</span>
                <span id="jung2benefit">중위소득</span>
                <span id="jung2check">확인하고 갈까?</span>
            </div>
            <div id="jung3">
                <div id="jung3btn">
                    <a href="sumPage.jsp"><span style=" font-weight: bold; border-radius: 8%; border-color: #FF853F;" id="jung3submit">확인하러 가기</span></a>
                </div>
            </div>
        </div>
        <!-- 소개문 -->
        <div id="tegbox3">
            <div id= "tegbox4">
                <img id = "teg" src="img/mainexplain.bmp">
            </div>
        </div>
        <!--종료되는제도 문구-->
        <div id ="endfontbox">
            <div id="efb1">
                <div id="ebtn"><span>HOT</span></div>
            </div>
            <div id="efb2">
                <span>종료가 얼마 안남았어요!</span>
            </div>
            <div id="efb3">
                <a style="text-decoration: none; color: #848484; font-weight: bolder;" href="endInfo.jsp">더보기</a>
            </div>
        </div>
        <!--종료제도 슬라이드-->
        <div id="endslidebox">
           
            <div id="esb">
            	<% maininfoDAO dao = new maininfoDAO(); %>
            	<% ArrayList<mainInfoDTO> endDate = dao.endinfo(); %>
            	<% for (int i = 0; i < endDate.size(); i++) {%>
                    <div class="slidediv">
                    	<% if ((endDate.get(i).getCode()-1)% 6 == 0) { %>
						<span class="people">[전체]</span>
						<% } else if((endDate.get(i).getCode()-1)% 6 == 1) { %>
						<span class="people">[교육]</span>
						<% } else if((endDate.get(i).getCode()-1)% 6 == 2) { %>
						<span class="people">[창업/고용]</span>
						<% } else if((endDate.get(i).getCode()-1)% 6 == 3) { %>
						<span class="people">[주거]</span>
						<% } else if((endDate.get(i).getCode()-1)% 6 == 4) { %>
						<span class="people">[건강]</span>
						<% } else if((endDate.get(i).getCode()-1)% 6 == 5 ) { %>
						<span class="people">[기타]</span>
						<% } %>
						<br>
                    	<% if (((endDate.get(i).getCode()-1)/6)%8 == 0) { %>
						<span class="people">[전체]</span>
						<% } else if(((endDate.get(i).getCode()-1)/6)%8 == 1) { %>
						<span class="people">[대학생/대학원생]</span>
						<% } else if(((endDate.get(i).getCode()-1)/6)%8 == 2) { %>
						<span class="people">[군인]</span>
						<% } else if(((endDate.get(i).getCode()-1)/6)%8 == 3) { %>
						<span class="people">[구직/이직자/실업자]</span>
						<% } else if(((endDate.get(i).getCode()-1)/6)%8 == 4) { %>
						<span class="people">[재직자]</span>
						<% } else if(((endDate.get(i).getCode()-1)/6)%8 == 5) { %>
						<span class="people">[창업자/예비창업자]</span>
						<% } else if(((endDate.get(i).getCode()-1)/6)%8 == 6) { %>
						<span class="people">[장애인]</span>
						<% } else if(((endDate.get(i).getCode()-1)/6)%8 == 7) { %>
						<span class="people">[임신부]</span>
						<% } %>
                	    <div class="head" style = "overflow:hidden; word-wrap:break-word;"><a href="<%= endDate.get(i).getInfoLink() %>" target="_blank"><%= endDate.get(i).getInfoName() %></a></div><br>
                        <div class="day"><%= endDate.get(i).getEndDay().substring(0, 11) %> 까지</div>
                    </div>
                <% } %>
                <br><br>
            </div>
        </div>
        
        <!--신규지원제도 문구-->
        <div id ="newfontbox">
            <div id="nfb1">
                <div id="nbtn"><span>NEW</span></div>
            </div>
            <div id="nfb2">
                <span>새로 올라온 제도에요!</span>
            </div>
            <div id="nfb3">
                <a style="text-decoration: none; color: #848484; font-weight: bolder;" href="newInfo.jsp">더보기</a>
            </div>
        </div>

         <!--신규제도 슬라이드-->
         <div id="newslidebox">
           
            <div id="nsb">
            	<% ArrayList<mainInfoDTO> startDate = dao.startinfo(); %>
                <% for (int i = 0; i < startDate.size(); i++) {%>
                    <div class="slidediv">
                    	<% if ((startDate.get(i).getCode()-1)% 6 == 0) { %>
						<span class="people">[전체]</span>
						<% } else if((startDate.get(i).getCode()-1)% 6 == 1) { %>
						<span class="people">[교육]</span>
						<% } else if((startDate.get(i).getCode()-1)% 6 == 2) { %>
						<span class="people">[창업/고용]</span>
						<% } else if((startDate.get(i).getCode()-1)% 6 == 3) { %>
						<span class="people">[주거]</span>
						<% } else if((startDate.get(i).getCode()-1)% 6 == 4) { %>
						<span class="people">[건강]</span>
						<% } else if((startDate.get(i).getCode()-1)% 6 == 5 ) { %>
						<span class="people">[기타]</span>
						<% } %>
						<br>
						<% if (((startDate.get(i).getCode()-1)/6)%8 == 0) { %>
						<span class="people">[전체]</span>
						<% } else if(((startDate.get(i).getCode()-1)/6)%8 == 1) { %>
						<span class="people">[대학생/대학원생]</span>
						<% } else if(((startDate.get(i).getCode()-1)/6)%8 == 2) { %>
						<span class="people">[군인]</span>
						<% } else if(((startDate.get(i).getCode()-1)/6)%8 == 3) { %>
						<span class="people">[구직/이직자/실업자]</span>
						<% } else if(((startDate.get(i).getCode()-1)/6)%8 == 4) { %>
						<span class="people">[재직자]</span>
						<% } else if(((startDate.get(i).getCode()-1)/6)%8 == 5) { %>
						<span class="people">[창업자/예비창업자]</span>
						<% } else if(((startDate.get(i).getCode()-1)/6)%8 == 6) { %>
						<span class="people">[장애인]</span>
						<% } else if(((startDate.get(i).getCode()-1)/6)%8 == 7) { %>
						<span class="people">[임신부]</span>
						<% } %>
                        <div class="head" style = "overflow:hidden; word-wrap:break-word;"><a href="<%=startDate.get(i).getInfoLink() %>" target="_blank"><%= startDate.get(i).getInfoName() %></a></div><br>
                 <!--       <span class="content">(학비 및 생활비 지원)</span><br><br>  -->
                        <div class="day"><%= startDate.get(i).getEndDay().substring(0, 11) %> 까지</div>
                 <!--       <span class="dmd">(D-5)</span>  -->
                    </div>
                <% } %>
            </div>
            
        </div>
        
    </div>
</body>
</html>