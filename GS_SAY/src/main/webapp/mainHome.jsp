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
       
        
    </style>
</head>
<body>

    <div>
        <!--�޴���-->
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
                <a href="myInfo.jsp">���� ��������</a>
                <a href="myPage.jsp">����������</a>
                <a href="search.jsp">�������� �˻�</a>
            </nav>
            <% } else { %>
            <nav id="menubox">
                <a href="login.jsp">�α���</a>
                <a href="search.jsp">�������� �˻�</a>
            </nav>
            <% } %>
        </div>
        <!--�±׹�-->
        <div id="tegbox1">
            <div id= "tegbox2">
                <img id = "teg" src="img/tege.bmp">
            </div>
        </div>
        <!--�����ҵ����-->
        <div id="jungwibox">
            <div id="jung1">
                <img src="img/sum.bmp">
            </div>
            <div id="jung2">
                <span id="jung2stop">[���!]</span>
                <span id="jung2benefit">�����ҵ�</span>
                <span id="jung2check">Ȯ���ϰ� ����?</span>
            </div>
            <div id="jung3">
                <div id="jung3btn">
                    <a href="sumPage.jsp"><span id="jung3submit">Ȯ���Ϸ� ����</span></a>
                </div>
            </div>
        </div>
        <!-- �Ұ��� -->
        <div id="tegbox3">
            <div id= "tegbox4">
                <img id = "teg" src="img/mainexplain.bmp">
            </div>
        </div>
        <!--����Ǵ����� ����-->
        <div id ="endfontbox">
            <div id="efb1">
                <div id="ebtn"><span>HOT</span></div>
            </div>
            <div id="efb2">
                <span>���ᰡ �� �ȳ��Ҿ��!</span>
            </div>
            <div id="efb3">
                <a style="text-decoration: none; color: #848484; font-weight: bolder;" href="endInfo.jsp">������</a>
            </div>
        </div>
        <!--�������� �����̵�-->
        <div id="endslidebox">
           
            <div id="esb">
            	<% maininfoDAO dao = new maininfoDAO(); %>
            	<% ArrayList<mainInfoDTO> endDate = dao.endinfo(); %>
            	<% for (int i = 0; i < endDate.size(); i++) {%>
            	<% String dateF = endDate.get(i).getEndDay(); %>
                    <div class="slidediv">
                	    <div class="head" style = "overflow:hidden; word-wrap:break-word;"><a href="<%= endDate.get(i).getInfoLink() %>"><%= endDate.get(i).getInfoName() %></a></div><br>
                        <div class="day"><%= endDate.get(i).getEndDay() %> ����</div>
                    </div>
                <% } %>
                <br><br>
            </div>
        </div>
        
        <!--�ű��������� ����-->
        <div id ="newfontbox">
            <div id="nfb1">
                <div id="nbtn"><span>NEW</span></div>
            </div>
            <div id="nfb2">
                <span>���� �ö�� ��������!</span>
            </div>
            <div id="nfb3">
                <a style="text-decoration: none; color: #848484; font-weight: bolder;" href="newInfo.jsp">������</a>
            </div>
        </div>

         <!--�ű����� �����̵�-->
         <div id="newslidebox">
           
            <div id="nsb">
            	<% ArrayList<mainInfoDTO> startDate = dao.startinfo(); %>
                <% for (int i = 0; i < startDate.size(); i++) {%>
                    <div class="slidediv">
                 <!--       <span class="people">[���л�/���п���]</span>
                        <span class="category">[����]</span><br><br>  -->
                        <div class="head" style = "overflow:hidden; word-wrap:break-word;"><a href="<%=startDate.get(i).getInfoLink() %>"><%= startDate.get(i).getInfoName() %></a></div><br>
                 <!--       <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>  -->
                        <div class="day"><%= endDate.get(i).getEndDay() %> ����</div>
                 <!--       <span class="dmd">(D-5)</span>  -->
                    </div>
                <% } %>
            </div>
            
        </div>
        
    </div>
</body>
</html>