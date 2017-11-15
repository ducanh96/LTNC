<%-- 
    Document   : gallery
    Created on : Nov 14, 2017, 2:57:45 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Gallery - Ace Admin</title>

        <meta name="description" content="responsive photo gallery using colorbox" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <!-- bootstrap & fontawesome -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

        <!-- page specific plugin styles -->
        <link rel="stylesheet" href="assets/css/colorbox.min.css" />

        <!-- text fonts -->
        <link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

        <!-- ace styles -->
        <link rel="stylesheet" href="assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

        <link rel="stylesheet" href="assets/css/ace-skins.min.css" />
        <link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
        <script src="assets/js/ace-extra.min.js"></script>
    </head>

    <body class="no-skin">
         <jsp:include page="header_admin.jsp"></jsp:include>
         
         <div>
             <button type="button" class="btn btn-1 btn-block btn-success"><i class="btn-link picture"></i>Upload photpgrap</button>
         </div>
          
        <jsp:include page="footer_admin.jsp"></jsp:include>
        
        
       
        <script src="assets/js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript">
                    if ('ontouchstart' in document.documentElement)
                        document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- page specific plugin scripts -->
        <script src="assets/js/jquery.colorbox.min.js"></script>

        <!-- ace scripts -->
        <script src="assets/js/ace-elements.min.js"></script>
        <script src="assets/js/ace.min.js"></script>

        <!-- inline scripts related to this page -->
        <script type="text/javascript">
                    jQuery(function ($) {
                        var $overflow = '';
                        var colorbox_params = {
                            rel: 'colorbox',
                            reposition: true,
                            scalePhotos: true,
                            scrolling: false,
                            previous: '<i class="ace-icon fa fa-arrow-left"></i>',
                            next: '<i class="ace-icon fa fa-arrow-right"></i>',
                            close: '&times;',
                            current: '{current} of {total}',
                            maxWidth: '100%',
                            maxHeight: '100%',
                            onOpen: function () {
                                $overflow = document.body.style.overflow;
                                document.body.style.overflow = 'hidden';
                            },
                            onClosed: function () {
                                document.body.style.overflow = $overflow;
                            },
                            onComplete: function () {
                                $.colorbox.resize();
                            }
                        };

                        $('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
                        $("#cboxLoadingGraphic").html("<i class='ace-icon fa fa-spinner orange fa-spin'></i>");//let's add a custom loading icon


                        $(document).one('ajaxloadstart.page', function (e) {
                            $('#colorbox, #cboxOverlay').remove();
                        });
                    })
        </script>
    </body>
</html>
