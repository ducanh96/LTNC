<%-- 
    Document   : header
    Created on : Nov 6, 2017, 9:37:01 AM
    Author     : Duc Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookery A Food Category Flat Bootstrap Responsive Website Template | Menu :: w3layouts</title>
         <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css" media="all" />
        <link href="<c:url value="/resources/css/jquery-ui.min.css"/>" rel="stylesheet" type="text/css" />
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Cookery Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!---->
        <link href="https://fonts.googleapis.com/css?family=Arimo" rel="stylesheet">
        <link href="<c:url value="/resources/css/styles.css"/>" rel="stylesheet">
        <!-- animation-effect -->
        <link href="<c:url value="/resources/css/animate.min.css"/>" rel="stylesheet"> 
        <script src="<c:url value="/resources/js/wow.min.js"/>"></script>  
        <script src="<c:url value="/resources/js/myjs.js"/>"></script>
        <script>
            new WOW().init();
        </script>
    </head>
    <body>
        <div class="header head">
            <div class="container">
                <div class="logo animated wow pulse" data-wow-duration="1000ms" data-wow-delay="500ms">
                    <h1><a href="index.html"><span>C</span><img src="<c:url value="/resources/images/oo.png"/>" alt=""><img src="<c:url value="/resources/images/oo.png"/>" alt="">kery</a></h1>
                </div>
                <div class="nav-icon">		
                    <a href="#" class="navicon"></a>
                    <div class="toggle">
                        <ul class="toggle-menu">
                            <li><a  href="${pageContext.request.contextPath}/home/TrangChu">Home</a></li>
                            <li><a class="active" href="menu.html">Menu</a></li>
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

        </div>
    </body>
</html>
