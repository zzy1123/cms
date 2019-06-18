<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改报销项</title>
<!-- 引用css -->
<%@ include file="/styles/common/cssStyle.jsp" %>

</head>
<body>
  <center> <h1>修改报销项</h1></center>
	<div class="page-container">
	<form action="<%=basePath %>reimbursement/updateReimbursement" method="post" class="form form-horizontal" id="Form" >
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>报销项：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<select  class="select" style="width: 80px;" name="reiname"> 
					
					  <c:forEach items="${reimbursementNameList}" var="role">
						  	<option value="${role.reimid}"
						  	<c:if test="${reimbursementByid.reiname==role.reimid }">selected="selected"</c:if>
						  	
						  	>${role.reiminame}</option>
					  </c:forEach>
				</select>
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>报销时间：</label>
			<div class="formControls col-xs-8 col-sm-9">
			<input type="hidden" value="${reimbursementByid.id }" name="id">
				<input type="text" class="input-text" datatype="*" nullmsg="请输入用时间" placeholder="请输入时间" name="reidate" onclick="WdatePicker()" value="${reimbursementByid.reidate }">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>金额：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" datatype="*" nullmsg="请输入金额" placeholder="请输入金额" name="reimoney" value="${reimbursementByid.reimoney }">
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
		
		/* 截取上传文件后缀，只能是图片形式 */
		$("#Form").submit(function(){
			var filePath = $("input[name='imgFile']").val();
			var extStart = filePath.lastIndexOf(".");
			var ext = filePath.substring(extStart,filePath.length).toUpperCase();
			if(ext!=".png" && ext!=".PNG" && ext!=".jpg" && ext!=".JPG"){
				layer.alert("必须是图片格式！");
				return false;
			}
		})
		
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
	//选择图片，马上预览
	function xmTanUploadImg(obj) {
		var file = obj.files[0];
	
		console.log(obj);
		console.log(file);
		console.log("file.size = " + file.size); //file.size 单位为byte
	
		var reader = new FileReader();
		//读取文件过程方法
				reader.onloadstart = function(e) {
					console.log("开始读取....");
				}
				
				reader.onprogress = function(e) {
					console.log("正在读取中....");
				}
				reader.onabort = function(e) {
					console.log("中断读取....");
				}
				reader.onerror = function(e) {
					console.log("读取异常....");
				}
		reader.onload = function(e) {
			console.log("成功读取....");
	
			var img = document.getElementById("xmTanImg");
			img.src = e.target.result;
			//或者 img.src = this.result;  //e.target == this
		}
	
		reader.readAsDataURL(file)
	}
	
	
  	</script>
</html>