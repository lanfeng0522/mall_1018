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
<title>guigushangcheng</title>
</head>
<body>

	属性列表内嵌页<br>
	<c:forEach items="${list_attr }" var="attr">
		${attr.shxm_mch }:
		<c:forEach items="${attr.list_value }" var="val">
			${val.shxzh }${val.shxzh_mch }
		</c:forEach>
		<br>
	</c:forEach>
</body>
</html>