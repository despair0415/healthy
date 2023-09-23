<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<title>P&life登录注册</title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="images/login.js"></script>
<link href="css/login2.css" rel="stylesheet" type="text/css" />
</head>
<body>
<h1>P&Life智能一体化健康平台<sup>2020</sup></h1>
<script language="javascript">
	function validate(f){
		if(!(/^\w{5,15}$/.test(f.userid.value))){
			alert("用户ID必须是6~15位！") ;
			f.userid.focus() ;
			return false ;
		}
		if(!(/^\w{5,15}$/.test(f.userpass.value))){
			alert("密码必须是6~15位！") ;
			f.userpass.focus() ;
			return false ;
		}
	}
</script>
<div class="login" style="margin-top:50px;">
    
    <div class="header">
        <div class="switch" id="switch"><a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
			<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8">快速注册</a><div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
        </div>
    </div>    
  
    
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;">    

            <!--登录-->
            <div class="web_login" id="web_login">
               
               
               <div class="login-box">
    
			<div class="login_form">
				<form action="/PLife/Login" name="loginform" onSubmit="return validate(this)" accept-charset="utf-8" id="login_form" class="loginForm" method="post"><input type="hidden" name="did" value="0"/>
	                <input type="hidden" name="to" value="log"/>
	                <div class="uinArea" id="uinArea">
	                <label class="input-tips" for="u">帐号：</label>
	                <div class="inputOuter" id="uArea">
	                    
	                    <input type="text" id="u" name="userid" class="inputstyle"/>
	                </div>
	                </div>
	                <div class="pwdArea" id="pwdArea">
	               <label class="input-tips" for="p">密码：</label> 
	               <div class="inputOuter" id="pArea">
	                    <input type="password" id="p" name="userpass" class="inputstyle"/>
	                </div>
	                </div>
	               
	                <div style="padding-left:50px;margin-top:20px;"><input type="submit" value="登 录" style="width:150px;" class="button_blue"/></div>
              </form>
           </div>
           
            	</div>
               
            </div>
            <!--登录end-->
  </div>

  <!--注册-->
    <div class="qlogin" id="qlogin" style="display: none; ">
   
    <div class="web_login"><form   name="form2" id="regUser" accept-charset="utf-8"  action="/PLife/Login1" method="post">
	      <input type="hidden" name="to" value="reg"/>
		      		       <input type="hidden" name="did" value="0"/>
        <ul class="reg_form" id="reg-ul">
        		<div id="userCue" class="cue">快速注册请注意格式</div>
                <li>
                 <label for="qq" class="input-tips2">账号：</label>
                    <div class="inputOuter2">
                        <input type="text" id="qq" name="qq" maxlength="10" class="inputstyle2"/>
                    </div>
                   
                </li>
                <li>
                	
                    <label for="user"  class="input-tips2">用户名：</label>
                    <div class="inputOuter2">
                        <input type="text" id="user" name="user" maxlength="16" class="inputstyle2"/>
                    </div>
                    
                </li>
                
                <li>
                <label for="passwd" class="input-tips2">密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd"  name="passwd" maxlength="16" class="inputstyle2"/>
                    </div>
                    
                </li>
                <li>
                <label for="passwd2" class="input-tips2">确认密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd2" name="" maxlength="16" class="inputstyle2" />
                    </div>
                    
                </li>
                
                
                <li>
                    <div class="inputArea">
                        <input type="button" id="reg"  style="margin-top:10px;margin-left:85px;" class="button_blue" value="同意协议并注册"/> 
                    </div>
                    
                </li><div class="cl"></div>
            </ul></form>
           
    
    </div>
   
    
    </div>
    <!--注册end-->
</div>
</body></html>