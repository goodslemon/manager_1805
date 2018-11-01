<%--
  Created by IntelliJ IDEA.
  User: 王运
  Date: 2018/10/29
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>
<body align="center">
    <font size="5">spuPage</font>
    <hr>
    一级：<select id="spu_class1_select_id" onchange="load_class2_tm(this.value)">
                <option value="0">请选择</option>
            </select>


    二级：<select id="spu_class2_select_id">
                <option value="0">请选择</option>
            </select>

    品牌：<select id="spu_tm_select_id">
                <option value="0">请选择</option>
            </select>

    <a href="javascript:toAddSpuPage()">新增</a>
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
        $.getJSON("<%=request.getContextPath()%>/json/class_2_"+flmch1+".js",function (json) {
            //清空下拉列表：.empty();
            $("#spu_class2_select_id").empty();
            //追加首选框
            $("#spu_class2_select_id").append(' <option value="0">请选择</option>')
            //循环拼接下拉框
            $(json).each(function (i,data) {
                $("#spu_class2_select_id").append('<option value="'+data.id+'">'+data.flmch2+'</option>');
            })
        })

        $.getJSON("<%=request.getContextPath()%>/json/tm_class_1_"+flmch1+".js",function (json) {
            //清空下拉列表：.empty();
            $("#spu_tm_select_id").empty();
            //追加首选框
            $("#spu_tm_select_id").append(' <option value="0">请选择</option>')
            //循环拼接下拉框
            $(json).each(function (i,data) {
                $("#spu_tm_select_id").append('<option value="'+data.id+'">'+data.ppmch+'</option>');
            })
        })
    }

    function toAddSpuPage(){
        //获取下拉列表的value
        var flbh1 =  $("#spu_class1_select_id").val();
        var flbh2 =  $("#spu_class2_select_id").val();
        var ppId =  $("#spu_tm_select_id").val();
        location.href="<%=request.getContextPath()%>/toAddSpuPage.do?flbh1="+flbh1+"&flbh2="+flbh2+"&ppId="+ppId;
    }

</script>
</html>
