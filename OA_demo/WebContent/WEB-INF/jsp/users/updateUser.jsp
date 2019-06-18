<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户</title>
<!-- 引用css -->
<%@ include file="/styles/common/cssStyle.jsp" %>

</head>
<body>
 <center> <h1>修改用户</h1></center>
	<div class="page-container">
	<form action="<%=basePath %>user/updateUser" method="post" class="form form-horizontal" id="Form" >
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>真实姓名：</label>
			<div class="formControls col-xs-8 col-sm-9">
			<input type="hidden" value="${userMap.uid }" name="uid">
				<input type="text" class="input-text" datatype="*" nullmsg="请输入真实姓名" placeholder="请输入真实姓名" name="uname" value=${userMap.uname }>
			</div>
		</div>
	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>年龄：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" datatype="shuzi" nullmsg="请输入年龄" placeholder="请输入年龄" name="age" value=${userMap.age }>
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>手机号：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" size="50" datatype="phone" errormsg="手机号输入不合法" nullmsg="请输入手机号" placeholder="请输入手机号" name="phone" value=${userMap.phone }>
			</div>
	
	     </div>
	
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>地址：</label>
			<div class="formControls col-xs-8 col-sm-9">
		   <select id="select1"  onchange="select11();" name="aid1"></select>
	        <select id="select2" onchange="select22();"  name="aid2"></select>
	        <select id="select3"  name="aid3"></select>
			</div>
	      </div>
		 <div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>角色名称：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select name="rid" class="select" style="width: 80px;"> 
					  <!-- 遍历所有的角色-->
					  <c:forEach items="${roleList}" var="role">
						  	<option value="${role.rid}" <c:if test="${userMap.rid==role.rid }">selected="selected"</c:if> >${role.rname}</option>
					  </c:forEach>
				</select>
			</div>
		</div> 
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交审核</button>
				<button onClick="closeLayer();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
			</div>
		</div>
	</form>
</div>
</body>
<!-- 引用js -->
<%@ include file="/styles/common/jsStyle.jsp" %>

<script type="text/javascript">
  	/* 表单校验 */
	$(function(){
		
	
		
		$("#Form").Validform({
			tiptype:3, 
			tipSweep:true,
			datatype:{
				"shuzi" :  /^\+?(0|[1-9][0-9]*)$/,
				"idCard": /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/,  //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X 
				/* "phone": /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$/, */
				"phone": /^1[3|4|5|7|8][0-9]{9}$/, 
				"email": /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((.[a-zA-Z0-9_-]{2,3}){1,2})$/,
			}
		});
	});
	
	// 关闭窗口
	function closeLayer(){
		var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
        parent.layer.close(index);
        return true;
	}
	
	var dd=${addressList};
	var address=eval(dd);
	var pid=${pid};
	var cid=${cid};
	var xid=${xid};
	 $(function(){
		
			select1();	
			select11();
	})
	//渲染省
	 function select1(){
		 var ssx;
		 for (var int = 0; int < address.length; int++) {
			ssx = address[int];
			if(ssx.pid==0)
				if(ssx.aid==pid){
					$("#select1").append('<option selected value="'+ssx.aid+'" >'+ssx.name+'</option>	');
				}else{
					$("#select1").append('<option value="'+ssx.aid+'" >'+ssx.name+'</option>	');
				}
		
		}
	 }
	 //渲染市
	function select11(){
		$("#select2").html("");
		var s1=$("#select1").val();

		 for (var int = 0; int < address.length; int++) {
				ssx = address[int];
			  if(ssx.pid==s1){
				  if(ssx.aid==cid){
					  $("#select2").append('<option selected value="'+ssx.aid+'" >'+ssx.name+'</option>	');  
				  }else{
					  $("#select2").append('<option value="'+ssx.aid+'" >'+ssx.name+'</option>	');   
				  }
					
					
			  } 	 
		 }	
		 select22(); 
	}
	 //渲染县
	  function select22(){
		  $("#select3").html("");
			var s1=$("#select2").val();
			 for (var int = 0; int < address.length; int++) {
					ssx = address[int];
				  if(ssx.pid==s1){
					  if(ssx.aid==xid){
						  $("#select3").append('<option selected value="'+ssx.aid+'" >'+ssx.name+'</option>	');  
					  }else{
						  $("#select3").append('<option value="'+ssx.aid+'" >'+ssx.name+'</option>	');   
					  }	
				  } 	 
			 }	
	  }
  	</script>
</html>