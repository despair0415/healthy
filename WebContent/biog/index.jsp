<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
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
<title>情感树洞</title>
<meta name="keywords" content="" />
<meta name="description" content="一个关注旅行，在路上寻找那个丢失自我，远离城市的喧哗，放慢脚步去享受慢生活，分享在路上所见所闻，与大家一起发现这世界的千奇百怪！" />
<link href="css/base1.css" rel="stylesheet">
<link href="css/index1.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/sliders.js"></script>
<!--[if lt IE 9]>

<![endif]-->
<script src="js/modernizr.js"></script>

<!-- 返回顶部调用 begin -->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script src="js/swfobject_modified.js" type="text/javascript"></script>
<!-- 返回顶部调用 end-->

<link rel="shortcut icon" href="/favicon.ico"/>
<link rel="bookmark" href="/favicon.ico"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
body, td, th {
	font-family: "microsoft yahei", Simsun;
}
</style>
</head>
<link rel="stylesheet" type="text/css" href="../vendor/website/css/jquery.fullPage_9525770.css" tppabs="/vendor/website/css/jquery.fullPage_9525770.css">
<link rel="stylesheet" type="text/css" href="../vendor/website/css/page-animation_a91922d.css" tppabs="/vendor/website/css/page-animation_a91922d.css">
<link rel="stylesheet" type="text/css" href="../vendor/website/css/index_98df790.css" tppabs="/vendor/website/css/index_98df790.css">
<body>

<!--header--> 
<!--header-->
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
            <li><a href="../Detection/Detection_index.jsp"  tppabs="/../Detection/Detection_index.jsp">即时检测</a></li>
            <li><a href="../Time/time.jsp" tppabs="/../Time/time.jsp">脉搏时光机</a></li>
            <li id="activityon" class="on"><a href="javascript:void(0)">情感树洞</a></li>
            <li><a href="../showpage/personshow.jsp" tppabs="/../showpage/personshow.jsp">亲情"0"距离</a></li>
            <li class="hiring"><a href="../shop.jsp">"优"品汇</a></li>
        </ul>
    </div>
</div>
	<div style="height: 70px"></div>
<!--header--> 

<!--header--> 

<!--banner-->
<div class="banner">
  <section class="box">
    <ul class="texts">
      <p>一指苍茫心酸，一壶浊酒相逢。</p>
      <p>"聆听花开花落的自然，微风徐徐掠过的温良"</p>
      <p>年轻、浮躁、成熟、淡定、病疾，穿梭于四季交替变化的岁月流年中，沉迷在人生价值奋斗的旋涡中。</p>
			<p>情感树洞记录生活点滴</p>
    </ul>
    <div class="avatar"><a href="/"><span>呵护你的一生</span></a></div>
  </section>
