<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="/static/css/public.css" media="all"/>
    <link href="/static/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="childrenBody">
<div class="layui-row layui-col-space10 panel_box">
    <input type="hidden" id="userName" value="${sessionScope.user.nickName}"/>
    <blockquote class="layui-elem-quote title">快捷搜索</blockquote>
    <div class="layui-form component">
        <select name="search" id="search" lay-search lay-filter="searchPage">
        </select>
        <div class="col-lg-6" style="margin: 10px auto;">
            <div class="input-group">
                <input type="text" class="form-control"  placeholder="请输入界面相关字、功能或详细信息">
                <span class="input-group-btn">
						<button class="btn btn-default" type="button" style="height: 34px;">
							  <i class="layui-icon">&#xe615;</i>
						</button>
					</span>
            </div>
        </div>

    </div>
</div>
<blockquote class="layui-elem-quote title">通知</blockquote>
<div class="layui-form component">
    <!--<div class="layui-elem-quote main_btn">-->
    <c:forEach items="${notices}" var="notice">
        <c:if test="${notice.type==2}">
            <div class="layui-timeline-title">
                <h3 class="layui-inline">${notice.title}</h3>
                <span class="layui-badge-rim">
                	<fmt:formatDate pattern="yyyy-MM-dd" value="${notice.createDate}"/>    </span>
            </div>
            <div class="layui-table-tips" style="margin-left: 10px">
                    ${notice.content}
            </div>
            <hr>
        </c:if>
    </c:forEach>
</div>
<div class="layui-row layui-col-space12">
    <div class="layui-col-lg12layui-col-md12">
    </div>
</div>
<script type="text/javascript" src="/static/layui/layui.js"></script>
<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/main.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
</body>
</html>