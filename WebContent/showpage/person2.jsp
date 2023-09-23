<%@page import="com.Itkuang.mvcdemo.factory.DAOFactory"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.Itkuang.mvcdemo.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>绑定亲人</title>
		<link href="./bootstrap.css" type="text/css" rel="stylesheet">
<link href="./first-css.css" type="text/css" rel="stylesheet">
<link href="./flow-family.css" type="text/css" rel="stylesheet">
<link href="./style.css" type="text/css" rel="stylesheet">
<link href="./kefu.css" type="text/css" rel="stylesheet">
</head>

<body>
<%
User user = (User)request.getSession().getAttribute("user");
List<String> list=null;
boolean bz=true;
if(user==null){
	bz=false;
}else{
list=new ArrayList<String>();
list =DAOFactory.getIUserDAOInstance().findPerById(user.getUserid()); 
}
%>
	<div class="content-first pd-b25 mg-t20 bg-eee">
        	<div class="container">
                <div class="row">
                    <h3 class="title over-hide mg-b20 col-xs-12 font20">
                    	您的特别关心
                        <p class="font14 clear-both hl25 font-normal">
                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您的关心，您的担忧。给亲人一份关心，保护亲人健康，我们才更放心！
                        </p>
                    </h3>
                    <%  
                    String[] str1=new String[8];
                    str1[0]="./l1.jpg";
                    str1[1]="./l2.jpg";
                    str1[2]="./l3.jpg";
                    str1[3]="./l4.jpg";
                    str1[4]="./l5.jpg";
                    str1[5]="./l6.jpg";
                    str1[6]="./l7.jpg";
                    str1[7]="./l8.jpg";
                    int jj= list.size();
                	int j=jj-1;
                    if(bz){
                    	while(jj>0){
                    	int i=(int)(Math.random()*9);
                    
                    %>
                    <a href="../Time/time1.jsp?userid=<%=list.get(j).toString() %>">
                	<div class="col-xs-12 col-sm-6">
                        <ul class="media-list">
                            <li class="media over-hide">
                                <span class="pull-left">
                                    <img class="media-object" src=<%=str1[i] %> alt="">
                                </span>
                                <div class="media-body">
                                     <h4 class="media-heading font-bold mg-b15 text-center">
									<%=DAOFactory.getIUserDAOInstance().findById(list.get(j).toString()).getName() %>
                                    </h4>
                                    <p class="text-center">账号：&nbsp;&nbsp;<%=list.get(j).toString() %></p>
                                </div>
                            </li>
                        </ul>
                    </div><!-- col-xs-12 col-sm-6 end-->
             </a>
             <%
             			jj--;j--;
                    	}}else{ %>
                	<div class="col-xs-12 col-sm-6">
                        <ul class="media-list">
                            <li class="media over-hide">
                                <span class="pull-left">
                                    <img class="media-object" src="./ys_1.jpg" alt="">
                                </span>
                                <div class="media-body">
                                    <h4 class="media-heading font-bold mg-b15">未绑定</h4>
                                    <p>登陆后或者亲情绑定后再查看！</p>
                                </div>
                            </li>
                        </ul>
                    </div><!-- col-xs-12 col-sm-6 end-->
                    <%} %>    
                </div><!--row end-->    
            </div><!--container end-->
        </div>
</body>
</html>