</div>
<!--banner-->
 <% 
	User user = (User)request.getSession().getAttribute("user");
 if(user!=null){
	List<data> list=new ArrayList<data>();
	list =DAOFactory.getIUserDAOInstance().findDataById(user.getUserid()); 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String d =null;	
%> 
<div class="memorial_day">
  <div class="time_axis"></div>
  <ul>
    <li class="n1"><a href="/" target="_blank">初识</a>	
      <div class="dateview">
     
	<%=sdf.format(list.get(0).getH())%> 
</div>
    </li>
    <li class="n2"><a href="/" target="_blank">初遇</a>
      <div class="dateview">
	<%=sdf.format(list.get(1).getH())%> </div>
    </li>
<%-- 此段代码目前报错，获取到的数据应该为时间类型，但是数据库没有相应的表，需要后续添加后再测试 --%>
    <li class="n3"><a href="/" target="_blank">初诉</a>
      <div class="dateview"><%=sdf.format(list.get(2).getH())%> </div>
    </li>
    <li class="n4"><a href="/" target="_blank">初忆</a>
      <div class="dateview"><%=sdf.format(list.get(3).getH())%> </div>
    </li>
    <li class="n5"><a href="/" target="_blank">初念</a>
      <div class="dateview"><%=sdf.format(list.get(4).getH())%> </div>
    </li>
  </ul>
</div>
<%} else{
Date dd = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

%>
<div class="memorial_day">
  <div class="time_axis"></div>
  <ul>
    <li class="n1"><a href="/" target="_blank">初识</a>	
      <div class="dateview">
      <%=sdf.format(dd)%>
</div>
<!--     </li>
    <li class="n2"><a href="/" target="_blank">初遇</a>
      <div class="dateview"></div>
    </li>
    <li class="n3"><a href="/" target="_blank">初诉</a>
      <div class="dateview"></div>
    </li>
    <li class="n4"><a href="/" target="_blank">初忆</a>
      <div class="dateview">2020-10-14</div>
    </li>
    <li class="n5"><a href="/" target="_blank">初念</a>
      <div class="dateview">2020-12-05</div>
    </li> -->
  </ul>
</div>

<%} %>
<!--article主体-->
<article> 
  
  <!--l_box-left开始-->
  <div class="l_box f_l"> 
    <!--topnews内容-->
    <div class="topnews">
      <h2> <b>今日</b>推荐 </h2>
      <div class="blogs">
        <figure><a href='https://www.dddxs.com/news/show-100236.html' class='preview'><img src='images/1447642404150745-lp.png'/></a> </figure>
        <h3><a href="https://www.dddxs.com/news/show-100236.html">心之所向，成长在路上</a></h3>
        <p>寒来暑往，秋收冬藏，历时三个多月的“物产中大杯”全国供应链管理职业技能竞赛即将落下帷幕。从校园赛，到初赛，到决赛，我们以总成绩第八的优异成绩顺利闯入全国总决赛。...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">忙里偷闲</a></span> <span class="dtime f_l">2020-11-16</span> <span class="viewnum f_l">浏览（88）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      <div class="blogs">
        <figure><a href='http://www.aiwke.com/a/xiangshoumanhuo/20201116/145.html' class='preview'><img src='images/1447642096207160-lp.png'/></a> </figure>
        <h3><a href="http://www.aiwke.com/a/xiangshoumanhuo/20201116/145.html">生活是什么？</a></h3>
        <p>生活是什么？有人说，生活生活，就是生下来活下去，也有人说，生容易，活容易，生活不容易。...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">享受慢活</a></span> <span class="dtime f_l">2020-11-16</span> <span class="viewnum f_l">浏览（57）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      <div class="blogs">
        <figure><a href='http://www.aiwke.com/a/manyuedu/20201116/144.html' class='preview'><img src='images/1447641406565685-lp.jpg'/></a> </figure>
        <h3><a href="http://www.aiwke.com/a/manyuedu/20201116/144.html">那些不是事</a></h3>
        <p>人生，原本就该这样。再大的事，无非是个经历而己。明天的太阳照样升起，就像有的时候水来土掩，兵来将挡。任何事情都会成为过去，只要有好的心态，就可以面对人生的...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">慢阅读</a></span> <span class="dtime f_l">2020-11-16</span> <span class="viewnum f_l">浏览（123）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      <div class="blogs">
        <figure><a href='http://www.aiwke.com/a/youke/20200919/143.html' class='preview'><img src='images/1442642178239101-lp.jpg'/></a> </figure>
        <h3><a href="http://www.aiwke.com/a/youke/20200919/143.html">路·过-喜欢在路上</a></h3>
        <p>注定，有些路，只能一个人走；有些事，只能一个人扛。因为我喜欢在路上！走在林间小道上，一个人，晃晃悠悠，无所适从，看着那些在风中微微呻吟着的落叶，远远望去，像一群疲...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">悠客</a></span> <span class="dtime f_l">2020-09-19</span> <span class="viewnum f_l">浏览（109）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      <div class="blogs">
        <figure><a href='http://www.aiwke.com/a/manyuedu/20200919/142.html' class='preview'><img src='images/1442641275653897-lp.jpg'/></a> </figure>
        <h3><a href="http://www.aiwke.com/a/manyuedu/20200919/142.html">人生因分享,人生因分享的风景</a></h3>
        <p>人生的风景，该以怎样的笔墨去形容，以怎样的目光去审视，以怎样的灵魂去容纳？人生因分享，而永远都是那般的美好：生命中本就有许多无可奈何的悲伤和痛苦。路本是同样的路，...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">慢阅读</a></span> <span class="dtime f_l">2020-09-19</span> <span class="viewnum f_l">浏览（178）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      <div class="blogs">
       <figure><a href='http://www.aiwke.com/a/xiangshoumanhuo/20200918/141.html' class='preview'><img src='images/1433935839731755-lp.png'/></a> </figure>
        <h3><a href="http://www.aiwke.com/a/xiangshoumanhuo/20200918/141.html" >跟着自己的心走</a></h3>
        <p>今天就来和大家一起分享一下我个人的心中的所想和所见所闻把！喜欢幽静的小草，却总是邂逅那些鲜艳的花朵；喜欢那种静谧，却一直徘徊在喧嚣的世界；喜欢一种素净，却一直面对...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">享受慢活</a></span> <span class="dtime f_l">2020-09-18</span> <span class="viewnum f_l">浏览（66）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      <div class="blogs">
        <figure><a href='http://www.aiwke.com/a/xiangshoumanhuo/20200918/140.html' class='preview'><img src='images/1442539025939884-lp.jpg'/></a> </figure>
        <h3><a href="http://www.aiwke.com/a/xiangshoumanhuo/20200918/140.html">只想，留住心中的那份静美</a></h3>
        <p>在这个鸟语花香的季节,踏着早晨罗俊杰个人博客的一缕光芒在小路间走着,呼吸着这自然的清晰空气，只想，衣袂飘飘，信步于绿荫小道，或俯首听花开，或低眉赏花香，盈脉脉春意，于眼波中...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">享受慢活</a></span> <span class="dtime f_l">2020-09-18</span> <span class="viewnum f_l">浏览（196）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      <div class="blogs">
        <figure><a href='http://www.aiwke.com/a/xianxiashiguang/20200917/139.html' class='preview'><img src='images/1442457564979540.jpeg'/></a> </figure>
        <h3><a href="http://www.aiwke.com/a/xianxiashiguang/20200917/139.html">走村窜寨- 一路黔行之黔东南</a></h3>
        <p>很早之前就计划国庆和小伙伴们自驾梅里雪山，线路安排都已打上了行程，不幸计划没有变化快，八月底香格里拉的地震把全盘计划打乱了，小伙伴们鸟做兽散，拍屁股各走各的新路线...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">闲暇时光</a></span> <span class="dtime f_l">2020-09-17</span> <span class="viewnum f_l">浏览（180）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      <div class="blogs">
        <figure><a href='http://www.aiwke.com/a/manyuedu/20200916/138.html' class='preview'><img src='images/1442368731721857-lp.jpg'/></a> </figure>
        <h3><a href="http://www.aiwke.com/a/manyuedu/20200916/138.html">人生因为有残缺，所以才会美</a></h3>
        <p>人，越简单就会越快乐;水，掺杂东西越少才会显得清澈靓丽。大自然越安静,才会体现它的本质。人生就是这样，倘若有运，不用祈求，因为祈求也是无用。倘若无运，无需悲伤，因为悲...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">慢阅读</a></span> <span class="dtime f_l">2020-09-16</span> <span class="viewnum f_l">浏览（184）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      <div class="blogs">
        <figure><a href='http://www.aiwke.com/a/xianxiashiguang/20200914/137.html' class='preview'><img src='images/1442201163344838-lp.jpg'/></a> </figure>
        <h3><a href="http://www.aiwke.com/a/xianxiashiguang/20200914/137.html">分享逗逼三人游云南旅行</a></h3>
        <p>不尽感叹时间的飞速，还没有准备好一切就要开始启程，就这样和两位逗逼一起来一趟说走就走的旅行。选择云南源于对香格里拉的的情怀，听说那是早晨罗俊杰个人博客第一缕阳光洒进的地...</p>
        <ul>
          <p class="autor"> <span class="lm f_l"><a href="/">闲暇时光</a></span> <span class="dtime f_l">2020-09-14</span> <span class="viewnum f_l">浏览（188）</span> <span class="pingl f_l">评论（<a>0</a>）</span> </p>
        </ul>
      </div>
      
      <!--topnews内容-->
      
      <div class="links">
        <h3><span>[<a href="/">医学网站推荐</a>]</span>友情链接</h3>
        <ul>
          <li><a href='http://www.meddir.cn/' target='_blank'>医学导航</a> </li>
          <li><a href='http://topic.iiyi.com/hots/' target='_blank'>爱爱医论坛</a> </li>
          <li><a href='http://go.dxy.cn/' target='_blank'>丁香导航</a> </li>
          <li><a href='https://portal.dxy.cn/' target='_blank'>丁香园</a> </li>
          <li><a href='http://care.39.net/' target='_blank'>39健康网</a> </li>
          <li><a href='http://www.cnnutritionist.com/' target='_blank'>中国职业营养师网</a> </li>
          <li><a href='http://xuetangzaixian.com/zhishi/' target='_blank'>健康学堂网</a> </li>
        </ul>
      </div>
    </div>
  </div>
  <!--l_box-left结束-->
  
  <div class="r_box f_r">
    <div class="tit01">
      <h3>动动小指头</h3>
      <div class="gzwm">
        <ul>
          <li><a class="xlwb" href="https://weibo.com/" target="_blank">新浪微博</a></li>
          <li><a class="txwb" href="https://xui.ptlogin2.qq.com/cgi-bin/xlogin?appid=46000101&style=23&lang=&low_login=1&hide_border=1&hide_title_bar=1&hide_close_icon=1&border_radius=1&s_url=http%3A%2F%2Ft.qq.com&daid=6" target="_blank">腾讯微博</a></li>
          <li><a class="rss" href="https://www.zhihu.com/signin?next=%2F" target="_blank">RSS</a></li>
          <li><a class="wx" href="https://mail.qq.com/">邮箱</a></li>
        </ul>
      </div>
    </div>
    <script type="text/javascript" src="js/jia.js" charset="utf-8"></script> 
    <!--tit01 end--> 
    
    <!--天气-->
    <div class="weather">
      <iframe width="250" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1"></iframe>
    </div>
    <div class="moreSelect" id="lp_right_select"> 
      <script>
