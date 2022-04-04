<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <!-- head Start -->
    <%@include file="/WEB-INF/view/inc/head.jsp" %>
    <!-- head end -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/page/quizPlay.css">

    <style>
        b {
            color: red;
        }
    </style>
</head>

<body>
<!-- Preloader Start -->
<%@include file="/WEB-INF/view/inc/preloader.jsp" %>
<!-- Preloader end -->

<!-- right loader start-->
<div id="right-loader-active" style="display: none">
    <div class="right_loader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="right_loader_icon pere-text">
                <i class="far fa-check-circle fa-3x"></i>
            </div>
        </div>
    </div>
</div>
<!-- right loader end-->

<!-- header start -->
<%@include file="/WEB-INF/view/inc/header.jsp" %>
<!-- header end -->

<main>
    <!-- slider Area Start-->
    <%@include file="/WEB-INF/view/inc/section.jsp" %>
    <!-- slider Area end-->

    <!-- 다이어리쓰기-->

    <div class="comment-form" style="margin:20px 200px 20px 200px">
        <div class="col-12">
            <h1 class="contact-title">오늘의 일기쓰기</h1>
        </div>
        <form class="form-contact comment_form" action="#" id="commentForm">
            <div class="row">
                <div class="col-12">
                    <div class="form-group">
                        <input class="form-control" name="website" id="website" type="text" placeholder="Title">
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-group">
                        <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9" placeholder="Write Comment"></textarea>
                    </div>
                </div>

            </div>

            <div id="micButtonBox" class="row justify-content-sm-center mic_box" style="margin-top: 30px;">
            </div>

            <div class="row justify-content-sm-center" style="margin-bottom: 20px">
                <div class="col-lg-4 col-md-6 col-sm-8 button_container">
                    <button type="submit" class="boxed-btn play_button next_button" >Submit</button>
                    <button class="boxed-btn play_button" onclick="doList()">List</button>
                </div>
            </div>
        </form>
    </div>

</main>
<script type="text/javascript">
    function doList() {
        window.open('http://localhost:8989/writelist.do');
    }
</script>
<!-- footer&Scroll Up start -->
<%@include file="/WEB-INF/view/inc/footer.jsp" %>
<!-- footer&Scroll Up end -->

<!-- js file start -->
<%@include file="/WEB-INF/view/inc/jsfile.jsp" %>
<!-- js file end -->

<!-- annyang js & speechkitt -->
<script src="${pageContext.request.contextPath}/resources/js/annyang.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/speechkitt.js"></script>
<script>


    if (annyang) {
        // Add our commands to annyang
        annyang.addCommands({});

        //음성인식 값 받아오기위한 객체 생성
        let recognition = annyang.getSpeechRecognizer();
        //최종 음성인식 결과값 저장 변수
        let final_transcript = "";
        //말하는 동안에 인식되는 값 가져오기(허용)
        recognition.interimResults = true;
        //음성 인식결과 가져오기
        recognition.onresult = function (event) {
            final_transcript = "";
            for (let i = event.resultIndex; i < event.results.length; ++i) {
                if (event.results[i].isFinal) {
                    final_transcript += event.results[i][0].transcript;
                    final_transcript = final_transcript.trim();
                    console.log("final :" + final_transcript);
                }else{
                    interim_transcript+= event.results[i][0].transcript;
                }
            }

            document.getElementById("comment").innerHTML+=final_transcript;
        };

        // Tell KITT to use annyang
        SpeechKITT.annyang();

        // Define a stylesheet for KITT to use
        SpeechKITT.setStylesheet('${pageContext.request.contextPath}/resources/css/themes/flat.css');

        // Render KITT's interface
        SpeechKITT.vroom();
    }

</script>

</body>
</html>