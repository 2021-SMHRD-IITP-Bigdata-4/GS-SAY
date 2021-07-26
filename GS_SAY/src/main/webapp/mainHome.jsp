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
            width: 100%; position: absolute; top: 15%; align-content: center;
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
                <a href="#">
                    <img id="rogo" src="img/rogo.bmp">
                </a>
            </div>
            <nav id="menubox">
                <a href="#">�α���</a>
                <a href="#">��� ����</a>
                <a href="#">�оߺ� ����</a>
            </nav>
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
                <span id="jung2check">Ȯ���ϰ���?</span>
            </div>
            <div id="jung3">
                <div id="jung3btn">
                    <a href="#"><span id="jung3submit">Ȯ���Ϸ� ����</span></a>
                </div>
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
                <a href="#"><span>������</span></a>
            </div>
        </div>
        <!--�������� �����̵�-->
        <div id="endslidebox">
           
            <div id="esb">
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[���л�/���п���]</span>
                        <span class="category">[����]</span><br><br>
                        <span class="head">OK������� ���б� ����</span><br>
                        <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                        <span class="day">7.10�ϱ���</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                    </a>
                
                    <a href="#">
                        <div class="slidediv">
                            <span class="people">[���л�/���п���]</span>
                            <span class="category">[����]</span><br><br>
                            <span class="head">OK������� ���б� ����</span><br>
                            <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                            <span class="day">7.10�ϱ���</span>
                            <span class="dmd">(D-5)</span>
                        </div>
                        </a>
                    <a href="#">
                            <div class="slidediv">
                                <span class="people">[���л�/���п���]</span>
                                <span class="category">[����]</span><br><br>
                                <span class="head">OK������� ���б� ����</span><br>
                                <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                                <span class="day">7.10�ϱ���</span>
                                <span class="dmd">(D-5)</span>
                            </div>
                        </a>
                    <a href="#">
                            <div class="slidediv">
                                <span class="people">[���л�/���п���]</span>
                                <span class="category">[����]</span><br><br>
                                <span class="head">OK������� ���б� ����</span><br>
                                <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                                <span class="day">7.10�ϱ���</span>
                                <span class="dmd">(D-5)</span>
                            </div>
                    </a>
                    <a href="#">
                        <div class="slidediv">
                            <span class="people">[���л�/���п���]</span>
                            <span class="category">[����]</span><br><br>
                            <span class="head">OK������� ���б� ����</span><br>
                            <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                            <span class="day">7.10�ϱ���</span>
                            <span class="dmd">(D-5)</span>
                        </div>
                        </a>
                <br><br>
            </div>
        </div>
        
        <!--�ű��������� ����-->
        <div id ="newfontbox">
            <div id="nfb1">
                <div id="nbtn"><span>HOT</span></div>
            </div>
            <div id="nfb2">
                <span>���� �ö�� ��������!</span>
            </div>
            <div id="nfb3">
                <a href="#"><span>������</span></a>
            </div>
        </div>

         <!--�ű����� �����̵�-->
         <div id="newslidebox">
           
            <div id="nsb">
                <a href="#">
                <div class="slidediv">
                    <span class="people">[���л�/���п���]</span>
                    <span class="category">[����]</span><br><br>
                    <span class="head">OK������� ���б� ����</span><br>
                    <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                    <span class="day">7.10�ϱ���</span>
                    <span class="dmd">(D-5)</span>
                </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[���л�/���п���]</span>
                        <span class="category">[����]</span><br><br>
                        <span class="head">OK������� ���б� ����</span><br>
                        <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                        <span class="day">7.10�ϱ���</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <a href="#">
                        <div class="slidediv">
                            <span class="people">[���л�/���п���]</span>
                            <span class="category">[����]</span><br><br>
                            <span class="head">OK������� ���б� ����</span><br>
                            <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                            <span class="day">7.10�ϱ���</span>
                            <span class="dmd">(D-5)</span>
                        </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[���л�/���п���]</span>
                        <span class="category">[����]</span><br><br>
                        <span class="head">OK������� ���б� ����</span><br>
                        <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                        <span class="day">7.10�ϱ���</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[���л�/���п���]</span>
                        <span class="category">[����]</span><br><br>
                        <span class="head">OK������� ���б� ����</span><br>
                        <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                        <span class="day">7.10�ϱ���</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[���л�/���п���]</span>
                        <span class="category">[����]</span><br><br>
                        <span class="head">OK������� ���б� ����</span><br>
                        <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                        <span class="day">7.10�ϱ���</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[���л�/���п���]</span>
                        <span class="category">[����]</span><br><br>
                        <span class="head">OK������� ���б� ����</span><br>
                        <span class="content">(�к� �� ��Ȱ�� ����)</span><br><br>
                        <span class="day">7.10�ϱ���</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <br><br>
            </div>
        </div>
        <div id="yo">
            ����� �����Դϴ�
        </div>
    </div>
</body>
</html>