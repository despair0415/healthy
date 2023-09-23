<%@page import="com.Itkuang.mvcdemo.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<!-- saved from url=(0042)http://alvarotrigo.com/fullPage/#firstPage -->
<html lang="zh-CN">
<head>
<%
	User user =(User)request.getSession().getAttribute("user");
	if(user==null){
%>
<title>P&Life-您的健康好帮手！</title>
<%
	}else{
	
%>
<title><%=user.getName() %>--P&Life</title>
<%} %>		
<link href="/favicon.ico" rel="icon" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta name="author" content="Alvaro Trigo Lopez">
<meta name="Resource-type" content="Document">
<script type="text/javascript">
   if(window.screen.width <=750){
       window.location.href = "phoneindex.html"/*tpa=/phoneindex.html*/;
   }
</script>
<script src="vendor/website/js/jquery.min_78bc357.js" tppabs="/vendor/website/js/jquery.min_78bc357.js"></script>
<script type="text/javascript" src="vendor/website/js/jquery.fullPage.min_688fc6d.js" tppabs="/vendor/website/js/jquery.fullPage.min_688fc6d.js"></script>
<script type="text/javascript" src="vendor/website/js/jquery.easings.min_80a8980.js" tppabs="/vendor/website/js/jquery.easings.min_80a8980.js"></script>
<script type="text/javascript" src="vendor/website/js/page_3b93263.js" tppabs="/vendor/website/js/page_3b93263.js"></script>
<script type="text/javascript" src="vendor/website/js/script_f7b707d.js" tppabs="/vendor/website/js/script_f7b707d.js"></script>
<script type="text/javascript" src="vendor/website/js/jquery.cookie_119dc0f.js" tppabs="/vendor/website/js/jquery.cookie_119dc0f.js"></script>
<script type="text/javascript" src="vendor/website/js/login_ac5a6c8.js" tppabs="/vendor/website/js/login_ac5a6c8.js"></script>
<script type="text/javascript" src="vendor/website/js/index_da6533b.js" tppabs="/vendor/website/js/index_da6533b.js"></script>
<script src="../res.wx.qq.com/open/js/jweixin-1.0.0.js" tppabs="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="vendor/website/js/ajax_f7aef18.js" tppabs="/vendor/website/js/ajax_f7aef18.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#fullpage').fullpage({
        sectionsColor: ['#fff', '#fff', '#fff', '#fff', '#fff', '#fff'],
        lockAnchors: true,
        menu: '#menu',
        css3: true,
        scrollingSpeed: 800,
        afterLoad: function(anchorLink, index){
            if(index == 1){
                $(".top").hide();

            }else{
                $(".top").show();
            }
        }
    });
    $('.top').click(function(){
        $.fn.fullpage.moveTo(1);
    })
});
    function jp(index){
      $.fn.fullpage.moveTo(index);
    }
</script>
<link rel="stylesheet" type="text/css" href="vendor/website/css/jquery.fullPage_9525770.css" tppabs="/vendor/website/css/jquery.fullPage_9525770.css">
<link rel="stylesheet" type="text/css" href="vendor/website/css/page-animation_a91922d.css" tppabs="/vendor/website/css/page-animation_a91922d.css">
<link rel="stylesheet" type="text/css" href="vendor/website/css/index_98df790.css" tppabs="/vendor/website/css/index_98df790.css">
<body>
<!--[if lte IE 8]>
<style>
    .lowceng{display: block;}
</style>
<![endif]-->
<ul id="menu">
    <li data-menuanchor="firstPage" class="active"><a href="javascript:;" onclick="jp(1)"></a></li>
    <li data-menuanchor="secondPage"><a href="javascript:;" onclick="jp(2)"></a></li>
    <li data-menuanchor="3rdPage"><a href="javascript:;" onclick="jp(3)"></a></li>
    <li data-menuanchor="4thpage"><a href="javascript:;" onclick="jp(4)"></a></li>
    <li data-menuanchor="5fivpage"><a href="javascript:;" onclick="jp(5)"></a></li>
    <li data-menuanchor="lastpage"><a href="javascript:;" onclick="jp(6)"></a></li>
