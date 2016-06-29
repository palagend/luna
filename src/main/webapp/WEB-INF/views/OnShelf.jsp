<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
    <head>
        <meta charset="UTF-8"/>
        <title>发布基础产品</title>
        <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css"/></head>
    <body>
        <form role="form" enctype="multipart/form-data" action="<%=basePath%>product/on-shelf" method="post">
            <div class="form-group">
                <label for="name">产品名称</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="请输入产品名称" required/>
            </div>
            <div class="form-group">
                <label for="price">产品价格(分)</label>
                <input type="text" class="form-control" id="price" name="price" placeholder="请输入产品名称" pattern="^[1-9]+[0-9]*$" required/>
            </div>
            <div class="form-group">
                <label for="code">产品编码</label>
                <input type="text" class="form-control" id="code" name="code" placeholder="请输入产品编码" required/>
            </div>
            <div class="form-group">
                <label for="notice">注意事项</label>
                <input type="text" class="form-control" id="notice" name="notice" placeholder="请输入注意事项" required/>
            </div>
            <div class="form-group">
                <label for="inputfile">文件输入</label>
                <input type="file" id="inputfile" name="file"/>
                <p class="help-block" >请选择产品图片并上传</p>
            </div>
            <div class="form-group">
                <label>选择组合包(多选)</label>
                <select name="pkgIds" multiple="multiple" required>
                    <option value="1">基本包</option>
                    <option value="2">DOX高清影视</option>
                    <option value="3">高清求索</option>
                    <option value="4">高清体育</option>
                    <option value="5">文广高清影视</option>
                    <option value="6">优朋高清影视</option>
                    <option value="7">华数高清影视</option>
                    <option value="8">天华高清影视</option>
                    <option value="9">高清测试包</option>
                    <option value="10">高清互动A</option>
                    <option value="11">高清互动B</option>
                    <option value="12">20M宽带</option>
                    <option value="13">50M宽带</option>
                </select>
            </div>
            <div class="form-group">
                <label>热卖程度</label>
                <select name="rank" required>
                    <option value="hot">热卖</option>
                    <option value="primary">普通</option>
                    <option value="other">其他</option>
                </select>
            </div>
            <input type="submit" class="btn btn-default" value="确认发布产品"/>
        </form>
    </body>
</html>
