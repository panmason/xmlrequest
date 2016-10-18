<%--
  Created by IntelliJ IDEA.
  User: Peter
  Date: 10/18/2016
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>XMLHttpRequest方式请求数据</title>
    <link rel="stylesheet" href="<c:url value="/bower_components/bootstrap/dist/css/bootstrap.min.css"/> ">
    <link rel="stylesheet" href="<c:url value="/bower_components/fontawesome/css/font-awesome.min.css"/> ">
    <link rel="stylesheet" href="<c:url value="/bower_components/DataTables/media/css/jquery.dataTables.css"/> ">
    <link rel="stylesheet" href="<c:url value="/css/global.css"/> ">
    <link rel="stylesheet" href="<c:url value="/css/buttons.css"/> ">
    <base href="<%=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()%><c:url value="/"/>"/>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
</head>
<body>
<div class="jumbotron" style="height: 45%;">
    <h1 class="text-left">您好!</h1>
    <p class="text-left">本页的数据请求方式为XMLHttpRequest：</p>
</div>

<div class="container" style="padding: 0 20px;">
    <h3 class="page-title">
        数据预览
        <small>本页以表格的形式显示所有数据</small>
    </h3>
    <ol class="breadcrumb">
        <li><i class="fa icon-home"></i><a href="/">主页</a></li>
        <li class="font-12">数据预览</li>
    </ol>
    <div class="panel panel-primary" style="float:right;width: 100%;">
        <div class="panel-heading">
            <h3 class="panel-title"><i class="icon-table"></i> 数据列表</h3>
        </div>
        <div class="panel-body">
            <div id="demo"></div>

        </div>
    </div>
</div>
<%--<div class="page-footer" style="position: fixed;">--%>
    <%--2016 © by Peter Pan.--%>
    <%--<span id="back-to-top" class="go-top">--%>
        <%--<i class="fa icon-angle-up"></i>--%>
    <%--</span>--%>
<%--</div>--%>
<script type="text/javascript" src="<c:url value="/bower_components/jquery/dist/jquery.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/bower_components/bootstrap/dist/js/bootstrap.min.js"/> "></script>
<script type="text/javascript"
        src="<c:url value="/bower_components/DataTables/media/js/jquery.dataTables.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/js/xmlhttprequest.js"/> "></script>
</body>
</html>
