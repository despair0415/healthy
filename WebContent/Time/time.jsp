<%@page import="com.Itkuang.mvcdemo.factory.DAOFactory"%>
<%@page import="com.Itkuang.mvcdemo.vo.data"%>
<%@page import="com.Itkuang.mvcdemo.vo.User"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>    
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>脉搏时光机</title>
<link rel="stylesheet" href="style.css" />
<style type="text/css">
h2.top_title{border-bottom:none;background:none;text-align:center;line-height:32px; font-size:30px}
h2.top_title span{font-size:12px; color:#666;font-weight:500;font-size:15px}
</style>
</head>
<link rel="stylesheet" type="text/css" href="../vendor/website/css/jquery.fullPage_9525770.css" tppabs="/vendor/website/css/jquery.fullPage_9525770.css">
<link rel="stylesheet" type="text/css" href="../vendor/website/css/page-animation_a91922d.css" tppabs="/vendor/website/css/page-animation_a91922d.css">
<link rel="stylesheet" type="text/css" href="../vendor/website/css/index_98df790.css" tppabs="/vendor/website/css/index_98df790.css">
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
					<li><a href="../index.jsp" tppabs="/../index.jsp">首页</a></li>
					<li><a href="../Detection/Detection_index.jsp" tppabs="/../Detection/Detection_index.jsp">即时检测</a></li>
                    <li id="activityon" class="on"><a href="javascript:void(0)">脉搏时光机</a></li>
                    <li><a href="../biog/index.jsp" tppabs="/../biog/index.jsp">情感树洞</a></li>
                    <li><a href="../showpage/personshow.jsp" tppabs="/../showpage/personshow.jsp">亲情"0"距离</a></li>
                    <li class="hiring"><a href="../shop.jsp">"优"品汇</a></li>
				</ul>
			</div>
		</div>
	<div style="height: 100px"></div>
<h2 class="top_title">P&Life脉搏时光机<br/><span>每天坚持呵护您的身心健康</span></h2>

<section id="cd-timeline" class="cd-container">
<!--里暂时通过变量取代数据库中的数据-->
<% 
	User user = (User)request.getSession().getAttribute("user");
	List<data> list=null;
	int a;	//脉搏
	int b;	//收缩压
	int c;	//舒张压
	boolean bz=true;
	if(user==null){
		bz=false;
	}else{
	list=new ArrayList<data>();
	list =DAOFactory.getIUserDAOInstance().findDataById(user.getUserid()); 
/* 	data data = new data(); */
	}
	String[] st=new String[3];
	st[0]="img/cd-icon-picture.svg";st[1]="img/cd-icon-movie.svg";st[2]="img/cd-icon-location.svg";
%>
<% if(bz==true){
	int jj= list.size();
	int j=jj-1;
%>
<% while(jj>0){%>			<!-- 通过循环遍历数据库中的数据 这里暂且为true-->
			<%
			int i=(int)(Math.random()*3);
			a=list.get(j).getValue1();
			b=list.get(j).getValue2();
			c=list.get(j).getValue3();
			%>		
	<div class="cd-timeline-block">  
	<% if(i<2) {%>
		<div class="cd-timeline-img cd-picture">
			<img src=<%=st[i]%> alt="">
		</div>
		<%}else{ %> 
		<div class="cd-timeline-img cd-movie">
			<img src=<%=st[i]%> alt="">
		</div>
		<%}int fla=0; %>
	<div class="cd-timeline-content">
		<!--  通过获取数据库数据修改-->
		<%if(a>=60&&a<=100&&b>=90&&b<120&&c>=60&&c<80){ %>
		<h2>脉搏、血压心率正常</h2>
		<%}else if(a>=60&&a<=100){if((b>=120&&b<140)||(c>=80&&c<90)){ fla=1;%>
		<h2>脉搏正常,血压异常(正常高值)！</h2>
		<%} else {fla=1;%>
		<h2>脉搏正常,血压异常(偏高)！</h2> 
		<%}}else if(b>=90&&b<120&&c>=60&&c<80){ fla=2;%>
		<h2>脉搏异常,血压心率正常</h2>
		<%} else{%>
		<h2 >脉搏异常、血压心率异常！请及时就医！</h2>
		<% fla=3; %>
		<%} %>
		<style>
			ol {
			text-align: left;
			margin-left:170px;
			}
		</style>
		<p style="text-align: justify;" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;正常成年人血压收缩压90-140毫米汞柱，舒张压60-90毫米汞柱为正常血压,脉搏每分钟60到100次为正常脉搏，如果脉搏每分钟超过140，提示心动过速，如果脉搏每分钟低于60次，提示心动过缓。</p>
		<ol style="text-align:left;margin-left:  39px;">您<%=list.get(j).getH() %>数据为:</ol>
		<%if(fla==1){ %>
		  <ol style="font-weight: bold;">脉搏&nbsp;<%=a %>次/分钟，&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ol><ol style="color:orange;font-weight: bold;">收缩压&nbsp;<%=b %>毫米汞柱，</ol><ol style="color:orange;font-weight: bold;">舒张压&nbsp;<%=c %>毫米汞柱。</ol>
		<%}else if(fla==2){ %><!--<a href="#" class="cd-read-more" target="_blank">阅读全文</a>-->
		 <ol style=" color:orange; font-weight: bold;">脉搏&nbsp;<%=a %>次/分钟，&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ol><ol style="font-weight: bold;">收缩压&nbsp;<%=b %>毫米汞柱，</ol><ol style="font-weight: bold;">舒张压&nbsp;<%=c %>毫米汞柱。</ol>		
		<%}else if(fla==3){ %>
		<ol style="color:red; font-weight: bold;">脉搏&nbsp;<%=a %>次/分钟，&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ol><ol style="color:red;font-weight: bold;">收缩压&nbsp;<%=b %>毫米汞柱，</ol><ol style="color:red;font-weight: bold;">舒张压&nbsp;<%=c %>毫米汞柱。</ol>
		<%}else{ %>
		</ol><ol style="font-weight: bold;" >脉搏&nbsp;<%=a %>次/分钟，&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</ol><ol style="font-weight: bold;" >收缩压&nbsp;<%=b %>毫米汞柱，</ol><ol style="font-weight: bold;" >舒张压&nbsp;<%=c %>毫米汞柱。</ol>
		<%} %>
		<span class="cd-date"><%=list.get(j).getH() %></span>
		<% jj--; j--;%>
	</div>
</div>
<%}} %>
	<div class="cd-timeline-block"> 
	<div class="cd-timeline-img cd-picture">
			<img src="img/cd-icon-location.svg" alt="">
		</div>
	<div class="cd-timeline-content">
	<h2>欢迎加入P&Life智能一体化健康平台！</h2>
		<p style="text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;“P&Life”智能一体化健康平台——专业的监护，贴心的提示，永久的陪伴，记录你一生的心动，呵护人们一生的健康，给人们一生安心的“家”。该智能一体化健康平台是一个专业化、数字化、智能化、人性化的健康理念平台，是以“人·健康·生活”为主，服务用户！</p>
		<span class="cd-date">健康·起点</span>
	</div>
</div>

</section>

<div align="center">
   <p>©2020 P&Life智能一体化健康平台 京ICP备13032113</p>
                <div class="footerList">
                    <a href="javascript:void(0)" class="say">意见反馈</a><span>|</span>
                    <a href="aboutOur.html#history" tppabs="/aboutOur.html#history">发展历程</a><span>|</span>
                    <a href="aboutOur.html#media" tppabs="/aboutOur.html#media">媒体报道</a><span>|</span>
                    <a href="aboutOur.html#addour" tppabs="/aboutOur.html#addour">加入我们</a><span>|</span>
                    <a href="userprotocol.html" tppabs="/userprotocol.html">用户协议</a>
                </div>
</div>
</body>
</html>