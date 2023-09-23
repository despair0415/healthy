<%@page import="com.Itkuang.mvcdemo.factory.DAOFactory"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Itkuang.mvcdemo.vo.data"%>
<%@page import="java.util.List"%>
<%@page import="com.Itkuang.mvcdemo.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>亲情'0'距离</title>
	<link href="./bootstrap.css" type="text/css" rel="stylesheet">
<link href="./first-css.css" type="text/css" rel="stylesheet">
<link href="./flow-family.css" type="text/css" rel="stylesheet">
<link href="./style.css" type="text/css" rel="stylesheet">
<link href="./kefu.css" type="text/css" rel="stylesheet">
</head>
<body>

	 <div class="container over-hide">
            	<div class="row pd-t40">
                	<div class="col-sm-6">
                    	<h3 class="title font20">亲情"0"距离 &nbsp;<a href="../zhuce/index.jsp" style="color:#00BEAF"><button type="button"   value="亲情绑定" style="background-color: aliceblue;width: 74px; height: 40px;line-height: 2px;font-size: 14.5px; font-weight: bold; "  onconClick="">亲情绑定</button></a></h3>
                        <div class="article-main clear-both" style="line-height:30px; text-align:left;">
                        	<p style="height: 12px;"></p>
							<p class="text-indent col-md-offset-0 col-md-11">
								每一个人来到这个世上，什么都没有，唯一有的，就是家人，家人的关心，家人的爱伴随我们一天天成长。在这物欲横流的现实社会，我们渴望陪伴，渴望父母亲人身体健康。这里可以通过亲情绑定来远程陪伴、照顾父母亲人。及时了解亲人近期身体健康状况等。
							</p>
							<p></p><p></p><p></p><p style="height: 240px;"></p>
							<p class="col-md-11" style="font-size: 12px;">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;下面显示为已绑定亲人用户，点击姓名即可查看亲人具体健康状况，也可以单击‘亲情绑定’按钮来添加新的亲属用户！							
                            </p>
                        </div>
                    </div>
                	<div class="col-xs-12 col-sm-6 over-hide">
                    	<h3 class="title mg-t20 mg-b30 col-xs-12 img-first ">
                    	<% 
                    	User user = (User)request.getSession().getAttribute("user");
                    	
                    	List<String> list=null;
                    	boolean bz=true;
                    	if(user==null){
                    		bz=false;
                    	}else{
                    	list=new ArrayList<String>();
                    	list =DAOFactory.getIUserDAOInstance().findPerById(user.getUserid()); 
                    	
                    /* 	data data = new data(); */
                    	}
                    	int i=(int)(Math.random()*2);
                    	String[] str=new String[2];
                    	str[0]="./phone.jpg";
                    	str[1]="./2phone.jpg";
                    	
                    	%>
							<a href="../zhuce/index.jsp"><img src=<%=str[i] %> alt="亲情'0'距离" title="亲情'0'距离"></a>
                        </h3>
                    </div>
        	</div><!--row end-->
		</div><!-- content-first end-->
        
        <!--content-first end-->

		<div class="content-first pd-b25 mg-t20">
        	<div class="container">
                <div class="row">
                    <h3 class="title over-hide mg-b20 col-xs-12 font20">
                    家属亲友&nbsp;
						
                    </h3>
                    <p class="font14 clear-both hl25 font-normal pd-lr-15 col-md-11">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您的关心，您的担忧。给亲人一份关心，保护亲人健康，我们才更放心！
						
                    </p><a style="font-size: 13px;" href="../showpage/person2.jsp">更多<img style="margin-right: 0px;" src="more.png"></a>
                	<a <%if(list!=null&&list.get(0)!=null){ %>href="../Time/time1.jsp?userid=<%=list.get(0).toString() %>"<%}else{ %>href="#"<%} %>>
                	<div class="col-xs-12 col-sm-4">
                        <ul class="media-list">
                            <li class="media over-hide">
                                <p class="text-center">
                                    <img class="media-object" src="./l2.jpg" alt="">
                                </p>
                                <div class="media-body block">
                                    <h4 class="media-heading font-bold mg-b15 text-center">
                                    <%if(bz) if(list.get(0)!=null){ %>
                                    <%=DAOFactory.getIUserDAOInstance().findById(list.get(0).toString()).getName() %>
                                    <%}else{ %>未绑定
                                    <%}else %>未绑定
                                    </h4>
                                    <% ;if(bz){ %>
                                    <p class="text-center">账号：&nbsp;&nbsp;<%=list.get(0).toString() %></p>
                                    <%}%>
                                </div>
                            </li>
                        </ul>
                    </div><!-- col-xs-12 col-sm-6 end--></a>
                    <a <%if(list!=null&&list.get(1)!=null){ %>href="../Time/time1.jsp?userid=<%=list.get(1).toString() %>"<%}else{ %>href="#"<%} %>>
                	<div class="col-xs-12 col-sm-4">
                        <ul class="media-list">
                            <li class="media over-hide">
                                <p class="text-center">
                                    <img class="media-object" src="./l8.jpg" alt="">
                                </p>
                                <div class="media-body block">
                                    <h4 class="media-heading font-bold mg-b15 text-center">
                                    <%if(bz) if(list.get(1)!=null){ %>
                                    <%=DAOFactory.getIUserDAOInstance().findById(list.get(1).toString()).getName() %>
                                    <%}else{ %>未绑定
                                    <%}else %>未绑定
                                    </h4>
                                    <% ;if(bz){ %>
                                    <p class="text-center">账号：&nbsp;&nbsp;<%=list.get(1).toString() %></p>
                                    <%}%>
                                </div>
                            </li>
                        </ul>
                    </div><!-- col-xs-12 col-sm-6 end-->
                    </a>
                    <a <%if(list!=null&&list.get(2)!=null){ %>href="../Time/time1.jsp?userid=<%=list.get(2).toString() %>"<%}else{ %>href="#"<%} %>>
                	<div class="col-xs-12 col-sm-4">
                        <ul class="media-list">
                            <li class="media over-hide">
                                <p class="text-center">
                                    <img class="media-object" src="./l5.jpg" alt="">
                                </p>
                                <div class="media-body block">
                                    <h4 class="media-heading font-bold mg-b15 text-center">
                                    <%if(bz) if(list.get(2)!=null){ %>
                                    <%=DAOFactory.getIUserDAOInstance().findById(list.get(2).toString()).getName()%>
                                    <%}else{ %>未绑定
                                    <%}else %>未绑定
                                    </h4>
                                    <% ;if(bz){ %>
                                    <p class="text-center">账号：&nbsp;&nbsp;<%=list.get(2).toString() %></p>
                                    <%}%>
                                </div>
                            </li>
                        </ul>
                    </div><!-- col-xs-12 col-sm-6 end-->
                    </a>
                </div><!--row end-->
            </div><!--container end-->
        </div><!--content-first end-->

		

		<!--尾部-->   <!--content-first end-->     
        <div id="footer"><div class="go_top" id="go_top" style="display: none;"></div><div style="background-color: #DCDCDC;" class="footer-first font12 footer-flow">Copyright © 2020-2021 P&Life智能一体化健康平台 版权所有</div></div>    

		
		
    
</body>
</html>
