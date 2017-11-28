<%-- 
    Document   : content-menu
    Created on : Nov 6, 2017, 11:18:09 PM
    Author     : Duc Anh
--%>
<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@page import="Domain.GioHang.Item" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="menu">
            <div class="container">
                <div class="menu-top">
                    <div class="col-md-4 menu-left animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                        <h3>Menu</h3>
                        <label><i class="glyphicon glyphicon-menu-up"></i></label>
                        <span>There are many variations</span>
                    </div>
                    <div class="col-md-8 menu-right animated wow fadeInRight" data-wow-duration="1000ms" data-wow-delay="500ms">
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour , or randomised words which don't look even slightly believable.There are many variations by injected humour. There are many variations of passages of Lorem Ipsum available.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form by injected humour , or randomised words</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>

                <div class="col-md-9 blog-header">

                    <div class="col-md-8 menu-left animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                        
                       
                        <span>Không có sản phẩm nào được tìm thấy</span>
                    </div>




                </div>



                <div class="col-md-3 categories-grid">
                    <div class="search-in animated wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="500ms">
                        <h4>Search</h4>
                        <div class="search">
                            <form action="${pageContext.request.contextPath}/product/search" method="Get">
                                <input type="text" placeholder="Search tên món" required="" name="name">
                                <input type="submit" value="" >
                            </form>
                        </div>

                    </div>
                    <br>

                    <div class="grid-categories animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">

                        <h4>Khoảng giá</h4>
                        <br>
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/product/SearchPrize" method="Get">

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="from" class="col-sm-1 col-md-3 control-label">Từ</label>
                                        <div class="col-sm-5 col-md-9">
                                            <input type="text" class="form-control" id="from" placeholder="VNĐ" name="from">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="to" class="col-sm-1 col-md-3 control-label">Đến</label>
                                        <div class="col-sm-5 col-md-9">
                                            <input type="text" class="form-control" id="to" placeholder="VNĐ" name="to">
                                        </div>

                                    </div>


                                </div>


                                <div class="form-group">
                                    <div id="price-range" class="col-md-offset-1 col-md-10" >
                                    </div>

                                    ` </div>    
                                <div class="form-group">

                                    <div class="col-md-offset-1 col-md-10">
                                        <button type="submit" class="btn btn-block btn-success">Tìm</button>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>

                            </div>

                        </form>


                    </div>






                    <div class="grid-categories animated wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
                        <h4>Categories</h4>
                        <ul class="popular">
                            <c:forEach var="item" items="${loaisp}">
                                <li><a href="${pageContext.request.contextPath}/product/list?MaLoaiSP=${item.id}"><i class="glyphicon glyphicon-menu-right"> </i>${item.tenLoaiSp}</a></li>
                                </c:forEach>

                        </ul>
                    </div>
                    <div class="blog-bottom animated wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
                        <h4>Recent Posts</h4>
                        <div class="product-go">
                            <a href="single.html" class="fashion"><img class="img-responsive " src="<c:url value="/resources/images/bo.jpg"/>" alt=""></a>
                            <div class="grid-product">
                                <a href="single.html" class="elit">Consectetuer adipiscing</a>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="product-go">
                            <a href="single.html" class="fashion"><img class="img-responsive " src="<c:url value="/resources/images/bo1.jpg"/>" alt=""></a>
                            <div class="grid-product">
                                <a href="single.html" class="elit">Consectetuer adipiscing</a>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="product-go">
                            <a href="single.html" class="fashion"><img class="img-responsive " src="<c:url value="/resources/images/bo2.jpg"/>" alt=""></a>
                            <div class="grid-product">
                                <a href="single.html" class="elit">Consectetuer adipiscing</a>
                                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>




    </body>
</html>
