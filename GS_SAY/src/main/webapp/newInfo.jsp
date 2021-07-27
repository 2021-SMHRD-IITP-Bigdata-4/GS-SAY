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
                <a href="goLogin">�α׾ƿ�</a>
                <a href="#">���� ��������</a>
                <a href="#">����������</a>
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
        <div id="tegbox3">
            <div id= "tegbox4">
                <div id = "endbar"> 
                     <div id = "start">
                        <span class="title"><strong>���� �ö�� ��������!</strong></span>
                    </div>
                    <div id = "new">
                        <input class=new type="button" value="NEW">
                    </div>
                </div> 
            </div>
        </div>
        <div id = "field">
            <select name="field" style="width: 170px; height: 40px; font-size: 100%;">
                <option value="">�о� ����</option>
                <option value="����">����</option>
                <option value="����">����</option>
                <option value="���/â��">��� / â��</option>
                <option value="�ְ�">�ְ�</option>
                <option value="�ǰ��ױ�Ÿ">�ǰ� �� ��Ÿ</option>
            </select>
        </div>
        <div id = "target">
            <select name="target" style="width: 170px; height: 40px; font-size: 100%;">
                <option value="">��� ����</option>
                <option value="���л�/���п���">���л�/���п���</option>
                <option value="����">����</option>
                <option value="����/�������/�Ǿ���">����/�������/�Ǿ���</option>
                <option value="������">������</option>
                <option value="â����/����â����">â���� / ����â����</option>
                <option value="�����">�����</option>
                <option value="�ӽź�">�ӽź�</option>
            </select>
        </div>
    </div>
    <table id="table" style="text-align: center;">
        <thead>
            <tr>
                <th colspan="5" style="font-size: 130%; height: 40px; background-color: #9FCAFF; font-weight: bold;" >�� ü</th>
            </tr>
            <tr style="background-color:#C1DDFF;">
                <th width="5%" style="font-size: 110%; height: 40px;">No.</th><th width="20%" style="font-size: 110%; height: 40px;">������
                </th><th width="20%" style="font-size: 110%; height: 40px;">�о�</th><th width="25%" style="font-size: 110%; height: 40px;">���
                </th><th width="30%" style="font-size: 110%; height: 40px;">������</th>
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