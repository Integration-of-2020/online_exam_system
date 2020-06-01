<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="loginHtml">
<head>
    <meta charset="utf-8">
    <title>在线考试系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="/static/css/login.css" media="all"/>
</head>
<body>
<div id="bg-body"></div>
<div class="register">
    <h1><img src="/static/img/logo.png" style="width: 24px;margin-right: 7px;"> 在线考试系统学生注册</h1>
    <form class="layui-form" action="/register" method="post">
        <div class="layui-form-item">
            <input class="layui-input" name="nickName"  placeholder="请输入用户名" lay-verify="required"
                   type="text"
                   autocomplete="off">
        </div>
        <div class="layui-form-item">
            <input class="layui-input" name="loginName" placeholder="请输入登录账号" lay-verify="required"
                   type="text"
                   autocomplete="off">
        </div>
        <div class="layui-form-item">
            <input class="layui-input" name="password" id="password" placeholder="请输入密码" lay-verify="required"
                   type="password"
                   autocomplete="off">
        </div>
        <div class="layui-form-item">
            <input class="layui-input" name="password1" id="password1" placeholder="确认密码" lay-verify="required"
                   type="password"
                   autocomplete="off" onblur="checkPSW()">
        </div>
        <div class="layui-form-item">
            <input class="layui-input" name="tel" placeholder="请输入手机号码" lay-verify="required"
                   type="text" autocomplete="off" maxlength="11" >
        </div>
        <div class="layui-form-item">
            <input class="layui-input" name="email" placeholder="请输入邮箱" lay-verify="required"
                   type="text" autocomplete="off" maxlength="50" >
        </div>

        <div class="layui-form-item">
            <input type="button" class="layui-btn fa-registered" value="去登录"  onclick="toLogin()" style="padding: 0 28px;"/>
            <button class="layui-btn fa-registered" lay-submit="" lay-filter="register"
                    style="margin-left: 99px; width: 98px">注册</button>
        </div>
    </form>
</div>
<script type="text/javascript" src="/static/layui/layui.js"></script>
<script type="text/javascript" src="/static/js/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/register.js"></script>
<script>
    function checkPSW(){
        var password = $("#password").val();
        var password1 = $("#password1").val();
        if(password != "" && password1 != "" && password != password1 ){
            $("#password1").val("");
            alert("输入的密码不一致！！！");
        }
    }
    function toLogin() {
        window.location.href ="/login";
    }
</script>
</body>
</html>