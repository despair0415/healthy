<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.Itkuang.mvcdemo.factory.DAOFactory"%>
<%@page import="com.Itkuang.mvcdemo.vo.data"%>
<%@page import="com.Itkuang.mvcdemo.vo.User"%>
<%@page import="java.util.*"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
	<link href="./bootstrap.css" type="text/css" rel="stylesheet">
<link href="./first-css.css" type="text/css" rel="stylesheet">
<link href="./flow-family.css" type="text/css" rel="stylesheet">
<link href="./style.css" type="text/css" rel="stylesheet">
<link href="./kefu.css" type="text/css" rel="stylesheet">

<title>P&Life-show</title>
</head>
</head>
<body>
<%-- <link rel="stylesheet" type="text/css" href="../vendor/website/css/page-animation_a91922d.css" tppabs="/vendor/website/css/page-animation_a91922d.css">
<link rel="stylesheet" type="text/css" href="../vendor/website/css/index_98df790.css" tppabs="/vendor/website/css/index_98df790.css">
<div class="header">
    <div class="topcenter">
        <a href="index.jsp" tppabs="/index.jsp" class="logo"></a>
        <div class="phonenum">
			<%
				User user1 =(User)request.getSession().getAttribute("user");
				if(user1==null){
			%>
					离线：&nbsp;###
			<%
				}else{
			%>
				         在线：&nbsp;<%=user1.getName() %>
			<%} %>	
        
        </div>
        <ul class="list">
            <li ><a href="../index.jsp" tppabs="/../index.jsp">首页</a></li>
            <li><a href="../Detection/Detection_index.jsp"  tppabs="/../Detection/Detection_index.jsp">即时检测</a></li>
            <li><a href="../Time/time.jsp" tppabs="/../Time/time.jsp">脉搏时光机</a></li>
            <li><a href="../biog/index.jsp" tpabs="/../biog/index.jsp">情感树洞</a></li>
            <li><a href="../zhuce/index.jsp" tppabs="/../zhuce/index.jsp">亲情"0"距离</a></li>
            <li class="hiring"><a href=" https://channel.jd.com/9192-9197.html">"优"品汇</a></li>
        </ul>
    </div>
</div> --%>
<% 
/* 	User user = (User)request.getSession().getAttribute("user");
	List<data> list=new ArrayList<data>();
	list =DAOFactory.getIUserDAOInstance().findDataById(user.getUserid());  */
/* 	data data = new data(); */
	HttpSession se = request.getSession();
	int a=(int)se.getAttribute("aa");	//脉搏
	int b=(int)se.getAttribute("bb");	//收缩压
	int c=(int)se.getAttribute("cc");	//舒张压
	
