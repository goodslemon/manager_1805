<%--
  Created by IntelliJ IDEA.
  User: 王运
  Date: 2018/10/31
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<script src="<%=request.getContextPath()%>/js/jquery-1.11.3.min.js"></script>

<head>
    <title>Title</title>
</head>
<body align="center">
        <font size="5">addSkuPage</font>
        <hr>
        <form action="<%=request.getContextPath()%>/saveSku.do" method="post">
            <input type="hidden" name="flbh1" value="${flbh1}">
            <input type="hidden" name="flbh2" value="${flbh2}">
        品牌：<select id="sku_tm_select_id" onchange="selectTmList(this.value)">
                    <option value="0">请选择</option>
                </select>
        商品：<select id="tm__select_id" name="shpId">
                    <option value="0">请选择</option>
                </select>
        <hr>
        <table border="0" cellpadding="0" cellspacing="0" align="center">
            <c:forEach items="${list}" var="attr" varStatus="i">
                <tr>
                    <td><input type="hidden" value="${attr.id}" name="list[${i.index}].shxmId">
                            ${attr.shxmMch}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <c:forEach items="${attr.valueList}" var="val">
                        <td>
                            <input type="radio" name="list[${i.index}].shxzhId" value="${val.id}">
                                ${val.shxzh}${val.shxzhMch}
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>

        sku名称:<input type="text" name="skuMch">
        <br>
        sku价格:<input type="text" name="jg">
        <br>
        sku库存:<input type="text" name="kc">
        <br>
        库存地址:<input type="text" name="kcdz">
        <br>
        <input type="submit">
        </form>
</body>
<script>
    $(function () {
        //通过getJson异步加载Json数据
        var flbh1 = ${flbh1}
        $.getJSON("<%=request.getContextPath()%>/json/tm_class_1_"+flbh1+".js",function (json) {
            $(json).each(function (i,data) {
                $("#sku_tm_select_id").append('<option value="'+data.id+'">'+data.ppmch+'</option>');
            })
        })
    })

    function selectTmList(ppId){
        var flbh2 = ${flbh2}
        $.post("<%=request.getContextPath()%>/selectTmList.do",{"ppId":ppId,"flbh2":flbh2},function (json) {
            $(json).each(function (i,data) {
                //清空下拉列表：.empty();
                $("#tm__select_id").empty();
                //追加首选框
                $("#tm__select_id").append(' <option value="0">请选择</option>')
                //循环拼接下拉框
                $(json).each(function (i,data) {
                    $("#tm__select_id").append('<option value="'+data.id+'">'+data.shpMch+'</option>');
                })
            })
        });
    }


</script>
</html>
