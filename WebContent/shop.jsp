<%@page import="com.Itkuang.mvcdemo.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>"优"品汇</title>
</head>
<link rel="stylesheet" type="text/css" href="./vendor/website/css/jquery.fullPage_9525770.css" tppabs="/vendor/website/css/jquery.fullPage_9525770.css">
<link rel="stylesheet" type="text/css" href="./vendor/website/css/page-animation_a91922d.css" tppabs="/vendor/website/css/page-animation_a91922d.css">
<link rel="stylesheet" type="text/css" href="./vendor/website/css/index_98df790.css" tppabs="/vendor/website/css/index_98df790.css">

<body>
<div class="header">
			<div class="topcenter">
				<a href="index.jsp" tppabs="/index.jsp" class="logo"></a>
				<div class="phonenum">
			<%
				User user1 =(User)request.getSession().getAttribute("user");
				if(user1==null){
			%>
					未登录
			<%
				}else{
			%>
				         在线：&nbsp;<%=user1.getName() %>
			<%} %>	
        
        </div>
				<ul class="list">
            <li><a href="index.jsp" tppabs="/index.jsp">首页</a></li>
            <li><a href="Detection/Detection_index.jsp"  tppabs="/Detection/Detection_index.jsp">即时检测</a></li>
            <li><a href="Time/time.jsp" tppabs="/Time/time.jsp">脉搏时光机</a></li>
            <li><a href="biog/index.jsp">情感树洞</a></li>
            <li><a href="showpage/personshow.jsp" tppabs="/showpage/personshow.jsp">亲情"0"距离</a></li>
            
            <li  id="activityon" class="on"><a href="javascript:void(0)">"优"品汇</a></li>
        </ul>
			</div>
		</div>
<a href="https://list.jd.com/list.html?cat=9192,9197,12587"><img style="width: 100%;height: 100%;" src="shop.png"></a>
</body>
</html>