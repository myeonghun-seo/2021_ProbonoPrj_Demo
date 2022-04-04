<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
    <!-- head Start -->
    <%@include file="/WEB-INF/view/inc/head.jsp" %>
    <!-- head end -->

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/page/quizListPage.css">


</head>

<body>
<!-- Preloader Start -->
<%@include file="/WEB-INF/view/inc/preloader.jsp" %>
<!-- Preloader end -->

<!-- header start -->
<%@include file="/WEB-INF/view/inc/header.jsp" %>
<!-- header end -->

<main>
    <!-- slider Area Start-->
    <%@include file="/WEB-INF/view/inc/section.jsp" %>
    <!-- slider Area end-->

    <div class="whole-wrap">
        <div class="container box_1170">
            <div class="section-top-border">
                <h3 class="mb-30">Rank</h3>
                <div class="progress-table-wrap">
                    <div class="progress-table" style="padding-bottom: 15px;">
                        <div class="table-head">
                            <div class="serial number">NO</div>
                            <div class="country quiz">title</div>
                            <div class="country quiz">Day</div>
                            <div class="country quiz">USER</div>
                        </div>



                    </div>
                </div>
            </div>

            <div id="table_button_box">
                <button class="boxed-btn history_button" onclick="back()">홈으로</button>
            </div>
        </div>
    </div>
</main>

<script type="text/javascript">
    function back() {
        window.open('http://localhost:8989');
    }
</script>
<!-- footer&Scroll Up start -->
<%@include file="/WEB-INF/view/inc/footer.jsp" %>
<!-- footer&Scroll Up end -->

<!-- js file start -->
<%@include file="/WEB-INF/view/inc/jsfile.jsp" %>
<!-- js file end -->

</body>
</html>