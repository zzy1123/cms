<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String pathJs = request.getContextPath();
String basePathJs = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+pathJs+"/";
%>
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/static/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script>
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/jquery.validation/1.14.0/messages_zh.min.js"></script>
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="<%=basePathJs %>styles/h-ui/lib/zTree/v3/js/jquery.ztree.all-3.5.min.js"></script>

<!-- My97 -->
<script type="text/javascript" src="<%=basePathJs %>styles/My97DatePicker/WdatePicker.js"></script>
<!-- 表单校验 -->
<script type="text/javascript" src="<%=basePathJs %>styles/js/Validform_v5.3.2_min.js"></script>
