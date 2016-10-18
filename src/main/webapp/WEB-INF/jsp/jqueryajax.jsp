<%--
  Created by IntelliJ IDEA.
  User: Peter
  Date: 10/18/2016
  Time: 8:23 PM
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
    <p class="text-left">本页的数据请求方式为jQuery中的Ajax：</p>
</div>
<div class="page-container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-title">
                    <p class="text-center">$.ajax({})方式请求</p>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            <p class="text-center">常用get方式向服务器请求一个字符串，返回后将在子啊页面显示</p>
                        </div>
                        <div class="col-md-6">
                            <button type="button" class="btn btn-default" id="ajaxGet">GET请求</button>
                            <button type="button" class="btn btn-primary" id="ajaxPost">POST请求</button>
                            <button type="button" class="btn btn-success" id="ajaxPut">PUT请求</button>
                            <button type="button" class="btn btn-danger" id="ajaxHead">HEAD请求</button>
                            <button type="button" class="btn btn-warning" id="changAjax">Ajax请求被修改</button>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 1%">
                        <div class="alert alert-info hide" role="alert" id="info"><strong id="result"></strong><span
                                id="resultData"></span></div>
                        <div class="alert alert-danger hide" role="alert" id="completeShow">
                            <strong id="complete"></strong>complete info
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-title">
                    <p class="text-center">其他方法</p>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-12">
                                <div class="col-md-6">
                                    <p class="text-center">$.get(),$.post()方法常用，可自行查看源码，样例为load()方法</p>
                                </div>
                                <div class="col-md-6">
                                    <button type="button" class="btn btn-default" id="load">load请求</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div id="loadDom"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/bower_components/jquery/dist/jquery.min.js"/> "></script>
<script type="text/javascript" src="<c:url value="/js/jqueryajax.js"/> "></script>
</body>
</html>
