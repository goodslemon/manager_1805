<%--
  Created by IntelliJ IDEA.
  User: 王运
  Date: 2018/10/30
  Time: 13:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
<body align="center">
    AttrPage
    <hr>
    一级：<select id="spu_class1_select_id" onchange="load_class2_tm(this.value)">
        <option value="0">请选择</option>
    </select>


    二级：<select id="spu_class2_select_id" onchange="queryByClass2(this.value)">
        <option value="0">请选择</option>
    </select>

    <div id="attrListDiv">


    </div>
    <a href="javascript:toAddAttrPage()">新增</a>
</body>
<script>
    //页面加载函数
    $(function () {
        //通过getJson异步加载Json数据
        $.getJSON("<%=request.getContextPath()%>/json/class_1.js",function (json) {
            $(json).each(function (i,data) {
                $("#spu_class1_select_id").append('<option value="'+data.id+'">'+data.flmch1+'</option>');
            })
        })
    })


    //通过getJson 异步级联加载Json数据
    function load_class2_tm(flmch1) {
        $.getJSON("<%=request.getContextPath()%>/json/class_2_" + flmch1 + ".js", function (json) {
            //清空下拉列表：.empty();
            $("#spu_class2_select_id").empty();
            //追加首选框
            $("#spu_class2_select_id").append(' <option value="0">请选择</option>')
            //循环拼接下拉框
            $(json).each(function (i, data) {
                $("#spu_class2_select_id").append('<option value="' + data.id + '">' + data.flmch2 + '</option>');
            })
        })

    }
    function toAddAttrPage() {
        //获取下拉列表的value
        var flbh2 = $("#spu_class2_select_id").val();
        location.href = "<%=request.getContextPath()%>/toAddAttrPage.do?flbh2=" + flbh2;
    }

    function queryByClass2(flbh2){
        $.post("<%=request.getContextPath()%>/queryByClass2.do",{"flbh2":flbh2},function (data) {
            $("#attrListDiv").html(data)
        })
    }
</script>

</html>