window.onload = function ()
{
	var oLi = document.getElementById("tab").getElementsByTagName("li");
	var oUl = document.getElementById("ms-main").getElementsByTagName("div");
	
	for(var i = 0; i < oLi.length; i++)
	{
		oLi[i].index = i;
		oLi[i].onmouseover = function ()
		{
			for(var n = 0; n < oLi.length; n++) oLi[n].className="";
			this.className = "cur";
			for(var n = 0; n < oUl.length; n++) oUl[n].style.display = "none";
			oUl[this.index].style.display = "block"
		}	
	}
}
</script>
      <div class="ms-top">
        <ul class="hd" id="tab">
          <li class="cur"><a href="/">贴吧话题</a></li>
          <li><a href="/">最新文章</a></li>
          <li><a href="/">热门推荐</a></li>
        </ul>
      </div>
      <div class="ms-main" id="ms-main">
        <div style="display: block;" class="bd bd-news" >
          <ul>
            <li><a href="http://bbs.med66.com/forum-150-450/topic-2437642.html" target="_blank">髌骨软骨损伤如何治疗？</a></li>
            <li><a href="http://bbs.med66.com/forum-150-450/topic-2168378.html" target="_blank">医学不万能！医生这些无奈你知道吗？</a></li>
            <li><a href="http://bbs.med66.com/forum-150-450/topic-2229633.html" target="_blank">注意！这些科室或将出现“集体跳槽”潮 </a></li>
            <li><a href="http://bbs.med66.com/forum-150-450/topic-2437132.html" target="_blank"> 髌骨软化症中医疗法</a></li>
            <li><a href="http://bbs.med66.com/forum-150-450/topic-2268069.html" target="_blank">怎么预防近视眼？</a></li>
            <li><a href="http://bbs.med66.com/forum-150-450/topic-2429339.html" target="_blank">从医之路，书写记忆深刻的事~</a></li>
          </ul>
        </div>
        <div  class="bd bd-news">
          <ul>
            <li><a href="http://www.kanyixue.com/news/topic/17606.html" target="_blank">救命药终于进医保！然后，它从医院失踪了……</a></li>
            <li><a href="https://haokan.baidu.com/v?vid=18137292890314947594&tab=" target="_blank">好消息！癌症、精神疾病、儿科等药品将参与灵魂砍价</a></li>
            <li><a href="https://mp.weixin.qq.com/s/aIXK3hXSb4JnSd6Tq9qhEg" target="_blank">零下二十摄氏度！天寒地冻也撼不动坚强意志</a></li>
            <li><a href="https://baijiahao.baidu.com/s?id=1685694393777974871" target="_blank">冬季高发！西安23价肺炎球菌疫苗可以接种了</a></li>
            <li><a href="https://news.gmw.cn/2020-12/14/content_34459100.htm" target="_blank">统筹发展和安全 建设更高水平的平安中国</a></li>
            <li><a href="https://baijiahao.baidu.com/s?id=1685501813192308560" target="_blank">「我的脱贫故事」脱贫前我们也害怕“开学”丨剑河县南寨镇白都村村民徐贵青</a></li>
          </ul>
        </div>
        <div class="bd bd-news">
          <ul>
            <li><a href="https://baijiahao.baidu.com/s?id=1685654524701243296" target="_blank">西汉“环保”雁鱼灯：历经坎坷的国宝</a></li>
            <li><a href="https://m.thepaper.cn/baijiahao_10350150" target="_blank">作业到底谁改？教育部表态了</a></li>
            <li><a href="https://baijiahao.baidu.com/s?id=1685697058616144600" target="_blank">泸州作家扶贫队员走红网络引关注</a></li>
            <li><a href="https://m.gmw.cn/baijia/2020-12/10/34452158.html" target="_blank">中国外交部援助阿盟第二批抗疫物资</a></li>
            <li><a href="https://m.thepaper.cn/baijiahao_10341206" target="_blank">国家发改委批复！威县将进入高铁时代</a></li>
            <li><a href="https://baijiahao.baidu.com/s?id=1685663753884732459" target="_blank">山东省环科院拟3-5年内IPO上市</a></li>
          </ul>
        </div>
      </div>
      <!--ms-main end --> 
    </div>
    <!--切换卡 moreSelect end -->
    
    <div class="cloud">
      <h3>标签云<a href="https://www.mvyxws.com/">更多>></a></h3>
      <ul>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E4%B8%89%E9%AB%98' class='tagc1'>三高</a></li>
         <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E6%94%AF%E6%B0%94%E7%AE%A1%E7%82%8E' class='tagc1'>支气管炎</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E5%81%A5%E5%BA%B7%E9%A5%AE%E9%A3%9F' class='tagc2'>健康饮食</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E8%A1%80%E5%8E%8B%E5%8D%87%E9%AB%98' class='tagc2'>血压升高</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E5%8F%91%E7%83%A7' class='tagc2'>发烧</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E5%92%B3%E5%97%BD' class='tagc2'>咳嗽</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E4%B8%AD%E6%9A%91' class='tagc2'>中暑</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E6%97%A0%E5%81%BF%E7%8C%AE%E8%A1%80' class='tagc2'>无偿献血</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E8%A5%BF%E5%8C%BB' class='tagc2'>西医</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E4%B8%AD%E5%8C%BB' class='tagc1'>中医</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E9%A2%84%E9%98%B2%E6%84%9F%E5%86%92' class='tagc2'>预防感冒</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E8%84%89%E6%90%8F' class='tagc2'>脉搏</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E5%A6%82%E4%BD%95%E5%8C%96%E7%96%97' class='tagc1'>如何化疗</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E7%89%99%E7%96%BC' class='tagc1'>牙疼</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E8%80%81%E5%B9%B4%E7%97%B4%E5%91%86' class='tagc1'>老年痴呆</a></li>
        <li><a href='https://www.mvyxws.com/index.php/vod/search?key=%E7%B3%96%E5%B0%BF%E7%97%85' class='tagc2'>糖尿病</a></li>
      </ul>
    </div>
   <div class="tuwen">

      <h3>励志名言</h3>
      <ul>
      <li><img src='images/1433907076123565-lp.jpg' border='0' width='120' height='120' alt='你的目标在你的心里，而不是因为别人的眼光而改变你的方向'><b>你的目标在你的心里，而不是因为别人的眼光而改变你的方向</b>
          <p><span class="tulanmu">享受慢活</span>
          <span class="tutime">2020-06-10</span></p>
        </li>