</ul>
<div class="feedback">
    <div class="black"></div>
    <div class="ceng">
        <div class="line"></div>
        <div class="closebtn3"></div>
        <h4>意见反馈</h4>
        <form class="formbox">
            <textarea class="opinion" id="opinion" name="content" maxlength="200" placeholder="您的支持与宝贵的意见是我们改进的动力！"></textarea>
            <div class="codebox">
                <input type="text" class="obtain" id="obtainphone" placeholder="您的手机号">
                <input type="button" class="obtaincode" id="obtaincode" value="获取验证码">
            </div>
            <input type="text" class="code" id="code" placeholder="请输入验证码">
            <input type="button" class="submitBtn" id="submitBtn" value="提交反馈" />
        </form>
    </div>
</div>
<div class="lowceng">
    <div class="white"></div>
    <div class="low" >
       <a href="javascript:if(confirm('http://www.google.cn/intl/zh-CN/chrome/browser/  \n\n���ļ�δ�� Teleport Pro ���أ���Ϊ ��λ����ʼ��ַ�����õı߽���������·���С�  \n\n����Ҫ�ӷ�����������?'))window.location='http://www.google.cn/intl/zh-CN/chrome/browser/'" tppabs="http://www.google.cn/intl/zh-CN/chrome/browser/"></a>
    </div>
</div>
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
            <li id="activityon" class="on"><a href="javascript:void(0)">首页</a></li>
            <li><a href="Detection/Detection_index.jsp"  tppabs="/Detection/Detection_index.jsp">即时检测</a></li>
            <li><a href="Time/time.jsp" tppabs="/Time/time.jsp">脉搏时光机</a></li>
            <li><a href="biog/index.jsp" tpabs="/biog/index.jsp">情感树洞</a></li>
            <li><a href="showpage/personshow.jsp" tppabs="/showpage/personshow.jsp">亲情"0"距离</a></li>
            <li class="hiring"><a href="shop.jsp">"优"品汇</a></li>
        </ul>
    </div>
</div>
<div class="cengboxindex">
</div>
<div class="entrybox">
    <div class="scan">
        <div class="scancode"></div>
    </div>
    <div class="wexin">
        <div class="weixincode"></div>
    </div>
    <div class="top"></div>
