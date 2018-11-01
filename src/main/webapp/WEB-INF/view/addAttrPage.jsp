<%--
  Created by IntelliJ IDEA.
  User: 王运
  Date: 2018/10/30
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body align="center">
    addAttrPage
    <hr>
    <form action="<%=request.getContextPath()%>/saveAttr.do" method="post">
        <input type="hidden" name="flbh2" value="${flbh2}">
        <table border="1" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td>属性名：<input type="text" name="attrList[0].shxmMch"></td>
            </tr>
            <tr>
                <td>属性值：<input type="text" name="attrList[0].valueList[0].shxzh" ></td>
                <td>单位：<input type="text"   name="attrList[0].valueList[0].shxzhMch"></td>
            </tr>
            <tr>
                <td>属性值：<input type="text" name="attrList[0].valueList[1].shxzh"></td>
                <td>单位：<input type="text"   name="attrList[0].valueList[1].shxzhMch"></td>
            </tr>
        </table>
        <br>
        <table border="1" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td>属性名：<input type="text" name="attrList[1].shxmMch" ></td>
            </tr>
            <tr>
                <td>属性值：<input type="text" name="attrList[1].valueList[0].shxzh"></td>
                <td>单位：<input type="text" name="attrList[1].valueList[0].shxzhMch"></td>
            </tr>
            <tr>
                <td>属性值：<input type="text" name="attrList[1].valueList[1].shxzh"></td>
                <td>单位：<input type="text" name="attrList[1].valueList[1].shxzhMch"></td>
            </tr>
        </table>
        <input type="submit">
    </form>
</body>
</html>
