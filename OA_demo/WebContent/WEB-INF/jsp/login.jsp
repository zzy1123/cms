<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生心理危机预警系统</title> 
<%@include file="/styles/common/cssStyle.jsp" %>
<link href="<%=basePath %>styles/h-ui/static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="header"></div>
	<div class="loginWraper">
	  <div id="loginform" class="loginBox"><center><h1 style="font-size:40px;font-family:Microsoft yahei;font-weight:bold;color:#FFFACD">学生心理危机预警系统</h1></center>
	    <form class="form form-horizontal" action="<%=basePath %>user/login" method="post">
	      <div class="row cl">
	        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
	        <div class="formControls col-xs-8">
	          <input id="username" name="username" type="text" placeholder="账号" class="input-text size-L" nullmsg="请输入用户名">
	        </div>
	      </div>
	      <div class="row cl">
	        <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
	        <div class="formControls col-xs-8">
	          <input id="password" name="password" type="password" placeholder="密码" class="input-text size-L" nullmsg="请输入密码">
	        </div>
	      </div>
	      
	      <div class="row cl">
	        <div class="formControls col-xs-8 col-xs-offset-3">
	          <label for="online">
	            <input type="checkbox" name="online" id="remember" value="">
	            记住密码</label>
	            
	            <span style="color: red;">${msg }</span>
	        </div>
	      </div>
      <div class="row cl">
        <div class="formControls col-xs-8 col-xs-offset-3">
          <input name="" type="submit" class="btn btn-success radius size-L" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;">
          <input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
         <font style="color: red;"> ${info }${info1 }</font>
        </div>
      </div>
    </form>
  </div>
</div>
<div class="footer">Copyright ©2019 北京林业大学信息学院 Allright reserved</div>
<%@include file="/styles/common/jsStyle.jsp" %>
</body>
<script type="text/javascript">
	// 得到Cookie
	// name = username    name=password
	// cookie:username=zilong; password=123
	function getCookie(name) {
	    var strCookie=document.cookie;
	    var arrCookie=strCookie.split("; ");
	    for(var i=0;i<arrCookie.length;i++) {
	    	// username=zilong
	    	// password=123
	        var arr=arrCookie[i].split("=");
	    	// arr[0]=username     arr[1]=zilong
	    	// arr[0]=password     arr[1]=123
	        if(arr[0]==name)
	            return arr[1];
	    }
	    return "";
	}

	// 设置Cookie
	// name=username   value=zilong
	function setCookie(name,value) {
	    var Days = 30;
	    var exp = new Date();
	    // 设置有效时间
	    // exp.getTime()   毫秒数：  1970-1-1   --->  至今   毫秒数
	    exp.setTime(exp.getTime() + Days*24*60*60*1000);
	    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
	}

	// 加载页面  
	$(function() {
		var usernameStr = "username";
	    var passwordStr = "password";
		var reqUsername='${username}';
		// 空的时候，再去找cookie
		if(reqUsername == null || reqUsername == ""){
			// 判断cookie是否存在用户名密码
		    if((getCookie(usernameStr)!=null&&getCookie(usernameStr)!="")&&getCookie(passwordStr)!=null&&getCookie(passwordStr)!=""){
		    	$("#remember").attr("checked","checked");
		        $("#username").val(getCookie(usernameStr));
		        $("#password").val(getCookie(passwordStr));
		    }
		}
		 // 加载页面，给复选框一个点击事件
	    $("#remember").click(function(){
	        var ischeck=$(this).is(":checked"); 
	        var loginVal = "";
	        var passwordVal = "";
	        // 判断是否选中
	        if(ischeck){
	            loginVal = $("#username").val();
	            passwordVal = $("#password").val();
	        }
	        // 设置cookie
	        setCookie(usernameStr,loginVal);
	        setCookie(passwordStr,passwordVal);
	    });
	});
	
	

</script>
</html>