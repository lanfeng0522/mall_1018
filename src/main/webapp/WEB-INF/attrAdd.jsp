<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<title>硅谷商城</title>
</head>
<body>
	<form action="attr_add.do" enctype="multipart/form-data" method="post">
		<input type="text" value="${flbh2 }" name="flbh2">
		<!--
			A、页面表达式 ognl(object gram navigation language)
		 	   list_attr[0].list_value[0].shxzh
		 	B、mvc如何封装
			   setter	 	
		-->
		<table border="1" width="600px">
			<tr><td>属性名：<input type="text" name="list_attr[0].shxm_mch"></td><td></td><td>添加属性值</td></tr>
			<tr><td>属性值：<input type="text" name="list_attr[0].list_value[0].shxzh"></td><td>单位：<input type="text" name="list_attr[0].list_value[0].shxzh_mch"></td><td>删除</td></tr>
			<tr><td>属性值：<input type="text" name="list_attr[0].list_value[1].shxzh"></td><td>单位：<input type="text" name="list_attr[0].list_value[1].shxzh_mch"></td><td>删除</td></tr>
		</table>
		
		<table border="1" width="600px">
			<tr><td>属性名：<input type="text" name="list_attr[1].shxm_mch"></td><td></td><td>添加属性值</td></tr>
			<tr><td>属性值：<input type="text" name="list_attr[1].list_value[0].shxzh"></td><td>单位：<input type="text" name="list_attr[1].list_value[0].shxzh_mch"></td><td>删除</td></tr>
			<tr><td>属性值：<input type="text" name="list_attr[1].list_value[1].shxzh"></td><td>单位：<input type="text" name="list_attr[1].list_value[1].shxzh_mch"></td><td>删除</td></tr>
		</table>
		
		添加：<input type="submit" value="提交">
	</form>
</body>
</html>