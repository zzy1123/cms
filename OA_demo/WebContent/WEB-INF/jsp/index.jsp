<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <%@include file="/styles/common/cssStyle.jsp" %>
    <title>首页</title>
</head>
<body>
	<header class="navbar-wrapper">
		<div class="navbar navbar-fixed-top">
			<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="#">学生心理危机预警系统</a>
				
				<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
					<ul class="cl">
						<li>${uname }&nbsp;&nbsp;</li>
						<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A"> <i class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
												<li><a href="javascript:void(0)" onclick="editPwd('修改密码','<%=basePath%>user/toUpdatePassword','800','500')" >修改密码</a><li>
								<li><a href="javascript:void(0)" onClick="loginOut()">退出</a></li>
			

							</ul>
						</li>
						<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
								<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
								<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
								<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
								<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
								<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">
		<%-- <dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="<%=basePath %>user/selectUserList" data-title="用户列表" href="javascript:void(0)">用户列表</a></li>
				
				</ul>
			</dd>
		</dl>
		<div id="jiaose">
		<dl id="menu-article" >
			<dt><i class="Hui-iconfont">&#xe613;</i> 角色管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="<%=basePath %>role/selectRoleList" data-title="角色列表" href="javascript:void(0)">角色列表</a></li>
				</ul>
			</dd>
		</dl>
		</div>--%>
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 基本信息<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="<%=basePath %>apply/selectList" data-title="报销列表" href="javascript:void(0)">大一年级<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></a></li>
						<ul>
							<li>
								<a>信息1班</a>
							</li>
						</ul>
						<ul>
							<li>
								<a>信息2班</a>
							</li>
						</ul>
						<ul>
							<li>
								<a>计算机类1班</a>
							</li>
							
						</ul>
						<ul>
							<li>
								<a>计算机类2班</a>
							</li>
						</ul>
						<ul>
							<li>
								<a>计算机类3班</a>
							</li>
						</ul>
						<ul>
							<li>
								<a>计算机类4班</a>
							</li>
						</ul>
						<ul>
							<li>
								<a>计算机类5班</a>
							</li>
						</ul>
						<ul>
							<li>
								<a>计算机类6班</a>
							</li>
						</ul>
					<li><a _href="<%=basePath %>apply/selectList" data-title="报销列表" href="javascript:void(0)">大二年级<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></a></li>
						<ul>
								<li>
									<a>信息1班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>信息2班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>计算机1班</a>
								</li>
								
							</ul>
							<ul>
								<li>
									<a>计算机2班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>计算机3班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>数媒1班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>数媒2班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>网工1班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>计创1班</a>
								</li>
							</ul>
					<li><a _href="<%=basePath %>apply/selectList" data-title="报销列表" href="javascript:void(0)">大三年级<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></a></li>
						<ul>
								<li>
									<a>信息1班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>信息2班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>计算机1班</a>
								</li>
								
							</ul>
							<ul>
								<li>
									<a>计算机2班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>计算机3班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>数媒1班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>数媒2班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>网工1班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>计创1班</a>
								</li>
							</ul>
					<li><a _href="<%=basePath %>apply/selectList" data-title="报销列表" href="javascript:void(0)">大四年级<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></a></li>
						<ul>
								<li>
									<a>信息1班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>信息2班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>计算机1班</a>
								</li>
								
							</ul>
							<ul>
								<li>
									<a>计算机2班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>计算机3班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>数媒1班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>数媒2班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>网工1班</a>
								</li>
							</ul>
							<ul>
								<li>
									<a>计创1班</a>
								</li>
							</ul>
					<%-- <li><a _href="<%=basePath %>apply/approval" data-title="审批列表" href="javascript:void(0)">审批列表</a></li> --%>
					
				</ul>
			</dd>
		</dl> 
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 成绩管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="<%=basePath %>apply/selectList" data-title="专业课程成绩" href="javascript:void(0)">专业课程成绩</a></li>
					<li><a _href="<%=basePath %>apply/approval" data-title="量化活动成绩" href="javascript:void(0)">量化活动成绩</a></li>
					
				</ul>
			</dd>
		</dl>
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 日常事务处理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="<%=basePath %>apply/selectList" data-title="请假审批" href="javascript:void(0)">请假审批</a></li>
					<li><a _href="<%=basePath %>apply/approval" data-title="活动场地借用" href="javascript:void(0)">活动场地借用</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-article">
			<dt><i class="Hui-iconfont">&#xe616;</i> 心理危机预警<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="<%=basePath %>user/selectUserList" data-title="预警规则" href="javascript:void(0)">预警规则</a></li>
					<li><a _href="<%=basePath %>user/selectUserList" data-title="预警名单" href="javascript:void(0)">预警名单</a></li>
				</ul>
			</dd>
		</dl>
	</div>
	</aside>
	<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
	<section class="Hui-article-box">
		<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active"><span title="首页" data-href="#">首页</span><em></em></li>
				</ul>
			</div>
			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;">
					<i class="Hui-iconfont">&#xe6d4;</i>
				</a>
				<a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;">
					<i class="Hui-iconfont">&#xe6d7;</i>
				</a>
			</div>
		</div>
		<div id="iframe_box" class="Hui-article">
			<div class="show_iframe">
				<div style="display:none" class="loading"></div>
				<!-- 首页 -->
				<iframe scrolling="yes" frameborder="0" src="<%=basePath %>admin/toWelcome"></iframe>
			</div>
		</div>
	</section>	
</body>
<%@include file="/styles/common/jsStyle.jsp" %>

<script language="JavaScript">

	// 退出系统
	function loginOut(){
		var promptInfo = "您确定要退出系统吗？";
		var loginOutUrl = "<%=basePath%>admin/toLogin";
		layer.confirm(promptInfo,function(index){
			window.location.href = loginOutUrl;
		});
	}
	function editPwd(title, url, w, h) {
		layer_show(title, url, w, h);
	}

</script>
</html>