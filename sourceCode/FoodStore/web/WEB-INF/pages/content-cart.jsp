<%-- 
    Document   : content-cart
    Created on : Nov 22, 2017, 6:06:19 PM
    Author     : Duc Anh
--%>
<%@page import="Domain.GioHang.Cart"%>
<%@page import="Domain.GioHang.constant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--content-->
        <div class="mycart">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-10 col-md-offset-1">
                       
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Sản phẩm</th>
                                        <th class="text-center">Số lượng</th>
                                        <th class="text-center">Đơn giá</th>
                                        
                                        <th class="text-center">Tổng</th>
                                        <th> </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!--@foreach (Cart cart in lstC)
                                    {-->
                                    <c:forEach items="<%= ((Cart) (request.getSession().getAttribute(constant.GIO_HANG))).getCartItems()%>" var="c">

                                        <tr>
                                            <td class="col-sm-8 col-md-6">
                                                <div class="media">
                                                    <a class="thumbnail pull-left" href="#"> <img class="media-object" src="${pageContext.request.contextPath}${c.getValue().getProduct().getAnhSp()}" style="width: 72px; height: 72px;"> </a>
                                                    <div class="media-body">
                                                        <h4 class="media-heading"><a href="#">${c.getValue().getProduct().getTenSp()}</a></h4>

                                                    </div>
                                                </div>
                                            </td>
                                            <td class="col-sm-1 col-md-1" style="text-align: center">
                                                <div class="input-group spinner">
                                                    <form method="POST" action="<c:out value="${pageContext.request.contextPath}/home/updateCart"/>">
                                                        <input type="text" class="form-control" name="soLuong" value="${c.getValue().quantity}">
                                                        <input type="hidden" name="maSp" value="${c.getValue().getProduct().getMaSp()}"/>
                                                        <div class="input-group-btn-vertical">
                                                        <button class="btn btn-default" type="submit">Update</button>
                                                        
                                                    </div>
                                                    </form>
                                                </div>
                                            </td>
                                            <td class="col-sm-1 col-md-1 text-center"><strong>${c.getValue().getProduct().getGiaSp()} VNĐ</strong></td>
                                          
                                            <td class="col-sm-1 col-md-1 text-center"><strong>${c.getValue().getProduct().getGiaSp()*c.getValue().quantity} VNĐ</strong></td>
                                            <td class="col-sm-1 col-md-1">
                                                <a id="remove" class="btn btn-danger" href="${pageContext.request.contextPath}/home/removeCart?maSp=${c.getValue().getProduct().getMaSp()}">
                                                    <span class="glyphicon glyphicon-remove"></span> Remove
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td class="text-right"><label>Tổng cộng</label></td>
                                            <td class="text-center"><label><%= (request.getSession().getAttribute(constant.TONG_TIEN))%> VNĐ</label> </td>
                                            <td></td>
                                        </tr>
                                    <!--}-->
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td>
                                            <a class="btn btn-default" href="${pageContext.request.contextPath}/home/index">
                                                <span class="glyphicon glyphicon-shopping-cart"></span> Tiếp tục mua hàng
                                            </a>
                                        </td>
                                        <td>
                                            <button data-toggle="modal" id="btnThanhtoan" data-target="#myModalHorizontal" class="btn btn-info">
                                                Thanh toán <span class="glyphicon glyphicon-play"></span>
                                            </button>
                                            <!-- Modal Thanh toán-->
                                         
                                            <!-- Modal Hóa đơn-->
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                                              
                                              
                      
                    </div>
                </div>
            </div>
        </div>
       

    </body>
</html>
