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
        <!--메뉴바-->
        <div id = "menubar">
            <div id="rogobox">
                <a href="#">
                    <img id="rogo" src="img/rogo.bmp">
                </a>
            </div>
            <nav id="menubox">
                <a href="#">로그인</a>
                <a href="#">대상별 제도</a>
                <a href="#">분야별 제도</a>
            </nav>
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
                <span id="jung2check">확인하고갈까?</span>
            </div>
            <div id="jung3">
                <div id="jung3btn">
                    <a href="#"><span id="jung3submit">확인하러 가기</span></a>
                </div>
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
                <a href="#"><span>더보기</span></a>
            </div>
        </div>
        <!--종료제도 슬라이드-->
        <div id="endslidebox">
           
            <div id="esb">
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[대학생/대학원생]</span>
                        <span class="category">[교육]</span><br><br>
                        <span class="head">OK장학재단 장학금 지원</span><br>
                        <span class="content">(학비 및 생활비 지원)</span><br><br>
                        <span class="day">7.10일까지</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                    </a>
                
                    <a href="#">
                        <div class="slidediv">
                            <span class="people">[대학생/대학원생]</span>
                            <span class="category">[교육]</span><br><br>
                            <span class="head">OK장학재단 장학금 지원</span><br>
                            <span class="content">(학비 및 생활비 지원)</span><br><br>
                            <span class="day">7.10일까지</span>
                            <span class="dmd">(D-5)</span>
                        </div>
                        </a>
                    <a href="#">
                            <div class="slidediv">
                                <span class="people">[대학생/대학원생]</span>
                                <span class="category">[교육]</span><br><br>
                                <span class="head">OK장학재단 장학금 지원</span><br>
                                <span class="content">(학비 및 생활비 지원)</span><br><br>
                                <span class="day">7.10일까지</span>
                                <span class="dmd">(D-5)</span>
                            </div>
                        </a>
                    <a href="#">
                            <div class="slidediv">
                                <span class="people">[대학생/대학원생]</span>
                                <span class="category">[교육]</span><br><br>
                                <span class="head">OK장학재단 장학금 지원</span><br>
                                <span class="content">(학비 및 생활비 지원)</span><br><br>
                                <span class="day">7.10일까지</span>
                                <span class="dmd">(D-5)</span>
                            </div>
                    </a>
                    <a href="#">
                        <div class="slidediv">
                            <span class="people">[대학생/대학원생]</span>
                            <span class="category">[교육]</span><br><br>
                            <span class="head">OK장학재단 장학금 지원</span><br>
                            <span class="content">(학비 및 생활비 지원)</span><br><br>
                            <span class="day">7.10일까지</span>
                            <span class="dmd">(D-5)</span>
                        </div>
                        </a>
                <br><br>
            </div>
        </div>
        
        <!--신규지원제도 문구-->
        <div id ="newfontbox">
            <div id="nfb1">
                <div id="nbtn"><span>HOT</span></div>
            </div>
            <div id="nfb2">
                <span>새로 올라온 제도에요!</span>
            </div>
            <div id="nfb3">
                <a href="#"><span>더보기</span></a>
            </div>
        </div>

         <!--신규제도 슬라이드-->
         <div id="newslidebox">
           
            <div id="nsb">
                <a href="#">
                <div class="slidediv">
                    <span class="people">[대학생/대학원생]</span>
                    <span class="category">[교육]</span><br><br>
                    <span class="head">OK장학재단 장학금 지원</span><br>
                    <span class="content">(학비 및 생활비 지원)</span><br><br>
                    <span class="day">7.10일까지</span>
                    <span class="dmd">(D-5)</span>
                </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[대학생/대학원생]</span>
                        <span class="category">[교육]</span><br><br>
                        <span class="head">OK장학재단 장학금 지원</span><br>
                        <span class="content">(학비 및 생활비 지원)</span><br><br>
                        <span class="day">7.10일까지</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <a href="#">
                        <div class="slidediv">
                            <span class="people">[대학생/대학원생]</span>
                            <span class="category">[교육]</span><br><br>
                            <span class="head">OK장학재단 장학금 지원</span><br>
                            <span class="content">(학비 및 생활비 지원)</span><br><br>
                            <span class="day">7.10일까지</span>
                            <span class="dmd">(D-5)</span>
                        </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[대학생/대학원생]</span>
                        <span class="category">[교육]</span><br><br>
                        <span class="head">OK장학재단 장학금 지원</span><br>
                        <span class="content">(학비 및 생활비 지원)</span><br><br>
                        <span class="day">7.10일까지</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[대학생/대학원생]</span>
                        <span class="category">[교육]</span><br><br>
                        <span class="head">OK장학재단 장학금 지원</span><br>
                        <span class="content">(학비 및 생활비 지원)</span><br><br>
                        <span class="day">7.10일까지</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[대학생/대학원생]</span>
                        <span class="category">[교육]</span><br><br>
                        <span class="head">OK장학재단 장학금 지원</span><br>
                        <span class="content">(학비 및 생활비 지원)</span><br><br>
                        <span class="day">7.10일까지</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <a href="#">
                    <div class="slidediv">
                        <span class="people">[대학생/대학원생]</span>
                        <span class="category">[교육]</span><br><br>
                        <span class="head">OK장학재단 장학금 지원</span><br>
                        <span class="content">(학비 및 생활비 지원)</span><br><br>
                        <span class="day">7.10일까지</span>
                        <span class="dmd">(D-5)</span>
                    </div>
                </a>
                <br><br>
            </div>
        </div>
        <div id="yo">
            여기는 여백입니다
        </div>
    </div>
</body>
</html>