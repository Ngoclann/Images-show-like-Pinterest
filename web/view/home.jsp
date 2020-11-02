
<%-- 
    Document   : home
    Created on : Oct 1, 2020, 12:06:19 AM
    Author     : ViruSs0209
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.servletContext.contextPath}" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${ctx}/public/css/index.css" rel="stylesheet" type="text/css" />
    </head>
    <body>   
        <h2 style="text-align: center;margin: 20px 0px;font-family: segoe ui light; color: white;">Pinterest Clone By Dynamo</h2>
        <div id="container">
            <c:forEach items="${articles}" var="article">
                <div class="article num-${article.id}">
                    <div class="content">
                        <img src="${ctx}/public/image/${article.image}" />
                        <p>This'is a picture</p>
                    </div>
                </div>
            </c:forEach>       
        </div>
        <div class="loader">Loading ...</div>
        <script src="${ctx}/public/js/index.js">
        </script>
    </body>
</html>
