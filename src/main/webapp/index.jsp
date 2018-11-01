<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/jquery-easyui/themes/icon.css">
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-easyui/jquery.easyui.min.js"></script>
    <title>Insert title here</title>
</head>
<body class="easyui-layout">
<div data-options="region:'north',title:'首页',split:true" style="height:100px;">
    <center>
        <font size="6" color="red" >Jd后台管理系统</font>
    </center>
</div>
<div data-options="region:'west',title:'目录',split:true" style="width:200px;">
    <ul id="tree" class="easyui-tree">
        <li>
                <li>
                    <span><a href="javascript:addTabs('spu管理','<%=request.getContextPath() %>/toSpuPage.do')">spu管理</a></span>
                </li>
                <li>
                    <span><a href="javascript:addTabs('spu属性管理','<%=request.getContextPath() %>/toAttrPage.do')">spu属性管理</a></span>
                </li>
                <li>
                    <span><a href="javascript:addTabs('sku管理','<%=request.getContextPath() %>/toSkuPage.do')">sku管理</a></span>
                </li>
            </li>
        </ul>
</div>
<div data-options="region:'center',title:'数据'" style="padding:5px;background:#eee;">
    <div id="tabs" class="easyui-tabs" data-options="fit:true">
        <div title="Tab1" style="padding:20px;display:none;">
            <img src="<%=request.getContextPath() %>/timg.jpg" width="1000px" height="500"/>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">

    function addTabs(title,url){

        if($('#tabs').tabs("exists",title)){
            $('#tabs').tabs("select",title)
        }else{
            $('#tabs').tabs('add',{
                title:title,
                content:'<iframe style="width:100%;height:100%;position:relative;" src="'+url+'" frameborder="0" scrolling="true" ></iframe>',
                closable:true,
                tools:[{
                    iconCls:'icon-mini-refresh',
                    handler:function(){
                        var tab = $('#tabs').tabs("getSelected");
                        $('#tabs').tabs('update', {
                            tab: tab,
                            options: {
                            }
                        });
                    }
                }]
            });
        }
    }
</script>
</html>