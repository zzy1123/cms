<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加文章</title>
<!-- 引用css -->
<%@ include file="/styles/common/cssStyle.jsp" %>

</head>
<body>
  <center> <h1>添加文章</h1></center>
	<div class="page-container">
	<form action="<%=basePath %>apply/addApply" method="post" class="form form-horizontal" id="Form" >
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>所属版块：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select  class="select" style="width: 80px;" name="reiname"> 
					
					  <c:forEach items="${applyTypeList}" var="app">
						  	<option value="${app.reimid}">${app.reiminame}</option>
					  </c:forEach>
				</select>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>上传时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" datatype="*" nullmsg="请输入时间" placeholder="请输入时间" name="reidate" onclick="WdatePicker()">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>标题：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" datatype="*" nullmsg="请输入文章标题" placeholder="请输入文章标题" name="reimoney">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>内容：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" datatype="*" nullmsg="请输入文章内容" placeholder="请输入文章内容" name="reimoney">
			</div>
		</div>
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button onClick="article_save_submit();" class="btn btn-primary radius" type="submit"><i class="Hui-iconfont">&#xe632;</i> 保存</button>
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

	
  	</script>
</html>