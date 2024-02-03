<%--
  Created by IntelliJ IDEA.
  User: zzzz
  Date: 2024-01-28
  Time: 오후 5:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../mainTop.jsp" flush="false"/>
    <title>학과소개</title>
    <!-- Favicons -->
    <link href="../bootstrap/img/favicon.png" rel="icon">
    <link href="../bootstrap/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../bootstrap/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../bootstrap/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../bootstrap/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../bootstrap/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="../bootstrap/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="../bootstrap/css/style.css" rel="stylesheet">

    <!-- =======================================================
    * Template Name: Resi
    * Updated: Jan 09 2024 with Bootstrap v5.3.2
    * Template URL: https://bootstrapmade.com/resi-free-bootstrap-html-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>
<body>
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">

            <div class="d-flex justify-content-between align-items-center">
                <h2>학과소개</h2>
            </div>

        </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
        <div class="container">

            <div class="row gy-4">

                <div class="col-lg-8">
                    <div class="portfolio-details-slider swiper">
                        <div class="swiper-wrapper align-items-center">

                            <div class="swiper-slide">
                                <img src="../bootstrap/mainPage/img/main/depart_main1.jpg" alt="로고사진1">
                            </div>

<%--                            <div class="swiper-slide">--%>
<%--                                <img src="../img/portfolio/portfolio-2.jpg" alt="">--%>
<%--                            </div>--%>

<%--                            <div class="swiper-slide">--%>
<%--                                <img src="../img/portfolio/portfolio-3.jpg" alt="">--%>
<%--                            </div>--%>

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>

                <div class="col-lg-4">
                    <div class="portfolio-description">
                        <h4>Department of Computer Science</h4>
                        <h2>컴퓨터과학과</h2>
                        <p>
                            21세기 첨단 기술시대에 고도정보화 사회를 선도하는 컴퓨터과학은 인간활동에 기초가 되는 모든 정보처리에 대하여 연구하는 첨단 학문으로서, 정보의 관리 저장 전송 등에 관한 연구와 관련하여 컴퓨터의 본질과 응용에 대한 근본적인 문제를 다루고 있습니다.
                            모든 인간활동이 정보에 근거하여 이루어지는 것을 볼 때, 정보의 양과 질의 향상을 목표로 하는 컴퓨터과학은 국제경쟁 뿐 아니라 전 인류복지향상을 위해서도 그 중요성이 증대되고 있습니다.
                            이러한 추세에 따라 본 학과에서는 인공지능 소프트웨어공학 그래픽스 병렬컴퓨터 등 여러 분야에서 균형적인 발전을 도모하고 있습니다.
                            특히 논리적인 사고력이 요구되는 컴퓨터과학에서 필요한 수학교육도 아울러 강조하고 있습니다.
                        </p>
                    </div>
                </div>
                <div class="portfolio-info">
                    <h3>프로그래밍 분야</h3>
                    <ul>
                        <li>컴퓨터에 널리 사용되는 언어를 습득하여 프로그램을 작성할 수 있는 능력 양성</li>
                    </ul>
                </div>
                <div class="portfolio-info">
                    <h3>시스템 분야</h3>
                    <ul>
                        <li>컴퓨터 시스템에 관련된 하드웨어와 소프트웨어 교육</li>
                    </ul>
                </div>
                <div class="portfolio-info">
                    <h3>자료운영 분야</h3>
                    <ul>
                        <li>컴퓨터에서 처리되는 데이터의 기본 개념과 이를 효율적으로 처리하는 능력 배양</li>
                    </ul>
                </div>
                <div class="portfolio-info">
                    <h3>하드웨어 분야</h3>
                    <ul>
                        <li>컴퓨터 시스템의 하드웨어 분야에 관련된 여러 장치들의 구성 방법 등에 대한 교육</li>
                    </ul>
                </div>
                <div class="portfolio-info">
                    <h3>컴퓨터과학 응용 분야</h3>
                    <ul>
                        <li>컴퓨터과학을 여러 분야에 응용할 수 있는 능력을 교육</li>
                    </ul>
                </div>
                <div class="portfolio-info">
                    <h3>전산수학 분야</h3>
                    <ul>
                        <li>전산학의 이론적 배경을 뒷받침하기 위해 기초수학을 교육</li>
                    </ul>
                </div>

            </div>

        </div>
    </section><!-- End Portfolio Details Section -->
</main><!-- End #main -->
</body>
</html>
