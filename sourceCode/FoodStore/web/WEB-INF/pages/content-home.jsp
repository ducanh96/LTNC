<%-- 
    Document   : content-home
    Created on : Nov 7, 2017, 9:07:53 AM
    Author     : Duc Anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cookery A Food Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
        <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Cookery Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!---->
        <link href="https://fonts.googleapis.com/css?family=Arimo" rel="stylesheet">
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="<c:url value="/resources/js/move-top.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/easing.js"/>"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- start-smoth-scrolling -->
        <link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/component.css"/>" />
        <!-- animation-effect -->
        <link href="<c:url value="/resources/css/animate.min.css"/>" rel="stylesheet"> 
        <script src="<c:url value="/resources/js/wow.min.js"/>"></script>
        <script>
            new WOW().init();
        </script>
        <!-- //animation-effect -->

    </head>
    <body>
        <div class="header">
            <div class="container">
                <div class="logo animated wow pulse" data-wow-duration="1000ms" data-wow-delay="500ms">
                    <h1><a href="index.html"><span>C</span><img src="<c:url value="/resources/images/oo.png"/>" alt=""><img src="<c:url value="/resources/images/oo.png"/>" alt="">kery</a></h1>
                </div>
                <div class="nav-icon">		
                    <a href="#" class="navicon"></a>
                    <div class="toggle">
                        <ul class="toggle-menu">
                            <li><a class="active" href="${pageContext.request.contextPath}/home/TrangChu">Home</a></li>
                            <li><a  href="${pageContext.request.contextPath}/home/index">Menu</a></li>
                            <li><a  href="blog.html">Blog</a></li>
                            <li><a href="${pageContext.request.contextPath}/home/mycart">Cart</a></li>		
                            <li><a  href="contact.html">Contact</a></li>
                        </ul>
                    </div>
                    <script>
                        $('.navicon').on('click', function (e) {
                            e.preventDefault();
                            $(this).toggleClass('navicon--active');
                            $('.toggle').toggleClass('toggle--active');
                        });
                    </script>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- start search-->	
            <div class="banner">
                <p class="animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">Sed ut perspiciatis unde omnis iste natus.</p>
                <label></label>
                <h4 class="animated wow fadeInTop" data-wow-duration="1000ms" data-wow-delay="500ms">Welcome to HAL's FOOD</h4>
                <a class="scroll down" href="#content-down"><img src="<c:url value="/resources/images/down.png"/>" alt=""></a>
            </div>
        </div>
        <!--content-->
        <div class="content" id="content-down">
            <div class="content-top-top">
                <div class="container">
                    <div class="content-top">
                        <div class="col-md-4 content-left animated wow fadeInLeft animated animated animated" data-wow-duration="1000ms" data-wow-delay="500ms" style="visibility: visible; animation-duration: 1000ms; animation-delay: 500ms; animation-name: fadeInLeft;">
                            <h3>About</h3>
                            <label><i class="glyphicon glyphicon-menu-up"></i></label>
                            <span>"Đôi nét về HAL's FOOD"</span>
                        </div>
                        <div class="col-md-8 content-right animated wow fadeInRight animated animated animated" data-wow-duration="1000ms" data-wow-delay="500ms" style="visibility: visible; animation-duration: 1000ms; animation-delay: 500ms; animation-name: fadeInRight;">
                            <p>HAL's FOOD từ lâu đã không còn là cái tên lạ lẫm đối với giới thực khách Hà Thành.
                                Với danh sách món ăn phong phú được chế biến theo đặc sẳn của các vùng miền với 
                                các món ăn Nhật, Hàn được nấu tỉ mỉ, chau chuốt mang hương vị đậm đà khó quên 
                                trong lòng mỗi thực khách và từ lâu đã trở thành địa điểm không thể thiếu của
                                nhiều thực khách bởi chúng tôi luôn tin rằng chất lượng và thái độ sẽ làm nên 
                                thương hiệu đích thực!!!</p>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="content-mid">

                        <div class="col-md-4 food-grid animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" hover-fold">
                                <h4>FOOD</h4>
                                <div class="top">
                                    <div class="front face"></div>
                                    <div class="back face">
                                        <p>Nguồn thực phẩm sạch, giàu năng lượng!</p>
                                    </div>
                                </div>
                                <div class="bottom"></div>
                            </div>
                        </div>
                        <div class="col-md-4 food-grid animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" hover-fold">
                                <h4>FOOD</h4>
                                <div class="top">
                                    <div class="front face front1"></div>
                                    <div class="back face">
                                        <p>Đậm đà trong từng hương vị!!</p>
                                    </div>
                                </div>
                                <div class="bottom bottom1"></div>
                            </div>
                        </div>
                        <div class="col-md-4 food-grid animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" hover-fold">
                                <h4>FOOD</h4>
                                <div class="top">
                                    <div class="front face front2"></div>
                                    <div class="back face">
                                        <p>Tinh tế trong cách chế biến!!!</p>
                                    </div>
                                </div>
                                <div class="bottom bottom2"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!--services-->
            <div class="services">
                <div class="container">
                    <div class="services-top">		
                        <div class="col-md-8 services-right animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <p>Không chỉ hướng tới sự hoàn thiện trong từng món ăn mà HAL's FOOD luôn mang đến
                                cho thực khách tứ phương những dịch vụ tốt nhất bằng sự tận tình, chu đáo và sự thân
                                thiện của đội ngũ nhân viên. Đó là những gì xứng đáng cho mỗi bữa ăn ngon mà mọi người
                                nhận được vì luôn tin tưởng và ùng hộ chúng tôi!</p>
                        </div>
                        <div class="col-md-4 services-left animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <h3>Services</h3>
                            <label><i class="glyphicon glyphicon-menu-up"></i></label>
                            <span>Chất lượng dịch vụ 5 sao!</span>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="service-top">
                        <div class="col-md-5 service-top animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" service-grid">
                                <div class="col-md-6 service-grid1">
                                    <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                                        <a href="#" class="hi-icon hi-icon-mobile glyphicon glyphicon-leaf"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 service-grid1">
                                    <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                                        <a href="#" class="hi-icon hi-icon-mobile glyphicon glyphicon-star-empty"></a>
                                    </div>					
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class=" service-grid">
                                <div class="col-md-6 service-grid1">
                                    <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                                        <a href="#" class="hi-icon hi-icon-mobile glyphicon glyphicon-folder-open"></a>
                                    </div>					
                                </div>
                                <div class="col-md-6 service-grid1">
                                    <div class="hi-icon-wrap hi-icon-effect-5 hi-icon-effect-5a">
                                        <a href="#" class="hi-icon hi-icon-mobile glyphicon glyphicon-home"></a>
                                    </div>					
                                </div>
                                <div class="clearfix"> </div>
                            </div>

                        </div>
                        <div class="col-md-7 service-bottom animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
                            <div class=" service-bottom1">
                                <div class=" ser-bottom">
                                    <img src="<c:url value="/resources/images/sa.jpg"/>" class="img-responsive" alt="">
                                </div>
                                <div class="ser-top "> 
                                    <h5>Beautiful &amp; enjoyable designs</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class=" service-bottom1">
                                <div class=" ser-bottom">
                                    <img src="<c:url value="/resources/images/sa1.jpg"/>" class="img-responsive" alt="">
                                </div>
                                <div class="ser-top "> 
                                    <h5>Chất lượng tốt nhất!</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis.</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class=" service-bottom1">
                                <div class=" ser-bottom">
                                    <img src="<c:url value="/resources/images/sa2.jpg"/>" class="img-responsive" alt="">
                                </div>
                                <div class="ser-top "> 
                                    <h5>Nguồn dinh dưỡng đầy đủ và sạch sẽ!!!</h5>
                                    <p>Luôn tuyển chọn những nguồn thực phần hữu cơ tươi, sạch và giàu dinh dưỡng nhất!
                                        Một bữa ăn không chỉ ngon mà còn cần cả nhiều dinh dướng ^^</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!--//services-->
            <!--news-->
            <div class="content-top-top">
                <div class="container">
                    <div class="content-top">


                    </div>
                    <div class="news-bottom">
                        <div class="news-bot">
                            <div class="col-md-6 news-bottom1 animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                                <a href="single.html">
                                    <div class="content-item">
                                        <div class="overlay"></div>
                                        <div class=" news-bottom2">
                                            <ul class="grid-news">
                                                <li><span><i class="glyphicon glyphicon-calendar"> </i>08.09.2014</span><b>/</b></li>
                                                <li><span><i class="glyphicon glyphicon-comment"> </i>5 Comment</span><b>/</b></li>
                                                <li><span><i class="glyphicon glyphicon-share"> </i>Share</span></li>
                                            </ul>
                                            <p>Bò nấm ngũ quả</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-6 news-bottom1 animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
                                <a href="single.html">
                                    <div class="content-item content-item1">
                                        <div class="overlay"></div>
                                        <div class=" news-bottom2">
                                            <ul class="grid-news">
                                                <li><span><i class="glyphicon glyphicon-calendar"> </i>08.09.2014</span><b>/</b></li>
                                                <li><span><i class="glyphicon glyphicon-comment"> </i>5 Comment</span><b>/</b></li>
                                                <li><span><i class="glyphicon glyphicon-share"> </i>Share</span></li>
                                            </ul>
                                            <p>Bò tiêu cải xanh</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="news-bot">
                            <div class="col-md-6 news-bottom1">
                                <a href="single.html">
                                    <div class="content-item content-item2 animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                                        <div class="overlay"></div>
                                        <div class=" news-bottom2">
                                            <ul class="grid-news">
                                                <li><span><i class="glyphicon glyphicon-calendar"> </i>08.09.2014</span><b>/</b></li>
                                                <li><span><i class="glyphicon glyphicon-comment"> </i>5 Comment</span><b>/</b></li>
                                                <li><span><i class="glyphicon glyphicon-share"> </i>Share</span></li>
                                            </ul>
                                            <p>Bánh vừng</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-6 news-bottom1 animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
                                <a href="single.html">
                                    <div class="content-item content-item3">
                                        <div class="overlay"></div>
                                        <div class=" news-bottom2">
                                            <ul class="grid-news">
                                                <li><span><i class="glyphicon glyphicon-calendar"> </i>08.09.2014</span><b>/</b></li>
                                                <li><span><i class="glyphicon glyphicon-comment"> </i>5 Comment</span><b>/</b></li>
                                                <li><span><i class="glyphicon glyphicon-share"> </i>Share</span></li>
                                            </ul>
                                            <p>Thịt hầm ngũ quả</p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>

                    </div>
                </div>
            </div>
    </body>
</html>
