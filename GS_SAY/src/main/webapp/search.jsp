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
                <a href="login.jsp">�α���/ȸ������</a>
                <a href="search.jsp">�������� �˻�</a>
            </nav>
            <% } %>
        </div>
        <!--�±׹�-->
        <div id="tegbox1">
            <div id= "tegbox2">
                <img id = "teg" src="img/search.bmp">
            </div>
        </div>
        <!--�����ϱ�-->
        <form action="searchProgram">
        <div id = localselect>
            <div id="localteg">
                <span>����</span>
            </div>
            <div id="localchoice">
                ����<input type="radio" name="local" class="localip" value="����">
                ����<input type="radio" name="local" class="localip" value="����">
                ���� �ϱ�<input type="radio" name="local" class="localip" value="���ֺϱ�">
                ���� ����<input type="radio" name="local" class="localip" value="���ֳ���">
                ���� ����<input type="radio" name="local" class="localip" value="���ּ���">
                ���� ����<input type="radio" name="local" class="localip" value="���ֵ���">
                ���� ���걸<input type="radio" name="local" class="localip" value="���ֱ��걸">
            </div>
        </div>
        <div id = "categoryselect">
            <div id="categoryteg">
                <span>�з�</span>
            </div>
            <div id="categorychoice">
                ��ü<input type="radio" name="category" class="localip" value="��ü">
                ����<input type="radio" name="category" class="localip" value="����">
                ���/â��<input type="radio" name="category" class="localip" value="â��">
                �ְ�<input type="radio" name="category" class="localip" value="�ְ�">
                �ǰ�<input type="radio" name="category" class="localip" value="�ǰ�">
                ��Ÿ<input type="radio" name="category" class="localip" value="��Ÿ">
            </div>
        </div>
        <div id = "peopleselect">
            <div id="peopleteg">
                <span>���</span>
            </div>
            <div id="peoplechoice">
                ��ü<input type="radio" name="people" class="localip" value="��ü">
                ���л�/���п���<input type="radio" name="people" class="localip" value="���л�">
                ����<input type="radio" name="people" class="localip" value="����">
                ����/���������/�Ǿ���<input type="radio" name="people" class="localip" value="����">
                ������<input type="radio" name="people" class="localip" value="������">
                â����/����â����<input type="radio" name="people" class="localip" value="â����">
                �����<input type="radio" name="people" class="localip" value="�����">
                �ӽź�<input type="radio" name="people" class="localip" value="�ӽź�">
            </div>
        </div>
        <div id = "go">
            <input class="menubutton" type="submit" value="�˻��ϱ�">
        </div>
        </form>
        <div id="tablebox">
            <% ArrayList<mainInfoDTO> searchDTO = (ArrayList<mainInfoDTO>)session.getAttribute("searchDTO");%>
                   <% if(searchDTO !=null){ %>
                   <% System.out.println("���ۿϷ�");%>
                   <% System.out.println(searchDTO.size());%>
                   
                    <table id="table">
                <thead>
                    <tr>
                        <th colspan="5" style="font-size: 130%; height: 40px; background-color: #9FCAFF; font-weight: bold; font-family: menufont; text-align: left;" >&nbsp&nbsp&nbsp&nbsp&nbsp���� ���� : 
                        <%request.setCharacterEncoding("EUC-KR"); %>
                        <%String name = request.getParameter("name");%>
                        <%=name %>
                        </th>
                    </tr>
                    <tr style="background-color:#C1DDFF;">
                        <th width="7%" style="font-size: 110%; height: 40px;">No.</th>
                        <th width="14%" style="font-size: 110%; height: 40px;">���۳�¥</th>
                        <th width="14%" style="font-size: 110%; height: 40px;">���ᳯ¥</th>
                        <th width="60%" style="font-size: 110%; height: 40px;">������</th>
                        <th width="5%" style="font-size: 110%; height: 40px;">���</th>
                    </tr>
                </thead>
                   <tbody>
                   
                   <% for(int i =0; i<searchDTO.size();i++){%>
                    <tr>
                      <td><%=i+1%></td><td><%= searchDTO.get(i).getStartDay().substring(0, 11)%></td>
                      <td><%=searchDTO.get(i).getEndDay().substring(0, 11)%></td>
                      <td><a id="info" href="<%=searchDTO.get(i).getInfoLink()%>" target="_blank"><%=searchDTO.get(i).getInfoName()%></a></td>
                      <td><a id="info" href="myInfoProgram?num=<%=+searchDTO.get(i).getInfoNum()%>">����</a></td>
                    </tr>
                    
                    <%}%>
                    	</tbody>
            		</table>
                   <%}else{ %>
                    <div id = "needbox">���� �з� ����� �����ϼ���!</div>
                    <% }%>
        </div>
    </div>
</body>
</html>