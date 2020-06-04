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
</head>
<body>
	<div class="header">
		 <div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li><a href="#">主页</a></li>						
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
  	  		<div class="wrap">
				<div class="header_top">
					<div class="logo">
						<a href="index.html"><img src="/home/img/dy-logo.jpg" alt="" /></a>
					</div>
						<div class="header_top_right">
						  
							  <div class="search_box">
					     		<form>
					     			<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
					     		</form>
					     	</div>
						 <div class="clear"></div>
					</div>
						  <script type="text/javascript">
								function DropDown(el) {
									this.dd = el;
									this.initEvents();
								}
								DropDown.prototype = {
									initEvents : function() {
										var obj = this;
					
										obj.dd.on('click', function(event){
											$(this).toggleClass('active');
											event.stopPropagation();
										});	
									}
								}
					
								$(function() {
					
									var dd = new DropDown( $('#dd') );
					
									$(document).click(function() {
										// all dropdowns
										$('.wrapper-dropdown-2').removeClass('active');
									});
					
								});
					    </script>
			 <div class="clear"></div>
  		</div>     
				<div class="header_bottom">
					<div class="header_bottom_left">				
						<div class="categories">
						   <ul>
						  	   <h3>分类</h3>
							      <li><a href="/category/category?categoryid=1">动作</a></li>
							      <li><a href="/category/category?categoryid=2">爱情</a></li>
							      <li><a href="/category/category?categoryid=3">奇幻</a></li>
							      <li><a href="/category/category?categoryid=4">历史</a></li>
							      <li><a href="/category/category?categoryid=5">科幻</a></li>
							       <li><a href="/category/category?categoryid=6">动画</a></li>
							       <li><a href="/category/category?categoryid=7">喜剧</a></li>
							       <li><a href="/category/category?categoryid=8">惊悚</a></li>
							       <li><a href="/category/category?categoryid=9">犯罪</a></li>
							       
						  	 </ul>
						</div>					
		  	         </div>
						    <div class="header_bottom_right">					 
						 	    <!------ Slider ------------>
								  <div class="slider">
							      	<div class="slider-wrapper theme-default">
							            <div id="slider" class="nivoSlider">
							                <img src="/home/images/1.jpg" data-thumb="images/1.jpg" alt="" />
							                <img src="/home/images/2.jpg" data-thumb="images/2.jpg" alt="" />
							                <img src="/home/images/3.jpg" data-thumb="images/3.jpg" alt="" />
							                <img src="/home/images/4.jpg" data-thumb="images/4.jpg" alt="" />
							                 <img src="/home/images/5.jpg" data-thumb="images/5.jpg" alt="" />
							            </div>
							        </div>
						   		</div>
						<!------End Slider ------------>
			         </div>
			     <div class="clear"></div>
			</div>
   		</div>
   </div>
   <!------------End Header ------------>
  <div class="main">
  	<div class="wrap">
      <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>为您推荐</h3>
    		</div>
    	</div>
	      <div class="section group">
	           
	           <#list recomLists as recomList>
				<div class="grid_1_of_5 images_1_of_5">
					 <a href="/film/list?fid=${recomList.fid}"><img src="${recomList.url}" alt="" /></a>
					 <h2 id="title"><a href="preview.html">${recomList.title}</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">${recomList.rank}</span></p>
					    </div>
					       		<div class="add-cart" >								
									<h4 ><a href="/system/like?uid=${uid}&&fid=${recomList.fid}">喜爱</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>					 
				</div>
			  </#list>
			 
			</div>
			<div class="content_bottom">
    		<div class="heading">
    		<h3>最热电影</h3>
    		</div>
    	  </div>
			<div class="section group">
			    <#list recomLists3 as MostHot>
				<div class="grid_1_of_5 images_1_of_5">
					 <a href="/film/list?fid=${MostHot.fid}"><img src="${MostHot.url}" alt="" /></a>
					 <h2><a href="preview.html">${MostHot.title}</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">${MostHot.rank}</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="/system/like?uid=${uid}&&fid=${MostHot.fid}">喜爱</a></h4>
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

