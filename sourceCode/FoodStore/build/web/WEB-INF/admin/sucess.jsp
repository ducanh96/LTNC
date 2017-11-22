<%-- 
    Document   : sucess
    Created on : Nov 18, 2017, 10:55:43 AM
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
        thanh cong roi
        <img src="<c:url value="/resourcesAdmin/uploads/${fileUpload}"/>" 
             alt="Kênh Lập Trình" title="Kênh Lập Trình">
    </body>
</html>
