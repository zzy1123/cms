<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!-- 类库 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<meta charset="utf-8">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="<%=basePath%>styles/shop/css/bootstrap.min.css"  type="text/css">
	
<!-- Custom CSS -->
<link rel="stylesheet" href="<%=basePath%>styles/shop/css/style.css">
<!-- Custom Fonts -->
<link rel="stylesheet" href="<%=basePath%>styles/shop/font-awesome/css/font-awesome.min.css"  type="text/css">
<link rel="stylesheet" href="<%=basePath%>styles/shop/fonts/font-slider.css" type="text/css">
<link rel="stylesheet" href="<%=basePath%>styles/shop/layer/mobile/need/layer.css" type="text/css">
<link rel="stylesheet" href="<%=basePath%>styles/h-ui/lib/layer/2.1/skin/layer.css" type="text/css">
<link rel="stylesheet" href="<%=basePath%>styles/h-ui/lib/layer/2.1/skin/layer.ext.css" type="text/css">