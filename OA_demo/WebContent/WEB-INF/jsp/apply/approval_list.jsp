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
		<span class="c-gray en">&gt;</span> 报销管理 
		<span class="c-gray en">&gt;</span> 审查列表
	</nav>
        <!-- 内容 -->
         <center> <h1> 审查列表</h1></center>
        <div class="page-container">
        	<div class="cl pd-5 bg-1 bk-gray mt-20">
				<span class="l">
					<input type="button" value="批量同意" class="btn" onclick="agree()">
					<input type="button" value="批量拒绝" class="btn" onclick="confuse()">
				</span>
  			</div>
	  		<div class="mt-20">
		    	<table class="table table-border table-bordered table-bg table-hover table-sort">
		    	<thead>
		    		<tr class="text-c">
		    		   <th>请选择</th>
						<th>序号</th>
						<th>姓名</th>
						<th>报销项</th>
						<th>报销日期</th>
						<th>报销金额</th>
						<th>状态</th>
					
						
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${approvalList }" var="li" varStatus="g">
						<tr class="text-c">
						<td><input type="checkbox" value="${li.id }">
						<input type="hidden" value="${li.reistate }">
						</td>
							<td>${g.count }</td>
							<td>${li.uname }</td>
							<td>${li.reiminame }</td>
							<td>${li.reidate }</td>
							<td>${li.reimoney }</td>
							<td>${li.sname}</td>
							
							<td width="20%">
								
								<input type="button" value="同意" class="btn btn-info" onclick="presnt(${li.reistate},${li.id })">
								<input type="button" value="拒绝" class="btn btn-info" onclick="presnt1(${li.reistate},${li.id })">
							</td>
						</tr>
						</c:forEach>
				</tbody>	
		    	</table>
		    </div>
		</div>
	<%@include file="/styles/common/jsStyle.jsp" %>
	<script type="text/javascript">
	
	function presnt(reistatc,id){
	
			if(confirm("确定要同意?")){
				url="<%=basePath%>apply/present?reistate="+reistatc+"&flag="+2+"&id="+id;
				layer_show('成功页面',url,'800','500');

		}			
	}
	function presnt1(reistatc,id){
					if(confirm("确定要拒绝?")){
				url="<%=basePath%>apply/present?reistate="+reistatc+"&flag="+1+"&id="+id;
				layer_show('成功页面',url,'800','500');

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
	//批量同意
	function agree(){
		var id=$("input:checkbox:checked");
		var reistates=$("input:checkbox:checked").next().val();
		var ids=[];
		id.each(function(){
		ids.push($(this).val());			
		});
		if(confirm("确定要同意?")){
			url="<%=basePath%>apply/present?reistate="+reistates+"&flag="+2+"&ids="+ids;
			layer_show('成功页面',url,'800','500');

	}			
	}
	//批量拒绝
	function confuse(){
		var id=$("input:checkbox:checked");
		var reistates=$("input:checkbox:checked").next().val();
		var ids=[];
		id.each(function(){
		ids.push($(this).val());			
		});
		if(confirm("确定要拒绝?")){
			url="<%=basePath%>apply/present?reistate="+reistates+"&flag="+1+"&ids="+ids;
			layer_show('成功页面',url,'800','500');
	}			
	}
	
	</script>	
  </body>
</html>