%>
	<div class="content-first pd-b25 mg-t20 bg-eee">
        	<div class="container">
                <div class="row">
                    <h3 class="title over-hide mg-b20 col-xs-12 font20">
                    	今日健康
                    </h3>
                	<div class="col-xs-12 col-sm-6 img-first ">
                    	<img src="./cj_img.jpg" alt="" title="">
                    </div><!-- col-xs-12 col-sm-6 end-->
                	
                    <div class="col-xs-12 col-sm-6">
                        <div class="col-xs-12" style="text-align:left;">
                            <ul class="media-list">
                                <li class="media over-hide">
                                    <span class="pull-left">
                                        <img class="media-object" src="./cj_1.jpg" alt="网络">
                                    </span>
                                    <div class="media-body">
                                        <h4 class="media-heading font-bold mg-b15">总体</h4>
                                         <p style="font-size: 8px;">【&nbsp;根据世界卫生组织规定，成人收缩压≥140 mmHg或舒张压≥90 mmHg时，即可确诊为高血压。当收缩压在120～139 mmHg之间或舒张压在80～89 mmHg之间，被视为高血压前期。另外，脉率的快慢也与心脏病等相关。 】</p>
                                        	<%if(a>=60&&a<=100&&b>=90&&b<120&&c>=60&&c<80){ %>
											<p style="font-weight: bold;">您各项指标正常，恭喜您！</p>
											<%}else if(a>=60&&a<=100){ if((b>=120&&b<140)||(c>=80&&c<90)){ %>
											<p style="font-weight: bold;">脉搏正常,血压异常(正常高值)！</p>
											<script type="text/javascript">
											alert('血压处于正常高值！请注意!!');
											</script>
											<%} else {%>
											<p style="font-weight: bold;">脉搏正常,血压异常(偏高)！</p>
											<script type="text/javascript">
											alert('血压异常，请注意高血压等疾病!!');
											</script>
											<%}}else if(b>=90&&b<120&&c>=60&&c<80){ %>
											<p style="font-weight: bold;">脉搏异常,血压心率正常！</p>
											
											<%} else{ %>
											<p style="font-weight: bold; color: red;">脉搏异常、血压心率异常！请及时就医！</p>
											<script type="text/javascript">
											alert('应急预警已启动---请及时就医!!');
											</script>
											<%} %>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- col-xs-12 end-->
                	</div><!-- col-xs-12 col-sm-6 end-->
                    <div class="col-xs-12 col-sm-6">
                        <div class="col-xs-12" style="text-align:left;">
                            <ul class="media-list">
                                <li class="media over-hide">
                                    <span class="pull-left">
                                        <img class="media-object" src="./cj_1.jpg" alt="网络">
                                    </span>
                                    <div class="media-body">
                                        <h4 class="media-heading font-bold mg-b15">脉搏</h4>
                                        <p style="font-size: 8px;">【&nbsp;正常成人脉率为每分钟60～100次,(其中，老年人为每分钟55～60次；儿童为80～100次。)每分钟超过100次，称为心动过速；每分钟低于60次，称为心动过缓。】</p>
                                        <p style="font-weight: bold; color:"><%=a %>&nbsp;次/分钟</p>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- col-xs-12 end-->
                	</div><!-- col-xs-12 col-sm-6 end-->
                    <div class="col-xs-12 col-sm-6">
                        <div class="col-xs-12" style="text-align:left;">
                            <ul class="media-list">
                                <li class="media over-hide">
                                    <span class="pull-left">
                                        <img class="media-object" src="./cj_1.jpg" alt="网络">
                                    </span>
                                    <div class="media-body">
                                        <h4 class="media-heading font-bold mg-b15">收缩压</h4>
                                        <p style="font-size: 8px;">【&nbsp;根据《中国高血压指南》,正常成人收缩压(俗称'高压')：90～119mmHg称为正常血压，120～139mmHg称为正常高值。140mmHg以上称为高血压 】</p>
                                        <p style="font-weight: bold;"><%=b %>&nbsp;毫米汞柱</p>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- col-xs-12 end-->
                	</div><!-- col-xs-12 col-sm-6 end-->
                    <div class="col-xs-12 col-sm-6">
                        <div class="col-xs-12" style="text-align:left;">
                            <ul class="media-list">
                                <li class="media over-hide">
                                    <span class="pull-left">
                                        <img class="media-object" src="./cj_1.jpg" alt="网络">
                                    </span>
                                    <div class="media-body">
                                        <h4 class="media-heading font-bold mg-b15">舒张压</h4>
                                        <p style="font-size: 8px;">【&nbsp;根据《中国高血压指南》,正常成人舒张压(俗称'低压'): 60～79称为正常值，80～89称为正常高值。低压≥90mmHg的成为高血压。】</p>
                                        <p style="font-weight: bold;"><%=c %>&nbsp;毫米汞柱</p>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- col-xs-12 end-->
                	</div><!-- col-xs-12 col-sm-6 end-->
                        
                </div><!--row end-->    
            </div><!--container end-->
        </div><!--content-first end-->
        

		<!--尾部-->   <!--content-first end-->     
        <div id="footer"><div class="go_top" id="go_top" style="display: none;"></div><div class="footer-first font12 footer-flow">Copyright © 2020-2021 P&Life智能一体化健康平台 版权所有</div></div>    
</body>
</html>
