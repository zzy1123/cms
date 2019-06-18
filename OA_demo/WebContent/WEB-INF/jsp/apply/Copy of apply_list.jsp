<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
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
			<span class="c-gray en">&gt;</span> 文章管理 
			<span class="c-gray en">&gt;</span> 文章列表
		</nav>
		
		<!-- 内容 -->
		<center> <h1>文章列表</h1></center>
		
        <div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<a class="btn btn-primary radius" data-title="添加文章" href="javascript:;" onclick="add('添加文章','<%=basePath%>apply/toAddApply','800','500')">
					<i class="Hui-iconfont">&#xe600;</i> 添加文章</a>
					<input type="button" value="批量提交申请" class="btn" onclick="manyRefer()">
					<input type="button" value="批量删除" class="btn" onclick="manyDelete()">
				</span>
  			</div>
	  		<div class="mt-20">
		    	<table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
		    		    <th>请选择</th>
						<th>序号</th>
						<th>文章名称</th>
						<th>上传时间</th>
						<th>浏览次数</th>
						<th>所属版块</th>
						<!-- <th>操作</th> -->
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${applyList }" var="li" varStatus="g">
						<tr class="text-c">
							<td>
								<c:if test="${li.reistate==1}">
									<input type="checkbox" value="${li.id }" >
								</c:if>
							</td>
							<td>${g.index + 1}</td>
							<td>${li.reiminame }</td>
							<td>${li.reidate }</td>
							<td>
								<fmt:formatNumber value="${li.reimoney }" pattern="#,#00.0#"/> 
							</td>
							<td>${li.sname}</td>
							<td width="20%">
								<c:if test="${li.reistate==1}">
									<a title="修改" href="javascript:;" onclick="edit('用户修改','<%=basePath%>apply/toUpdatApply','${li.id }','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								<a title="删除" href="javascript:;" onclick="del(this,'${li.id}','')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6e2;</i>
								</a>
								<input type="button" value="提交申请" class="btn btn-info" onclick="presnt(${li.reistate},${li.id })">
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
	
		// 批量提交
		function manyRefer(){
			
			var id=$("input:checkbox:checked");
			var arr=[];
			var count = 0;
			
			id.each(function(){
				arr.push($(this).val());
				count++;
			});
			
			if(count > 0){
				if(confirm("确定要报销吗?")){
					url = "<%=basePath%>apply/present?reistate="+1+"&flag="+0+"&ids="+arr;
					layer_show('成功页面',url,'800','500');
				} 
			}else{
				alert("请选择要报销项！");
			}
		}
		
	function presnt(reistatc, id){
		if(reistatc!=1){
			alert("已提交！");
		}else{
			if(confirm("确定要报销吗?")){
				url="<%=basePath%>apply/present?reistate="+reistatc+"&flag="+0+"&id="+id;
				layer_show('成功页面', url, '800', '500');

			};		
		}		 	
	}
	
	// 分页
	$('.table-sort').dataTable({
		"aaSorting": [[ 0, "asc" ]],//默认第几个排序
		"bStateSave": false,//状态保存
		"aoColumnDefs": [
		  {"orderable":false,"aTargets":[0]}// 写出：不参与   排序的列
		]
	});
	
	//删除
	function del(obj,id,goodsName){
		layer.confirm("确定要删除吗?",function(index){							
			$.ajax({
				url:"<%=basePath%>apply/deleteApply",
					data:{"id":id},
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
	//批量删除
	function manyDelete(){
		var id=$("input:checkbox:checked");
		var arr=[];
		var count=0;
		id.each(function(){
			arr.push($(this).val());
			count++;
		});
		if(count>0){
			layer.confirm("确定要删除吗?",function(index){							
				$.ajax({
					url:"<%=basePath%>apply/deleteReimbursementById",
						data:{"ids":arr},
						type:"post",
						dataType:"json",
						traditional:true,
						success:function(result){
					
							if(result == 1){
								$(id).parents("tr").remove();
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
		}else{
			alert("请选择要删除项！");
		}
		
		
	}
	// 添加
	function add(title,url,w,h){
		layer_show(title,url,w,h);
	}
	
	// 修改
	function edit(title,url,id,w,h){
		url = url + "?id=" + id;
		layer_show(title,url,w,h);
	}
	
	</script>	
  </body>
</html>
