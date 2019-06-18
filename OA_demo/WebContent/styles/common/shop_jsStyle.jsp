<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String pathJs = request.getContextPath();
String basePathJs = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+pathJs+"/";
%>

<!-- jQuery and Modernizr-->
<script src="<%=basePathJs%>styles/shop/js/jquery-2.1.1.js"></script>
	
<!-- Core JavaScript Files -->  	 
<script src="<%=basePathJs%>styles/shop/js/bootstrap.min.js"></script>
<script src="<%=basePathJs%>styles/shop/layer/layer.js"></script>
