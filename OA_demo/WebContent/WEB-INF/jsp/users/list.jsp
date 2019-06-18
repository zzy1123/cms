<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@include file="/styles/common/cssStyle.jsp" %>
    <title>人员列表</title>
  </head>
  
  <body>
  	<!-- 通知、导航栏 -->
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 
		<span class="c-gray en">&gt;</span> 人员管理 
		<span class="c-gray en">&gt;</span> 人员列表
	</nav>
        <!-- 内容 -->
         <center> <h1>用户列表</h1></center>
        <div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20" id="fir">
				<span class="l">
					<a class="btn btn-primary radius"  data-title="添加人员" href="javascript:;" onclick="add('商品人员','<%=basePath%>user/toAddUser','800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 添加人员</a>
				</span>
  			</div>
	  		<div class="mt-20">
		    	<table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
						<th>序号</th>
						<th>真实名称</th>										
						<th>年龄</th>					
						<th>电话</th>											
						<th>地址</th>
						<th>角色</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${UserList }" var="li" varStatus="g">
						<tr class="text-c">
							<td>${g.count }</td>
							<td>${li.uname }</td>
							<td>${li.age }</td>
							<td>${li.phone }</td>
							<td>${li.address  }</td>
							<td>${li.rname  }</td>
							<td width="20%">
						 <c:if test="${li.rid !=4}">
								<a title="修改" href="javascript:;" onclick="edit('用户修改','<%=basePath%>user/toUpdateUser','${li.uid }','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								<a title="删除" href="javascript:;" onclick="deleteUser(this,'${li.uid}','${li.uname}')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
						</c:if>
							</td>
						</tr>
						</c:forEach>
				</tbody>	
		    	</table>
		    </div>
		</div>
	<%@include file="/styles/common/jsStyle.jsp" %>
	<script type="text/javascript">

	// 分页
	$('.table-sort').dataTable({
		"aaSorting": [[ 0, "asc" ]],//默认第几个排序
		"bStateSave": false,//状态保存
		"aoColumnDefs": [
		  {"orderable":false,"aTargets":[0]}// 写出：不参与   排序的列
		]
	});
	
	//删除
	function deleteUser(obj,uid,uname){
		layer.confirm("确定要删除" + uname + "用户吗?",function(index){
			var url = "<%=basePath%>user/deleteUser";
			var params = {"uid":uid};
			$.ajax({
				url:"<%=basePath%>user/deleteUser",
					data:params,
					type:"post",
					dataType:"json",
					success:function(result){
						if(result == 1){
							$(obj).parents("tr").remove();
							layer.msg('已删除!',{icon:1,time:1000});
						}else{
							layer.msg('删除失败!',{icon:1,time:1000});
						}
					},
					error:function(){
						alert("权限不够！");
					}
				
			});
		});
	}
	
	// 添加
	function add(title,url,w,h){
		layer_show(title,url,w,h);
	}
	
	// 修改
	function edit(title,url,uid,w,h){
		url = url + "?uid=" + uid;
		layer_show(title,url,w,h);
	}
	
	</script>	
  </body>
</html>
