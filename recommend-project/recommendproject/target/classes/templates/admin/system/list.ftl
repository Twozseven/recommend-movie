<!DOCTYPE HTML>
<head>
<title>Preview</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="/home/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="/home/js/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="/home/js/move-top.js"></script>
<script type="text/javascript" src="/home/js/easing.js"></script>
<style>
.hot{
	
	width:55%;
	margin-left:5%;
	padding:10px;
	font-size:12px;
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
						<li><a href="">联系我们</a></li>
						
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
						  <div class="cart">
						  	   <p><span>Cart</span><div id="dd" class="wrapper-dropdown-2"> (empty)
						  	   	<ul class="dropdown">
										<li>you have no items in your Shopping cart</li>
								</ul></div></p>
						  </div>
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
   		</div>
   </div>
   <div class="main">
   	 <div class="wrap">
   	 	<div class="content_top">
    		<div class="back-links">   		
    		<p><a href="/itemcf/itemcf?uid=${uid!""}">首页</a> &gt;&gt;&gt;&gt; <a href="#" class="active">English</a></p>   		
    	    </div>
    		<div class="clear"></div>
    	</div>
   	 	<div class="section group">
				<div class="cont-desc span_1_of_2">
				  <div class="product-details">				
					<div class="grid images_3_of_2">
						<img src="${findfilm.url}" alt="" />
				  </div>
				<div class="desc span_3_of_2">
					<h2>${findfilm.title} </h2>
					<p><span>导演</span> &nbsp;${findfilm.author}</p>					
					<div class="price">
						<p>评分: <span>${findfilm.rank}</span></p>
					</div>
					<div class="available">
						<ul>
						  <li><span>上映时间</span> &nbsp; ${findfilm.date}</li>
						  <li><span>地区:</span>&nbsp; ${findfilm.place}</li>						  
					    </ul>
					</div>
				<div class="share-desc">					
					<div class="button"><span><a href="/system/like1?uid=${uid!""}&&fid=${findfilm.fid}">喜爱</a></span></div>					
					<div class="clear"></div>
				</div>				 
			</div>
			<div class="clear"></div>
		  </div>
		<div class="product_desc">	
			 <h2>简介 :</h2>
			   <p>${findfilm.digest}</p>	           
	   </div>
   </div>
				<div class="rightsidebar span_3_of_1 sidebar">
					<h2>最新热映</h2>
					<#list findTopNFilms as topHot>
					 	<div class="special_movies">
					 	   <div class="movie_poster">
					 		  <a href=""><img src="${topHot.url}" alt="" /></a>
					 		 </div>
					 		   <div class="movie_desc">
							   <h3><a href="">${topHot.title}</a></h3>
								   <p>评分 &nbsp; ${topHot.rank}</p>
								     <span><a href="/system/like1?uid=${uid}&&fid=${topHot.fid}">喜爱</a></span>
								 </div>
								<div class="clear"></div>
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
							<li><a href="contact.html">登录</a></li>							
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
   <script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