<li><img src='images/1433936858662517-lp.jpg' border='0' width='120' height='120' alt='有志飘扬过海，无志寸步难行'><b>有志飘扬过海，无志寸步难行</b>
          <p><span class="tulanmu">分享shaer</span>
          <span class="tutime">2020-06-10</span></p>
        </li>
<li><img src='images/1433907243115781-lp.jpg' border='0' width='120' height='120' alt='相识是缘起，相知是缘续，相守是缘定'><b>相识是缘起，相知是缘续，相守是缘定</b>
          <p><span class="tulanmu">悠客</span>
          <span class="tutime">2020-06-10</span></p>
        </li>
<li><img src='images/1433940857381820-lp.jpg' border='0' width='120' height='120' alt='纵然再苦的人生，有了爱的滋润，也会变得温馨'><b>纵然再苦的人生，有了爱的滋润，也会变得温馨</b>
          <p><span class="tulanmu">记录回忆</span>
          <span class="tutime">2020-06-10</span></p>
        </li>
<li><img src='images/1433907506239514-lp.jpg' border='0' width='120' height='120' alt='你生在何方无所谓，关键是你打算往哪里走'><b>你生在何方无所谓，关键是你打算往哪里走</b>
          <p><span class="tulanmu">忙里偷闲</span>
          <span class="tutime">2020-06-10</span></p>
        </li>

        
      </ul>
    </div>--> 
    
    <!--share分享-->
    <div class="share">
      <h2></h2>
      <!-- Baidu Button BEGIN -->
      <div class="bdshare_t bds_tools_32 get-codes-bdshare" id="bdshare"> <a class="bds_tsina"></a> <a class="bds_qzone"></a> <a class="bds_tqq"></a> <a class="bds_renren"></a> <span class="bds_more"></span> <a class="shareCount"></a> </div>
      <script id="bdshare_js" type="text/javascript" data="type=tools&uid=6574585"></script> 
      <script id="bdshell_js" src="js/shell_v2.js" type="text/javascript"></script> 
      <script type="text/javascript">
			document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
		</script> 
      <!-- Baidu Button END -->
      <p></p>
    </div>
    <!--share分享-->
    
    <div class="ad"> <img src="images/03.jpg"> </div>
  </div>
  <!--r_box end --> 
</article>
<!--article主体结束-->

<footer>
   <p>©2020 P&Life智能一体化健康平台 京ICP备13032113</p>
              
</footer>
<script type="text/javascript">
swfobject.registerObject("FlashID");
</script>
</body>
</html>
