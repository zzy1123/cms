<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title> 
<%@include file="/styles/common/cssStyle.jsp" %>
<link href="<%=basePath %>styles/h-ui/static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
</head>
<body>
   <center><h1>修改密码</h1></center>
	<div class="header"></div>
	<div class="loginWraper">
	  <div id="loginform" class="loginBox">
	    <form class="form form-horizontal" action="<%=basePath %>user/updatePassword" method="post">
	     
	      <div class="row cl">
	        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
	        <div class="formControls col-xs-8">
	          <input id="password" name="password" type="password" placeholder="密码" class="input-text size-L" nullmsg="请输入密码">
	        </div>
	      </div>
	      <div class="row cl">
	        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
	        <div class="formControls col-xs-8">
	          <input id="password"  type="password" placeholder="请确认密码" class="input-text size-L" nullmsg="请确认密码">
	        </div>
	      </div>
	      <div class="row cl">
	        <div class="formControls col-xs-8 col-xs-offset-3">
	          <label for="online">
	            
	            
	           
	        </div>
	      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <input name="" type="button" onclick="dian()" class="btn btn-success radius size-L" value="&nbsp;确&nbsp;&nbsp;&nbsp;&nbsp;定&nbsp;">
          <input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
       
        </div>
     
      </div>
    </form>
  </div>
</div>
   
<div class="footer"><h3>修改密码后将退出登录</h3></div>
<%@include file="/styles/common/jsStyle.jsp" %>
</body>
<script type="text/javascript">
function dian(){
	alert("修改成功，请重新登录！");
	$("form").submit();
	
}
</script>
</html>