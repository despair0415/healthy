<%@page import="com.Itkuang.mvcdemo.factory.DAOFactory"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="com.Itkuang.mvcdemo.vo.data"%>
<%@page import="com.Itkuang.mvcdemo.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*"%>   
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>即时检测</title>
	</head>
	<style>
		
			body{
				margin: 0;
				}
		
		video{
		
			position: fixed; 
			right:0;
			bottom:0;
			min-width:100%;
			min-height:100%; 
			width: auto;
			height:auto;
			z-index:-9999; 
			background-size: cover;
		}
	</style>

	<body>
		<video autoplay muted loop style="width: 100%;" >
			<source src="video/bg.mp4" type="video/mp4">
		</video>
		<!------------------  检测操作 准备弹窗 --------------->
		<div id="reboot_pre" style="width: 450px; height: 200px; margin-left:auto; margin-right:auto; margin-top:200px; visibility:hidden; background: #F0F0F0; border:1px solid #EE6363; z-index:9999">
			<div style="width: 450px; height: 30px; background:#EE6363; line-height:30px;text-align: center;"><b>准备中</b></div>
			<br /><br />
			<div><p style="margin-left:50px">正在努力为您检测...   还需稍候 <span id="reboot_pre_time">4</span> 秒</p></div>
			<br />
			<div><button type="button" style="width:70px; height:30px; margin-left:340px" οnclick="reboot_cancel()">取消</button></div>
		</div>
		<!------------------  检测操作 准备弹窗 --------------->
 
		<!------------------  检测操作 进行弹窗 --------------->
		<div id="reboot_ing" style="width: 450px; height: 150px;  margin-left:auto; margin-right:auto; margin-top:-150px; visibility: hidden; background: #F0F0F0; border:1px solid #EE6363">
			<div style="width: 450px; height: 30px; background:#EE6363; line-height:30px;text-align: center;"><b>检测中</b></div>
			<br />
			
			<div><p style="margin-left:40px">脉搏检测正在进行中...   还需稍候 <span id="reboot_ing_time">14</span> 秒</p></div>
			<br />
			<%
			int aa=(int)(Math.random()*70+50);
			int bb=(int)(Math.random()*80+75);
			int cc=(int)(Math.random()*55+50);
			HttpSession sess = request.getSession();
			sess.setAttribute("aa", aa);
			sess.setAttribute("bb", bb);
			sess.setAttribute("cc", cc);
			User user = (User)request.getSession().getAttribute("user");
			if(user!=null){
			Date date = new Date();       
			Timestamp nousedate = new Timestamp(date.getTime());
			data dd = new data(user.getUserid(), nousedate,aa,bb,cc);
			DAOFactory.getIUserDAOInstance().doData(dd);
			}
			%>
			<div  id="progress_reboot" style="margin-left:40px;color:#EE6363;font-family:Arial;font-weight:bold;height:18px">|</div>
			<br />
		</div>
		<!------------------  重启操作 进行弹窗 --------------->
 
 
<script type="text/javascript">
				
				var cancel_flag = 0;
				var already = 0;
 
				/* 网页一加载就执行的操作 */
				window.onload = reboot();
 
				/* 重启按钮的单击操作 */
				function reboot(){
					
						document.getElementById("reboot_pre_time").innerHTML = 3;
						document.getElementById("reboot_ing_time").innerHTML = 8;
						document.all.progress_reboot.innerHTML = "|";
						download_flag = 0;
						cancel_flag = 0;
						already = 0;
						setTimeout("showDiv('reboot_pre')",500);
						delayPre_reboot("reboot_pre_time");
					
				}
				/* 重启准备弹窗计时 5秒 */
				function delayPre_reboot(str) {
					if(!cancel_flag){
						var delay = document.getElementById(str).innerHTML;
						if(delay > 0) {
							delay--;
							document.getElementById(str).innerHTML = delay;
							setTimeout("delayPre_reboot('reboot_pre_time')", 1000);
						} else {
							hideDiv("reboot_pre");
							setTimeout("showDiv('reboot_ing')",500);
							delayDo_reboot("reboot_ing_time");
						}
					}
				}
				/* 重启进行中弹窗计时 15秒 */
				function delayDo_reboot(str){
					display_reboot(100);
					var delay = document.getElementById(str).innerHTML;
					if(delay > 0) {
						delay--;
						document.getElementById(str).innerHTML = delay;
						setTimeout("delayDo_reboot('reboot_ing_time')", 1000);
					} else {
						hideDiv("reboot_ing");
						//alert("检测成功！");
						window.location.href="/PLife/showpage/showIndex.jsp";
					}
				}
				/* 重启准备时 取消按钮的事件*/
				function reboot_cancel(){
					cancel_flag = 1;
					hideDiv("reboot_pre");
					alert("您已经成功取消了检测操作！");
				}
				/* 显示弹窗 */
				function showDiv (str){
					document.getElementById(str).style.visibility = "visible";
				}
				/* 隐藏弹窗 */
				function hideDiv (str){
					document.getElementById(str).style.visibility = "hidden";
				}
 
				/* 检测进行中弹窗计时，缓冲条的移动*/
				function display_reboot(max){
					 already++;
					 var dispObj = document.all.progress_reboot;
					 dispObj.style.width = 100.0*already/max+"px";
					 document.all.progress_reboot.innerHTML += "||||||||||";
					 var timer = window.setTimeout("display("+max+")",1000);
					 if (already >= max){
						window.clearTimeout(timer);
					 }
				}
				 
		</script>

		
	</body>
</html>
