<%--
  Created by IntelliJ IDEA.
  User: 王运
  Date: 2018/10/29
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body align="center">
    <font size="4">addSpuPage</font>
    <hr>
    flbh1:${spu.flbh1}
    flbh2:${spu.flbh2}
    ppId : ${spu.ppId}
    <hr>
    <form action="<%=request.getContextPath()%>/saveSpu.do"
          method="post" enctype="multipart/form-data">
        <input type="hidden" value="${spu.flbh1}" name="flbh1">
        <input type="hidden" value="${spu.flbh2}" name="flbh2">
        <input type="hidden" value="${spu.ppId}"  name="ppId">
        商品名称：<input type="text" name="shpMch"><br><br><br>
        商品描述：<textarea name="shpMsh"></textarea><br><br><br>
        商品图片：<input type="file" name="imgs" id="fileId">
                 <input type="file" name="imgs"><br><br><br>
            <input type="submit" value="新增">
    </form>
</body>
    <script>
        

    </script>
</html>
