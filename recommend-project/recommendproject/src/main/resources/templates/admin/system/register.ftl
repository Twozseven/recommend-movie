<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>注册页面 推荐系统注册页面</title>
<#include "../common/header.ftl">
<style>
.lyear-wrapper {
    position: relative;
}
.lyear-login {
    display: flex !important;
    min-height: 100vh;
    align-items: center !important;
    justify-content: center !important;
}
.login-center {
    background: #fff;
    min-width: 38.25rem;
    padding: 2.14286em 3.57143em;
    border-radius: 5px;
    margin: 2.85714em 0;
}
.login-header {
    margin-bottom: 1.5rem !important;
}
.login-center .has-feedback.feedback-left .form-control {
    padding-left: 38px;
    padding-right: 12px;
}
.login-center .has-feedback.feedback-left .form-control-feedback {
    left: 0;
    right: auto;
    width: 38px;
    height: 38px;
    line-height: 38px;
    z-index: 4;
    color: #dcdcdc;
}
.login-center .has-feedback.feedback-left.row .form-control-feedback {
    left: 15px;
}
</style>
</head>
  
<body>
<div class="row lyear-wrapper">
  <div class="lyear-login">
    <div class="login-center">
      <div class="login-header text-center">
        <p>注册</p>
      </div>
      <form id="login-form" method="post">
        <div class="form-group has-feedback feedback-left">
          <input type="text" placeholder="请输入您的用户名" class="form-control required" name="username" id="username"  tips="请填写用户名"/>
          <span class="mdi mdi-account form-control-feedback" aria-hidden="true"></span>
        </div>
        <div class="form-group has-feedback feedback-left">
          <input type="password" placeholder="请输入密码" class="form-control required" id="password" name="password"  tips="请填写密码"/>
          <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
        </div>
       <div class="form-group has-feedback feedback-left">
          <input type="text" placeholder="请填写专业" class="form-control required" id="major" name="major"  tips="请填写专业"/>
          <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
        </div>
       <div class="form-group has-feedback feedback-left">
          <input type="text" placeholder="请填写邮箱" class="form-control required" id="email" name="email"  tips="请填写密码"/>
          <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
        </div>
        <div class="form-group">
          <button class="btn btn-block btn-primary" type="button" id="submit-btn">立即注册</button>
        </div>
      </form>
      <hr>
      <footer class="col-sm-12 text-center">
        <p class="m-b-0">Copyright © 2020 <a href="">【ZL】</a>. All right reserved</p>
      </footer>
    </div>
  </div>
</div>
<#include "../common/footer.ftl">
<script type="text/javascript">
$(document).ready(function(){
    $("#submit-btn").click(function(){
     if(!checkForm("login-form")){
    return;
    }   
    var username = $("#username").val();     
    var password = $("#password").val();       
    var major= $("#major").val();
    var email= $("#email").val();
     $.ajax({
     url:'/system/register',
     type:'POST',
     data:{username:username,password:password,major:major,email:email},
     dataType:'json',
     async:true,
     success:function(data){
        if(data.type =='success'){
        //表示注册成功，跳转到页面       
        window.location.href = '/system/login';
        }else{
        showErrorMsg(data.msg);
        }
     },
     error:function(data){
     alert('发生错误')
     }
     });
     
     
     });
});

	
</script>
</body>
</html>