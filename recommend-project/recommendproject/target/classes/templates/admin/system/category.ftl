<!DOCTYPE HTML>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="/home/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="/home/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="/home/js/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="/home/js/move-top.js"></script>
<script type="text/javascript" src="/home/js/easing.js"></script>
<script type="text/javascript" src="/home/js/jquery.nivo.slider.js"></script>
<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
    
<style>
.item{
display: block;
	float: left;
	margin: 1% 0 1% 1.6%;
	box-shadow: 0px 0px 3px rgb(150, 150, 150);
	-webkit-box-shadow: 0px 0px 3px rgb(150, 150, 150);
	-moz-box-shadow: 0px 0px 3px rgb(150, 150, 150);
	-o-box-shadow: 0px 0px 3px rgb(150, 150, 150);
	height:380px;
	margin-left: 0 ;
}


</style>
</head>
<body>
	<div class="header">
		 <div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li><a href="/itemcf/itemcf?uid=${uid!""}">主页</a></li>						
						<li><a href="#">联系我们</a></li>
					</ul>
				</div>
					<div class="account_desc">
						<ul>
							<li><a href="/system/register">注册</a></li>
							<li><a href="/system/login">登录</a></li>							
							<li><a href="#">我的</a></li>
						</ul>
					</div>
				<div class="clear"></div>
			</div>
	  	</div>
  	  		
   <!------------End Header ------------>
  <div class="main">
  	<div class="wrap">
      <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>${categorys.name!""}</h3>
    		</div>
    	</div>
	      <div class="section group">
	           
	           <#list findFilmByCategoryIds as findFilmByCategoryId>
				<div class="item images_1_of_5">
					 <a href="/film/list?fid=${findFilmByCategoryId.fid}"><img src="${findFilmByCategoryId.url}" alt="" /></a>
					 <h2 id="title"><a href="preview.html">${findFilmByCategoryId.title}</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">${findFilmByCategoryId.rank}</span></p>
					    </div>
					       		<div class="add-cart" >								
									<h4 ><a href="/system/like2?uid=${uid!""}&&fid=${findFilmByCategoryId.fid}">喜爱</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>					 
				</div>
			  </#list>
			 
			</div>
			
       </div>
  </div>
</div>
   <div class="footer">
   	  <div class="wrap">	
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>信息</h4>
						<ul>
						<li><a href="#">About Us</a></li>						
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>为何选择我们</h4>
						<ul>
						<li><a href="#">About Us</a></li>						
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>我的账户</h4>
						<ul>
							<li><a href="">登录</a></li>							
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li><span>+QQ：2578946963</span></li>
							<li><span>+QQ：651297062</span></li>
						</ul>
						
				</div>
			</div>
			 <div class="copy_right">
				<p>Copyright &copy; 2020.推荐系统 All rights reserved.</p>
		   </div>			
        </div>
    </div>
    <script src="/admin/js/common.js"></script>
    <script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
			
		});
		
        
	</script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>

</body>
</html>

