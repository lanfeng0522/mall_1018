<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/"; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	
	$(function (){
		var flbh1 = "${flbh1}";//js中使用el表达式必须加双引号
		$.getJSON("js/json/tm_class_1_"+flbh1+".js",function(data){
			$("#sku_tm_select").empty();
			$(data).each(function(i,json){
				$("#sku_tm_select").append("<option value="+json.id+">"+json.ppmch+"</option>");
			});
		});
	});
	
	function get_spu_list(pp_id){
		var flbh2 = "${flbh2}";
		$.post("get_spu_list.do",{pp_id:pp_id,flbh2:flbh2},function(data){
			$("#spu_list").empty();
			$(data).each(function(i,json){
				$("#spu_list").append("<option value="+json.id+">"+json.shp_mch+"</option>");
			});
		});
	}
	
	function show_val(attr_id,checked){
		if(checked){
			$("#val_"+attr_id).show();
		}else{
			$("#val_"+attr_id).hide();
		}
	}
</script>
<title>guigushangcheng</title>
</head>
<body>
	<form action="save_sku.do" enctype="multipart/form-data" method="post">
		<input type="hidden" name="flbh1" value="${flbh1}">
		<input type="hidden" name="flbh2" value="${flbh2}">
		品牌：<select id="sku_tm_select" name="pp_id" onchange="get_spu_list(this.value)"></select>
		商品：<select id="spu_list" name="Id"></select>
		<hr>
		分类属性：<br>
		<c:forEach items="${list_attr }" var="attr" varStatus="status">
			<input name="list_attr[${status.index}].shxm_id" type="checkbox" value="${attr.id }"  onclick="show_val(${attr.id},this.checked)">${attr.shxm_mch }
		</c:forEach>
		<br>
		<c:forEach items="${list_attr }" var="attr" varStatus="status">
			<div id="val_${attr.id}" style="display: none;">
				<c:forEach items="${attr.list_value }" var="val">
					<input name="list_attr[${status.index}].shxzh_id" type="radio" value="${val.id }">${val.shxzh }${val.shxzh_mch }
				</c:forEach>
			</div> 
		</c:forEach>
		
		商品库存名称：<input type="text" name="sku_mch"><br>
		商品库存数量：<input type="text" name="kc"><br>
		商品库存价格：<input type="text" name="jg"><br>
		商品库存地址：<input type="text" name="kcdz"><br>
		<input type="submit" value="添加">
	</form>
</body>
</html>