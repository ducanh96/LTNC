
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Dashboard - Ace Admin</title>

        <meta name="description" content="overview &amp; stats" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

        <!-- page specific plugin styles -->

        <!-- text fonts -->
        <link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

        <!-- ace styles -->
        <link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

        <!--[if lte IE 9]>
                <link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
        <![endif]-->
        <link rel="stylesheet" href="assets/css/ace-skins.min.css" />
        <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

        <!--[if lte IE 9]>
          <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
        <![endif]-->

        <!-- inline styles related to this page -->

        <!-- ace settings handler -->
        <script src="assets/js/ace-extra.min.js"></script>

        <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

        <!--[if lte IE 8]>
        <script src="assets/js/html5shiv.min.js"></script>
        <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <jsp:include page="hearder_admin.jsp"></jsp:include>
        <div>
            <div class="dataTables_wrapper form-inline no-footer" id="dynamic-table_wrapper">
            <div class="row">
                <div class="col-xs-6">
                    <div class="dataTables_length" id="dynamic-table_length">
                        <label>Display
                            <select name="dynamic-table_length" aria-controls="dynamic-table" class="form-control input-sm">
                                <option value="10">10</option>
                                <option value="10">50</option>
                                <option value="10">100</option>
                                <option value="10">150</option>
                            </select>
                            records
                        </label>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div id="dynamic-table_filter" class="dataTables_filter" >
                        <label>
                            Search
                            <input type="search" class="form-control input-sm" placeholder aria-controls="dynamic-table">
                        </label>
                    </div>
                </div>

            </div>
            <table>
                <thead>
                    <tr>
                        <th class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </th>
                        <th>Id</th>
                        <th>UserName</th>
                        <th>Pass</th>
                        <th>Address</th>
                        <th>SDT</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>

                    <tr>
                        <td class="center">
                            <label class="pos-rel">
                                <input type="checkbox" class="ace" />
                                <span class="lbl"></span>
                            </label>
                        </td>
                        <td>id1</td>
                        <td>Rita16</td>
                        <td>rita12345678</td>
                        <td>Phường Long Biên- Hà Nội</td>
                        <td>0981234568</td>
                        <td>
                            <div class="hidden-sm hidden-xs btn-group">
                                <<button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                    Thêm
                                    <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                </button>

                                <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                    Sửa
                                    <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                </button>
                                <button class="pull-right btn btn-sm btn-primary btn-white btn-round" type="button">
                                    Xóa
                                    <i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
                                </button>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="col-xs-6"></div>
            <div class="col-xs-6">
                <div class="dataTables_paginate paging_simple_numbers" id="dynamic-table_paginate">
                    <ul class="pagination">
                        <li class="paginate_button previous" aria-controls="dynamic-table" tabindex="0" id="dynamic-table_previous">
                            <a href="#">Previous</a>
                        </li>
                        <li class="paginate_button " aria-controls="dynamic-table" tabindex="0">
                            <a href="#">1</a>
                        </li>
                        <li class="paginate_button " aria-controls="dynamic-table" tabindex="0">
                            <a href="#">2</a>
                        </li>
                        <li class="paginate_button " aria-controls="dynamic-table" tabindex="0">
                            <a href="#">3</a>
                        </li>
                        <li class="paginate_button " aria-controls="dynamic-table" tabindex="0">
                            <a href="#">4</a>
                        </li>
                        <li class="paginate_button " aria-controls="dynamic-table" tabindex="0">
                            <a href="#">5</a>
                        </li>
                        <li class="paginate_button next" aria-controls="dynamic-table" tabindex="0" id="dynamic-table_next">
                            <a href="#">Next</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        </div>
        
            
        <jsp:include page="footer_admin.jsp"></jsp:include>

    </body>
</html>

