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
		<span class="c-gray en">&gt;</span> 角色管理 
		<span class="c-gray en">&gt;</span> 角色列表
	</nav>
        <!-- 内容 -->
         <center> <h1>角色列表</h1></center>
	  		<div class="mt-20">
		    	<table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
						<th>序号</th>
						<th>角色</th>
						
					
						<th>所拥有的权限</th>
					
						
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${roleList }" var="li" varStatus="g">
						<tr class="text-c">
							<td>${g.count }</td>
							<td>${li.rname }</td>
							<td>${li.pname }</td>
							
							<td width="20%">
								<a title="修改" href="javascript:;" onclick="edit('用户修改','<%=basePath%>role/toUpdateRole','${li.rid }','800','500')" class="ml-5" style="text-decoration:none">
									<i class="Hui-iconfont">&#xe6df;</i>
								</a>
								&nbsp;
								
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
			
	// 修改
	function edit(title,url,rid,w,h){
		url = url + "?rid=" + rid;
		layer_show(title,url,w,h);
	}
	
	</script>	
  </body>
</html>
