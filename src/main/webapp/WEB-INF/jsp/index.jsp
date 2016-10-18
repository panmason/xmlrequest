<%--
  Created by IntelliJ IDEA.
  User: Peter
  Date: 10/18/2016
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>主页</title>
    <link rel="stylesheet" href="<c:url value="/bower_components/bootstrap/dist/css/bootstrap.min.css"/> ">
    <link rel="stylesheet" href="<c:url value="/bower_components/fontawesome/css/font-awesome.min.css"/> ">
    <link rel="stylesheet" href="<c:url value="/css/global.css"/> ">
    <link rel="stylesheet" href="<c:url value="/css/buttons.css"/> ">
    <base href="<%=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()%><c:url value="/"/>"/>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
</head>
<body>
<div class="jumbotron" style="height: 45%;">
    <h1 class="text-left">您好!</h1>
    <p class="text-left">本程序展现了原生Ajax的实现与jQuery中的Ajax的使用：</p>
</div>
<div class="page-container">
<div class="row">
    <div class="col-md-6">
        <h2><i class="icon-book"></i> XmlHttpRequest</h2>

        <p>XMLHttpRequest最早在IE5中以ActiveX对象的形式实现的。现在，FireFox、Safari、Opera、Konqueror和IE都实现了XMLHttpRequest对象的行为。XMLHttpRequest不是一个W3C的标准，所有可以采用多种方法使用JavaScript来创建XMLHttpRequest的对象，IE把XMLHttpRequest作为一个ActiveX的对象。 </p>

        <p><a class="button button-rounded  button-flat-primary" href="loader/guideFileLoader" role="button">查看示例</a></p>
    </div>
    <div class="col-md-6">
        <h2><i class="icon-flag"></i> jQuery Ajax</h2>

        <p>jQuery 对 Ajax 操作进行了封装, 在 jQuery 中最底层的方法时 $.ajax(), 第二层是 load(), $.get() 和 $.post(), 第三层是 $.getScript() 和 $.getJSON()。</p><br>

        <p><a class="button button-rounded  button-flat-primary" href="loader/fileLoader" role="button">查看示例</a></p>
    </div>
</div>
</div>
<div class="page-footer" style="position: fixed;">
    2016 © by Peter Pan.
    <span id="back-to-top" class="go-top">
        <i class="fa icon-angle-up"></i>
    </span>
</div>

</body>
</html>