</div>
<div id="fullpage" class="fullpage-wrapper">
    <div class="section fp-section" id="section0" data-anchor="firstPage">
        <div class="centerbox">
            <div class="leftbox">
                <div class="toptit"></div>
                <div class="callnum"></div>
                <div class="wechatbox">
                    <a href="login/login.jsp" tppabs="/login/login.jsp" class="iosBtn"></a>
					<a href="login/login.jsp" tppabs="/login/login.jsp" class="androBtn"></a>
                </div>
            </div>
            <div class="girl">
             <map name=mymap>
				<area shape = "rect" coords="148,43,210,110" onfocus="blur(this);" href="Detection/Detection_index.jsp"/>
					<area shape = "rect" coords="18,183,80,250" onfocus="blur(this);" href="shop.jsp"/>
					<area shape = "rect" coords="27,350,89,417" onfocus="blur(this);" href="showpage/showIndex.jsp"/>
					<area shape = "rect" coords="227,440,289,507" onfocus="blur(this);" href="https://www.mvyxws.com/"/>
					<area shape = "rect" coords="390,380,466,447" onfocus="blur(this);" href="showpage/personshow.jsp"/>
					<area shape = "rect" coords="420,210,486,277" onfocus="blur(this);" href="biog/index.jsp"/>
					<area shape = "rect" coords="340,68,416,135" onfocus="blur(this);" href="Time/time.jsp"/>
					<img src="vendor/website/img/girl.png"  usemap="#mymap"  hidefocus="true" height="530" width="510" align="center">
				</img>
            
            </div>
        </div>
    </div>
    <div class="section fp-section" id="section1" data-anchor="secondPage">
        <div class="center">
            <div class="title">
                <h1><img src="vendor/website/img/tit1_73b58f9.png" tppabs="/vendor/website/img/tit1_73b58f9.png" /></h1>
                <p>全方位生活服务，一键智能，尽享健康生活</p>
            </div>
            <div class="service">
                <ul class="servicelist">
                    <li>
                        <div class="Icobox"><a href="Detection/Detection_index.html" target="Detection/Detection_index.html"><div class="serviceIco serviceIco1 step step3 scaleBig" data-delay="800"></div></a></div>
                        <div class="servicebox step step4 ifadeIn" data-delay="1800">
                            <p style="color:rgba(4,190,175,0.92)">任何人群</p>
                            <p style="color:rgba(4,190,175,0.89)">任何时刻</p>
                            <p style="color:rgba(4,190,175,0.82)">一次指尖邂逅</p>
                            <p style="color:rgba(4,190,175,0.78)">精准快速</p>
                            <p style="color:rgba(4,190,175,0.68)">专业高效</p>
                            <p style="color:rgba(4,190,175,0.58)">全方面分析健康</p>
                        </div>
                    </li>
                    <li>
                        <div class="Icobox"><a href="Time/time.html" target="Time/time.html"><div class="serviceIco serviceIco2 step step3 scaleBig" data-delay="1000"></div></a></div>
                        <div class="servicebox step step5 ifadeIn" data-delay="1800">
                            <p style="color: rgba(255,191,40,0.92)">岁月之旅</p>
							<p style="color: rgba(255,191,40,0.89)">生命的痕迹</p>
                            <p style="color: rgba(255,191,40,0.82)">难忘瞬间</p>
							<p style="color: rgba(255,191,40,0.78)">生命的脉动</p>
                            <p style="color: rgba(255,191,40,0.68)">长短不一的一生</p>
                        </div>
                    </li>
                    <li>
                        <div class="Icobox"><a href="biog/index.html" target="biog/index.html"><div class="serviceIco serviceIco3 step step3 scaleBig" data-delay="1200"></div></a></div>
                        <div class="servicebox step step6 ifadeIn" data-delay="1800">
                            <p style="color: rgba(87,185,255,0.92)">心与心的交谈</p>
                            <p style="color: rgba(87,185,255,0.89)">你的心声</p>
                            <p style="color: rgba(87,185,255,0.78)">世界的回声</p>
                            <p style="color: rgba(87,185,255,0.68)">为心灵洗涤</p>
							<p style="color: rgba(87,185,255,0.58)">记录那一瞬间</p>
                        </div>
                    </li>
                    <li>
                        <div class="Icobox"><a href="zhuce/index.jsp"><div class="serviceIco serviceIco4 step step3 scaleBig" data-delay="1400"></div></a></div>
                        <div class="servicebox step step7 ifadeIn" data-delay="1800">
                            <p style="color: rgba(255,143,128,0.92)">远程呵护</p>
                            <p style="color: rgba(255,143,128,0.89)">陪伴父母</p>
                            <p style="color: rgba(255,143,128,0.72)">陪护老人</p>
							<p style="color: rgba(255,143,128,0.62)">照顾父母亲人</p>
                        </div>
                    </li>
                    <li>
                        <div class="Icobox"><a href="https://channel.jd.com/9192-9197.html"><div class="serviceIco serviceIco5 step step3 scaleBig" data-delay="1600"></div></a></div>
                        <div class="servicebox step step8 ifadeIn" data-delay="1800">
                            <p style="color: rgba(243,138,255,0.90)">健康产品</p>
                            <p style="color: rgba(243,138,255,0.77)">公平交易</p>
                            <p style="color: rgba(243,138,255,0.65)">护理健康</p>
                        </div>
                    </li>
                    <li>
                        <div class="Icobox"><a href="#"><div class="serviceIco serviceIco6 step step3 scaleBig" data-delay="1800"></div></a></div>
                        <div class="servicebox step step9 ifadeIn" data-delay="1800">
                            <p style="color: rgba(106,219,84,0.92)">智能护理</p>
                            <p style="color: rgba(106,219,84,0.88)">紧急呼救</p>
                            <p style="color: rgba(106,219,84,0.78)">应急</p>
                            <p style="color: rgba(106,219,84,0.69)">快速处理</p>
                        </div>
                    </li>
                    <li>
                        <div class="Icobox"><a href="https://www.mvyxws.com/"><div class="serviceIco serviceIco7 step step3 scaleBig" data-delay="2000"></div></a></div>
                        <div class="servicebox step step9 ifadeIn" data-delay="2000">
                            <p style="color: rgba(255,166,62,0.92)">全面医学知识</p>
                            <p style="color: rgba(255,166,62,0.88)">专业解答</p>
                            <p style="color: rgba(255,166,62,0.78)">全球领先</p>
                            <p style="color: rgba(255,166,62,0.68)">提问</p>
                            <p style="color: rgba(255,166,62,0.60)">有回复</p>
                            <p style="color: rgba(255,166,62,0.55)">医学专家护航</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="section fp-section" id="section2" data-anchor="3rdPage">
        <div class="showcase">
            <div class="showleft">
                <div class="lefttop">
                    <h1><img src="vendor/website/img/tit_a5594bf.png" tppabs="/vendor/website/img/tit_a5594bf.png" /></h1>
                    <p>"P&life"是行业领先的互联网健康服务平台</p>
                </div>
                <ul class="bannernav">
                    <li class="on"><span>贴心陪伴<b></b></span></li>
                    <li><span>医学微视<b></b></span></li>
                    <li><span>及时反馈<b></b></span></li>
                    <li><span>关于P&Life<b></b></span></li>
                </ul>
                <div class="wechat"></div>
            </div>
            <div class="showright">
                <div class="bannerbox">
                    <div class="imgbox">
                        <div><img src="vendor/website/img/banner1.jpg" tppabs="/vendor/website/img/banner1_7013257.png" /></div>
                        <div><img src="vendor/website/img/banner2.jpg" tppabs="/vendor/website/img/banner2_7f116c7.png" /></div>
                        <div><img src="vendor/website/img/banner3.jpg" tppabs="/vendor/website/img/banner3_1d7b333.png" /></div>
                        <div><img src="vendor/website/img/banner4.jpg" tppabs="/vendor/website/img/banner4_e3acdc7.png" /></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section fp-section" id="section3" data-anchor="4thpage">
        <div class="center2">
            <div class="title2">
                <h1><img src="vendor/website/img/tit2_d2fb9ae.png" tppabs="/vendor/website/img/tit2_d2fb9ae.png" /></h1>
                <p>专业、便捷、安全并驾齐驱，口碑是P&Life的立身之本</p>
            </div>
           <ul class="feature">
                <li>
                    <div class="featureicobox"><div class="featureico1"></div></div>
                    <h2 style="color: rgba(1,190,175)" class="h21"><b>专业</b></h2>
                    <p style="color: rgba(1,190,175)" class="p1">检测、解答，专业权威；</p>
                    <p style="color: rgba(1,190,175)" class="p1">系统优化、专业工具、标准化流程</p>
                </li>
                <li>
                    <div class="featureicobox"><div class="featureico2"></div></div>
                    <h2 style="color: rgba(255,180,1)" class="h22"><b>便捷</b></h2>
                    <p style="color: rgba(255,180,1)" class="p2">随时随地一键智能；个性化需求智能匹配；</p>
                    <p style="color: rgba(255,180,1)" class="p2">无需现金，轻松支付</p>
                </li>
                <li>
                    <div class="featureicobox"><div class="featureico3"></div></div>
                    <h2 style="color: rgba(109,208,28)" class="h23"><b>安全</b></h2>
                    <p style="color: rgba(109,208,28)" class="p3">用户、服务商实名认证；</p>
                    <p style="color: rgba(109,208,28)" class="p3">智能服务，保驾护航</p>
                </li>
            </ul>
        </div>
    </div>
    <div class="section fp-section" id="section4" data-anchor="5fivpage">
        <div class="center3">
            <div class="title3">
                <h1><img src="vendor/website/img/tit3_f7001ea.png" tppabs="/vendor/website/img/tit3_f7001ea.png" /></h1>
            </div>
            <div class="course">
                <div class="centerline">
                    <div class="inline"></div>
                    <div class="dotted dotted1"></div>
                    <div class="dotted dotted2"></div>
                    <div class="dotted dotted3"></div>
                    <div class="dotted dotted4"></div>
                    <div class="dotted dotted5"></div>
                    <div class="dotted dotted6"></div>
                    <div class="dotted dotted7"></div>
                    <div class="dotted dotted8"></div>
                    <div class="dotted dotted9"></div>
                    <div class="leftachive leftachive1">
                        <p class="achivetime">2021年7月</p>
                        <p class="achiveinfor">全面运营，寻找合作伙伴，投入市场，进行长期运营！</p>
                    </div>
                    <div class="leftachive leftachive2">
                        <p class="achivetime">2021年6月</p>
                        <p class="achiveinfor">P&Life完成项目报告提交，同期产品进行全面升级，发布开放平台战略</p>
                    </div>
                    <div class="leftachive leftachive3">
                        <p class="achivetime">2021年4月</p>
                        <p class="achiveinfor">完工，进行试运营。</p>
                    </div>
                    <div class="leftachive leftachive4">
                        <p class="achivetime">2021年3月</p>
                        <p class="achiveinfor">两个阶段开发完成，进行压力测试！</p>
                    </div>
                    <div class="leftachive leftachive5">
                        <p class="achivetime">2021年1月</p>
                        <p class="achiveinfor">P&Life第一阶段开发完成，进入第二阶段研发。</p>
                    </div>
                    <div class="rightachive rightachive1">
                        <p class="achivetime">2020年12月</p>
                        <p class="achiveinfor">P&Life一体化团队进行第一阶段开发。</p>
                    </div>
                    <div class="rightachive rightachive2">
                        <p class="achivetime">2020年10月</p>
                        <p class="achiveinfor">成立项目组，进入预设开发阶段。</p>
                    </div>
                    <div class="rightachive rightachive3">
                        <p class="achivetime">2020年7月</p>
                        <p class="achiveinfor">获得大创项目投标。</p>
                    </div>
                    <div class="rightachive rightachive4">
                        <p class="achivetime">2020年6月</p>
                        <p class="achiveinfor">P&Life智能一体化平台进入构想、创设阶段。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section fp-section" id="section5" data-anchor="lastpage">
        <div class="media">
            <div class="pepole"></div>
            <div class="infor">
                <div class="infortop"></div>
                <div class="infortop2"></div>
                <p style="font-size:17px" class="infortext">&nbsp;&nbsp;&nbsp;&nbsp;“P&Life”智能一体化健康平台——专业的监护，贴心的提示，永久的陪伴，记录你一生的心动，呵护人们一生的健康，给人们一生安心的“家”。该智能一体化健康平台是一个专业化、数字化、智能化、人性化的健康理念平台，是以“人·健康·生活”为主，服务用户！</p>
                <div class="mediatit">媒体报道</div>
                <p class="mediainfor mediainfor3">权威AppBase数据显示，P&Life健康服务平台在服务行业领先!</p>
                <p class="mediainfor mediainfor1">“P&Life”入选2020年度中国互联网竞争力企业。</p>
                <p class="mediainfor mediainfor2">“P&Life”参加全国互联网+创新大赛，不断进取。</p>
            </div>
        </div>
        <div class="footer">
            <div class="footercenter">
                <p style="margin-left: 100px;">Copyright © 2020 P&Life智能一体化健康平台 陕ICP备13032113</p>
                <div class="footerList">
                    <a href="javascript:void(0)" class="say">意见反馈</a><span>|</span>
                    <a href="#" tppabs="/aboutOur.html#history">发展历程</a><span>|</span>
                    <a href="#" tppabs="/aboutOur.html#media">媒体报道</a><span>|</span>
                    <a href="#" tppabs="/aboutOur.html#addour">加入我们</a><span>|</span>
                    <a href="#" tppabs="/userprotocol.html">用户协议</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script type="text/javascript" src="vendor/website/js/comment_f5fe4ec.js" tppabs="/vendor/website/js/comment_f5fe4ec.js"></script>
</html>
