<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping</title>
<!--css-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!--search jQuery-->
	<script src="js/main.js"></script>
<!--search jQuery-->
<script src="js/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
 </script>
 <!--mycart-->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
  <!--start-rate-->
<script src="js/jstarbox.js"></script>
	<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>
		<style type="text/css">
			input[type=text] {
    width: 550px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 700px;
}

		</style>
<!--//End-rate-->

</head>
<body>

<!--header-->
		<div class="header">
			<div class="header-top">
				<div class="container">
					 <!-- <div class="top-left">
						<a href="#"> Help  <i class="glyphicon glyphicon-phone" aria-hidden="true"></i> +0123-456-789</a>
					</div> -->
					
					<div class="logo-nav-left">
							<h1><a href="index.jsp">New Shop <span>Shop anywhere</span></a></h1>
						</div>
					
					<input type="text" name="search" placeholder="Search.." style="width:540px;height:40px;margin-left:40px;">
					
					<div class="top-right">
					<ul>
						<li><a href="checkout.jsp">Checkout</a></li>
						<li><a href="registered12.jsp">Register</a></li>
						<s:if test="%{#session.a != null}">
						<font color="white">Welcome <s:property value="#session.username"/></font>
						<li><a href="logout.action">Logout</a></li>
						</s:if>
						<s:else>
						<li><a href="login.jsp">Login</a></li>
						</s:else>
						<li><a href="registered12.jsp"> Create Account </a></li>
					</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- <div class="header-top1">
				<div class="container">
					<div class="top-center">
 				 <input type="text" name="search" placeholder="Search..">
					</div>
					
				</div>
			</div> -->
			<div class="heder-bottom">
				<div class="container">
					<div class="logo-nav">
						<!-- <div class="logo-nav-left">
							<h1><a href="index.jsp">New Shop <span>Shop anywhere</span></a></h1>
						</div> -->
						<div class="logo-nav-left1">
							<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li class="active"><a href="index.jsp" class="act">Home</a></li>	
									<!-- Mega Menu -->
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Women<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu1</h6>
														<li><a href="products.jsp">Clothing</a></li>
														<li><a href="products.jsp">Wallets</a></li>
														<li><a href="products.jsp">Shoes</a></li>
														<li><a href="products.jsp">Watches</a></li>
														<li><a href="products.jsp"> Underwear </a></li>
														<li><a href="products.jsp">Accessories</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu2</h6>
														<li><a href="products.jsp">Sunglasses</a></li>
														<li><a href="products.jsp">Wallets,Bags</a></li>
														<li><a href="products.jsp">Footwear</a></li>
														<li><a href="products.jsp">Watches</a></li>
														<li><a href="products.jsp">Accessories</a></li>
														<li><a href="products.jsp">Jewellery</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
														<a href="products.jsp"><img src="images/woo.jpg" alt=" "/></a>
												</div> 
												<div class="col-sm-3  multi-gd-img">
														<a href="products.jsp"><img src="images/woo1.jpg" alt=" "/></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu1</h6>
														<li><a href="products.jsp">Clothing</a></li>
														<li><a href="products.jsp">Wallets</a></li>
														<li><a href="products.jsp">Shoes</a></li>
														<li><a href="products.jsp">Watches</a></li>
														<li><a href="products.jsp"> Underwear </a></li>
														<li><a href="products.jsp">Accessories</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu2</h6>
														<li><a href="products.jsp">Sunglasses</a></li>
														<li><a href="products.jsp">Wallets,Bags</a></li>
														<li><a href="products.jsp">Footwear</a></li>
														<li><a href="products.jsp">Watches</a></li>
														<li><a href="products.jsp">Accessories</a></li>
														<li><a href="products.jsp">Jewellery</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
														<a href="products1.jsp"><img src="images/woo3.jpg" alt=" "/></a>
												</div> 
												<div class="col-sm-3  multi-gd-img">
														<a href="products1.jsp"><img src="images/woo4.jpg" alt=" "/></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>
									<li><a href="codes.jsp">Short Codes</a></li>
									<li><a href="mail.jsp">Mail Us</a></li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Women<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu1</h6>
														<li><a href="products.jsp">Clothing</a></li>
														<li><a href="products.jsp">Wallets</a></li>
														<li><a href="products.jsp">Shoes</a></li>
														<li><a href="products.jsp">Watches</a></li>
														<li><a href="products.jsp"> Underwear </a></li>
														<li><a href="products.jsp">Accessories</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu2</h6>
														<li><a href="products.jsp">Sunglasses</a></li>
														<li><a href="products.jsp">Wallets,Bags</a></li>
														<li><a href="products.jsp">Footwear</a></li>
														<li><a href="products.jsp">Watches</a></li>
														<li><a href="products.jsp">Accessories</a></li>
														<li><a href="products.jsp">Jewellery</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
														<a href="products.jsp"><img src="images/woo.jpg" alt=" "/></a>
												</div> 
												<div class="col-sm-3  multi-gd-img">
														<a href="products.jsp"><img src="images/woo1.jpg" alt=" "/></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu1</h6>
														<li><a href="products.jsp">Clothing</a></li>
														<li><a href="products.jsp">Wallets</a></li>
														<li><a href="products.jsp">Shoes</a></li>
														<li><a href="products.jsp">Watches</a></li>
														<li><a href="products.jsp"> Underwear </a></li>
														<li><a href="products.jsp">Accessories</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu2</h6>
														<li><a href="products.jsp">Sunglasses</a></li>
														<li><a href="products.jsp">Wallets,Bags</a></li>
														<li><a href="products.jsp">Footwear</a></li>
														<li><a href="products.jsp">Watches</a></li>
														<li><a href="products.jsp">Accessories</a></li>
														<li><a href="products.jsp">Jewellery</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
														<a href="products1.jsp"><img src="images/woo3.jpg" alt=" "/></a>
												</div> 
												<div class="col-sm-3  multi-gd-img">
														<a href="products1.jsp"><img src="images/woo4.jpg" alt=" "/></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>
									<li><a href="codes.jsp">Short Codes</a></li>
									<li><a href="mail.jsp">Mail Us</a></li>
								</ul>
							</div>
							</nav>
						</div>
						<!-- <div class="logo-nav-right">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul> <!-- cd-header-buttons -->
							<!-- <div id="cd-search" class="cd-search">
								<form action="#" method="post">
									<input name="Search" type="search" placeholder="Search...">
								</form>
							</div>	
						</div> -->
						<div class="header-right2">
							<div class="cart box_1">
								<a href="cart.action">
									<h3> <div class="total">
										<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
										<img src="images/bag.png" alt="" />
									</h3>
								</a>
								<%-- <s:form action="cart.action" method="post"> --%>
								<s:if test="%{#session.products == 0}">
								<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
								</s:if>
								<s:else>
								<p><a href="javascript:;" class="simpleCart_empty"><s:property value="#session.noOfProducts"/> products</a></p>
								
								</s:else>
								<%-- </s:form> --%>
								<div class="clearfix"> </div>
							</div>	
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
		<!--header-->