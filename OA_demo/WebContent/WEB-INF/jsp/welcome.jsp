<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<%@include file="/styles/common/cssStyle.jsp" %>
    <title>首页</title>
    <style type="text/css">	
		#service {font-size: 14px;
		font-weight: bolder;}
		#service li{
		list-style-image: none;
		list-style-type: none;
		border-right-width: 1px;
		border-right-style: solid;
		border-right-color: #F5F5F5; 
		float: left;
		}
		#service li a{
		color: #A9A9A9;
		text-decoration: none;
		margin: 0px;
		padding-top: 8px;
		display: block; /* 作为一个块 */
		padding-right: 10px; /* 设置块的属性 */
		padding-bottom: 8px;
		padding-left: 30px;
		}
		#address{background:#DCDCDC;}
		#address div{
		list-style-image: none;
		list-style-type: none;
		border-right-width: 1px;
		border-right-style: solid;
		border-right-color: #F5F5F5; 
		float: left;
		}
	</style>
	
</head>
<body style="background:#FAF9DE">
	<!-- <div id="top" style="background-color:CornflowerBlue;height:85px" >
	    <div class="container">
	        <img src="http://it.bjfu.edu.cn/images/logo.jpg">
	    </div>
	</div>  -->
	<center><h2>解忧杂货铺</h2></center>
	<div class="mt-20">
		    	<table class="table table-border table-bordered table-bg table-hover table-sort" id="article">
		    	<thead>
		    		<tr class="text-c">		    		 
						<th style="width:50px">序号</th>
						<th style="width:500px">文章标题</th>
						<th style="width:100px">上传时间</th>
						<th style="width:50px">浏览次数</th>
						<th style="width:100px">所属版块</th>
					</tr>	
				</thead>
				<tbody>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				<tr><td style="height:35px"> </td><td> </td><td> </td><td> </td><td> </td></tr>
				</tbody>
				<%-- <tbody>
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
				</tbody> --%>	
				</table>
		    </div>
<footer><!-- 底部  -->
    <div class="footer" id="service">
        <div class="container">
            <div class="row">
                <h3 class="col-lg-2">相关链接</h3>
                <div class="col-lg-10">
                    <ul class="list-inline row">
                        <li class="col-lg-2">
                            <a href="http://it.bjfu.edu.cn/" target="_blank">北京林业大学信息学院</a>
                        </li>
                        <li class="col-lg-2">
                            <a href="https://www.psy525.cn/" target="_blank">525心理健康网</a>
                        </li>
                        <li class="col-lg-2">
                            <a href="http://xsc.bjfu.edu.cn/xljk/zxyy/307256.html" target="_blank">北京林业大学心理咨询中心</a>
                        </li>
                        <li class="col-lg-2">
                            <a href="http://xl.wenkang.cn/" target="_blank">闻康资讯网</a>
                        </li>
                        <li class="col-lg-2">
                            <a href="https://xl.99.com.cn/" target="_blank">心理_99健康网</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
   <br/>
	<div id="address">
        <div class="container">
            <div class="col-lg-4">
                Copyright &#169;2019 北京林业大学信息学院 Allright reserved
            </div>
            <div class="col-lg-2" style="text-align:center">
                电话 : 010-62336230
            </div>
            <div class="col-lg-2" style="text-align:center">
                邮箱&nbsp;:&nbsp;<a href="mailto:it@bjfu.edu.cn">it@bjfu.edu.cn</a>
            </div><br/>
            <div class="col-lg-3">
                地址 : 海淀区清华东路35号150信箱
            </div>
            <div class="col-lg-2">
                邮编 : 100083
            </div>
        </div>
    </div>
</footer>	
</body>
</html>