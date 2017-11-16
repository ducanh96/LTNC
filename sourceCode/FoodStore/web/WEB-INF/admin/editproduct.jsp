<%-- 
    Document   : content-home
    Created on : Nov 15, 2017, 3:10:23 PM
    Author     : Duc Anh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header_admin.jsp"></jsp:include>
            <div class="main-container ace-save-state" id="main-container">
                <script type="text/javascript">
                    try {
                        ace.settings.loadState('main-container')
                    } catch (e) {
                    }
                </script>

                <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
                    <script type="text/javascript">
                        try {
                            ace.settings.loadState('sidebar')
                        } catch (e) {
                        }
                    </script>

                    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
                        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                            <button class="btn btn-success">
                                <i class="ace-icon fa fa-signal"></i>
                            </button>

                            <button class="btn btn-info">
                                <i class="ace-icon fa fa-pencil"></i>
                            </button>

                            <button class="btn btn-warning">
                                <i class="ace-icon fa fa-users"></i>
                            </button>

                            <button class="btn btn-danger">
                                <i class="ace-icon fa fa-cogs"></i>
                            </button>
                        </div>

                        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                            <span class="btn btn-success"></span>

                            <span class="btn btn-info"></span>

                            <span class="btn btn-warning"></span>

                            <span class="btn btn-danger"></span>
                        </div>
                    </div><!-- /.sidebar-shortcuts -->

                    <ul class="nav nav-list">
                        <li class="">
                            <a href="index.html">
                                <i class="menu-icon fa fa-tachometer"></i>
                                <span class="menu-text"> Loại món ăn </span>
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="#" class="dropdown-toggle">
                                <i class="menu-icon fa fa-desktop"></i>
                                <span class="menu-text">
                                    UI &amp; Elements
                                </span>

                                <b class="arrow fa fa-angle-down"></b>
                            </a>

                            <b class="arrow"></b>

                            <ul class="submenu">
                                <li class="">
                                    <a href="#" class="dropdown-toggle">
                                        <i class="menu-icon fa fa-caret-right"></i>

                                        Layouts
                                        <b class="arrow fa fa-angle-down"></b>
                                    </a>

                                    <b class="arrow"></b>

                                    <ul class="submenu">
                                        <li class="">
                                            <a href="top-menu.html">
                                                <i class="menu-icon fa fa-caret-right"></i>
                                                Top Menu
                                            </a>

                                            <b class="arrow"></b>
                                        </li>

                                        <li class="">
                                            <a href="two-menu-1.html">
                                                <i class="menu-icon fa fa-caret-right"></i>
                                                Two Menus 1
                                            </a>

                                            <b class="arrow"></b>
                                        </li>

                                        <li class="">
                                            <a href="two-menu-2.html">
                                                <i class="menu-icon fa fa-caret-right"></i>
                                                Two Menus 2
                                            </a>

                                            <b class="arrow"></b>
                                        </li>

                                        <li class="">
                                            <a href="mobile-menu-1.html">
                                                <i class="menu-icon fa fa-caret-right"></i>
                                                Default Mobile Menu
                                            </a>

                                            <b class="arrow"></b>
                                        </li>

                                        <li class="">
                                            <a href="mobile-menu-2.html">
                                                <i class="menu-icon fa fa-caret-right"></i>
                                                Mobile Menu 2
                                            </a>

                                            <b class="arrow"></b>
                                        </li>

                                        <li class="">
                                            <a href="mobile-menu-3.html">
                                                <i class="menu-icon fa fa-caret-right"></i>
                                                Mobile Menu 3
                                            </a>

                                            <b class="arrow"></b>
                                        </li>
                                    </ul>
                                </li>

                             
                                <li class="">
                                    <a href="nestable-list.html">
                                        <i class="menu-icon fa fa-caret-right"></i>
                                        Nestable Lists
                                    </a>

                                    <b class="arrow"></b>
                                </li>

                                <li class="">
                                    <a href="#" class="dropdown-toggle">
                                        <i class="menu-icon fa fa-caret-right"></i>

                                        Three Level Menu
                                        <b class="arrow fa fa-angle-down"></b>
                                    </a>

                                    <b class="arrow"></b>

                                    <ul class="submenu">
                                        <li class="">
                                            <a href="#">
                                                <i class="menu-icon fa fa-leaf green"></i>
                                                Item #1
                                            </a>

                                            <b class="arrow"></b>
                                        </li>

                                        <li class="">
                                            <a href="#" class="dropdown-toggle">
                                                <i class="menu-icon fa fa-pencil orange"></i>

                                                4th level
                                                <b class="arrow fa fa-angle-down"></b>
                                            </a>

                                            <b class="arrow"></b>

                                            <ul class="submenu">
                                                <li class="">
                                                    <a href="#">
                                                        <i class="menu-icon fa fa-plus purple"></i>
                                                        Add Product
                                                    </a>

                                                    <b class="arrow"></b>
                                                </li>

                                                <li class="">
                                                    <a href="#">
                                                        <i class="menu-icon fa fa-eye pink"></i>
                                                        View Products
                                                    </a>

                                                    <b class="arrow"></b>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                  
                      
                       
                       

                       
                   
                    </ul><!-- /.nav-list -->

                    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
                        <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
                    </div>
                </div>

                <div class="main-content">
                    <div class="main-content-inner">
                        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                            <ul class="breadcrumb">
                                <li>
                                    <i class="ace-icon fa fa-home home-icon"></i>
                                    <a href="#">Home</a>
                                </li>

                                <li>
                                    <a href="#">Other Pages</a>
                                </li>
                                <li class="active">Blank Page</li>
                            </ul><!-- /.breadcrumb -->

                            <div class="nav-search" id="nav-search">
                                <form class="form-search">
                                    <span class="input-icon">
                                        <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                                        <i class="ace-icon fa fa-search nav-search-icon"></i>
                                    </span>
                                </form>
                            </div><!-- /.nav-search -->
                        </div>

                        <div class="page-content">
                            <div class="ace-settings-container" id="ace-settings-container">
                                <div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
                                    <i class="ace-icon fa fa-cog bigger-130"></i>
                                </div>

                                <div class="ace-settings-box clearfix" id="ace-settings-box">
                                    <div class="pull-left width-50">
                                        <div class="ace-settings-item">
                                            <div class="pull-left">
                                                <select id="skin-colorpicker" class="hide">
                                                    <option data-skin="no-skin" value="#438EB9">#438EB9</option>
                                                    <option data-skin="skin-1" value="#222A2D">#222A2D</option>
                                                    <option data-skin="skin-2" value="#C6487E">#C6487E</option>
                                                    <option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
                                                </select>
                                            </div>
                                            <span>&nbsp; Choose Skin</span>
                                        </div>

                                        <div class="ace-settings-item">
                                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-navbar" autocomplete="off" />
                                            <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                                        </div>

                                        <div class="ace-settings-item">
                                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-sidebar" autocomplete="off" />
                                            <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                                        </div>

                                        <div class="ace-settings-item">
                                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-breadcrumbs" autocomplete="off" />
                                            <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                                        </div>

                                        <div class="ace-settings-item">
                                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" autocomplete="off" />
                                            <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                                        </div>

                                        <div class="ace-settings-item">
                                            <input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
                                            <label class="lbl" for="ace-settings-add-container">
                                                Inside
                                                <b>.container</b>
                                            </label>
                                        </div>
                                    </div><!-- /.pull-left -->

                                    <div class="pull-left width-50">
                                        <div class="ace-settings-item">
                                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
                                            <label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
                                        </div>

                                        <div class="ace-settings-item">
                                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
                                            <label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
                                        </div>

                                        <div class="ace-settings-item">
                                            <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" autocomplete="off" />
                                            <label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
                                        </div>
                                    </div><!-- /.pull-left -->
                                </div><!-- /.ace-settings-box -->
                            </div><!-- /.ace-settings-container -->

                            <div class="row">
                                <div class="col-xs-12">
                                    <!-- PAGE CONTENT BEGINS -->
                                    <!--bat dau tu day-->
                                    <div class="row">
                                        <div class="col-xs-12">
                                            <table id="simple-table" class="table  table-bordered table-hover">
                                                <thead>
                                                    <tr>

                                                        <th class="detail-col">STT</th>

                                                        <th>Tên loại món</th>
                                                        <th class="hidden-480">Số món</th>




                                                        <th></th>
                                                    </tr>
                                                </thead>

                                                <tbody>

                                                <c:forEach var="item" items="${loaisp}" varStatus="loop">

                                                    <tr>
                                                        <td class="center">
                                                            <c:out value="${loop.index+1}"></c:out>
                                                            </td>


                                                            <td>${item.tenLoaiSp}</td>
                                                        <td class="hidden-480"><a href="${pageContext.request.contextPath}/admin/products/${item.id}" data-toggle="modal">${item.getSanphams().size()}</a></td>



                                                        <td>
                                                            <div class="hidden-sm hidden-xs btn-group">


                                                                <button class="btn btn-xs btn-info">
                                                                    <i class="ace-icon fa fa-pencil bigger-120"></i>
                                                                </button>

                                                                <button class="btn btn-xs btn-danger">
                                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                </button>


                                                            </div>

                                                            <div class="hidden-md hidden-lg">
                                                                <div class="inline pos-rel">
                                                                    <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                                        <i class="ace-icon fa fa-cog icon-only bigger-110"></i>
                                                                    </button>

                                                                    <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">


                                                                        <li>
                                                                            <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                                <span class="green">
                                                                                    <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>

                                                                        <li>
                                                                            <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                    <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                                </span>
                                                                            </a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>









                                            </tbody>
                                        </table>
                                    </div><!-- /.span -->
                                </div><!-- /.row -->




                                <!-- PAGE CONTENT ENDS -->
                            </div><!-- /.col -->
                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->

            <jsp:include page="footer_admin.jsp"></jsp:include>

                <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                    <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
                </a>
            </div><!-- /.main-container -->

            <!-- basic scripts -->

            <!--[if !IE]> -->
            <script src="<c:url value="/resourcesAdmin/js/jquery-2.1.4.min.js"/>"></script>

        <!-- <![endif]-->

        <!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
        <script type="text/javascript">
                        if ('ontouchstart' in document.documentElement)
                            document.write("<script src='/resourcesAdmin/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script src="<c:url value="/resourcesAdmin/js/bootstrap.min.js"/>"></script>

        <!-- page specific plugin scripts -->

        <!-- ace scripts -->
        <script src="<c:url value="/resourcesAdmin/js/ace-elements.min.js"/>"></script>
        <script src="<c:url value="/resourcesAdmin/js/ace.min.js"/>"></script>



    </body>
</html>
