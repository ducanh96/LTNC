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


                    <c:forEach var="i" begin="0" end="${count-1}" step="1" varStatus="loopOut">
                        <% System.out.println("ket qua:" + pageContext.findAttribute("count")); %>

                        <div class="blog-head">
                            <%! int dem = 0;%>
                            <c:forEach var="item" end="${loopOut.index*3+2}" begin="${loopOut.index*3}" varStatus="loopInner">
                                <% dem++; %>
                                <% System.out.println(dem);
                                %>  
                                <c:if test="${loopInner.current < listProduct.size()}">


                                    <div class="col-md-4 blog-top">
                                        <div class="blog-in">
                                            <a href="single.html"><img class="img-responsive" src="<c:url value="${listProduct[item].anhSp}"/>" alt=" "></a>
                                            <div class="blog-grid">
                                                <h3><a href="single.html">${listProduct[item].tenSp}</a></h3>
                                                <div class="more">						
                                                    <a class="link link-yaku">
                                                        <h2><span>${listProduct[item].giaSp}</span> <span>đồng</span></h2>
                                                    </a>
                                                </div>

<!--                                                <a href="${pageContext.request.contextPath}/home/addCart?maSp=${listProduct[item].maSp}" class="btn btn-1 btn-block btn-success"><i class="glyphicon glyphicon-shopping-cart"></i> Thêm vào giỏ hàng</a>-->
                                                <button type="button" id="${listProduct[item].maSp}" class="btn btn-1 btn-block btn-success"><i class="glyphicon glyphicon-shopping-cart"></i> Thêm vào giỏ hàng</button>
                                                <button type="button" class="btn btn-1 btn-block btn-success"><i class="glyphicon glyphicon-usd"></i> Mua luôn</button>







                                                <div class="more">						
                                                    <a class="link link-yaku" href="single.html">

                                                        <span>R</span><span>e</span><span>a</span><span>d</span> <span>M</span><span>o</span><span>r</span><span>e</span>					
                                                    </a>
                                                </div>
                                            </div>					
                                        </div>
                                    </div>

                                </c:if>


                                <% if (dem % 3 == 0) {
                                        System.out.println(dem);
                                %>
                                <div class="clearfix"> </div>
                                <%
                                    };
                                %>


                            </c:forEach>

                        </div>

                    </c:forEach>






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
        <div id="content">

        </div>
      
        <script src="<c:url value="/resources/js/sweetAlert.js"/>"></script>
        <script type="text/javascript">
            $(function () {
                var deleteLink = $("button:contains(' Thêm vào giỏ hàng')");

                $(deleteLink).click(function (event) {

                    var maSp = $(this).attr("id");
                   
                    url = "${pageContext.request.contextPath}/home/themGioHang";
                    var data = {maSp: maSp};
                    var dataType = 'json';
                    var success = function (dl) {
                        if (dl.length > 0)
                        {
                            var tam = dl;
                            swal("Thành công!", "Thêm sản phẩm vào giỏ hàng thành công", "success");
                           
                        }
                    };
                    jQuery.get(url, data, success, dataType);


//                    $.ajax({
//                        type: "GET",
//                        contentType: "application/json; charset=utf-8",
//                        url: "${pageContext.request.contextPath}/home/themGioHang",
//                        data: {maSp: maSp},
//                        dataType: 'json',
//                        timeout: 100000,
//                        success: function (data) {
//                            console.log("SUCCESS: ", data);
//                            alert(data);
//                        },
//                        error: function (e) {
//                            console.log("ERROR: ", e);
//                            alert(e.toString());
//                        },
//                        done: function (e) {
//                            console.log("DONE");
//                        }
//                    });

                });
            });
        </script>


    </body>
</html>
