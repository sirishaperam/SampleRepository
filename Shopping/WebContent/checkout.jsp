<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!--banner-->
<div class="banner1">
	<div class="container">
		<h3>
			<a href="index.jsp">Home</a> / <span>Checkout</span>
		</h3>
	</div>
</div>
<!--banner-->

<!--content-->

<div class="content">
	<div class="cart-items">
		<div class="container">
			<h2>My Shopping Bag (<s:property value="#session.noOfProducts"/>)</h2>
			
			<script>
				$(document).ready(function(c) {
					$('.close1').on('click', function(c) {
						$('.cart-header').fadeOut('slow', function(c) {
							$('.cart-header').remove();
						});
					});
				});
			</script>
			
			<div class="cart-header">
				<div class="close1"></div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						<!-- <img src="images/p15.jpg" class="img-responsive" alt=""> --> 
						<s:iterator value="l">
						<s:property value="p_id.p_img_id.image_path1"/>
						</s:iterator>
					</div>
					<div class="cart-item-info">
						<h3>
							<a href="#">product name</a>
						</h3>
						<div class="delivery">
							<ul class="qty">
								<li><p>
										Price: <b>Rs 100</b>
									</p></li>
								<li><p>
										<input type="number" min="1" max="10">
									</p></li>
								<li><p>
										Total Price: <b>Rs 60</b>
									</p></li>
							</ul>
							<p>Service Charges : $10.00</p>
							<span>Delivered in 1-1:30 hours</span>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
			
			<script>
				$(document).ready(function(c) {
					$('.close2').on('click', function(c) {
						$('.cart-header2').fadeOut('slow', function(c) {
							$('.cart-header2').remove();
						});
					});
				});
			</script>
			<%-- <s:iterator value="l"> --%>
			<div class="cart-header2">
				<div class="close2"></div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						<img src="images/s1.jpg" class="img-responsive" alt="">
					</div>
					<div class="cart-item-info">
						<h3>
							<a href="#">product name</a>
						</h3>
						<div class="delivery">
							<ul class="qty">
								<li><p>
										Price: <b>Rs 250</b>
									</p></li>
								<li><p>
										<input type="number" min="1" max="10">
									</p></li>
								<li><p>
										Total Price: <b>Rs 500</b>
									</p></li>
							</ul>
							<p>Service Charges : $10.00</p>
							<span>Delivered in 1-1:30 hours</span>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>

				</div>
			</div>
			<%-- </s:iterator> --%>
			<script>
				$(document).ready(function(c) {
					$('.close3').on('click', function(c) {
						$('.cart-header3').fadeOut('slow', function(c) {
							$('.cart-header3').remove();
						});
					});
				});
			</script>
			<s:iterator value="l">
			<div class="cart-header3">
				<div class="close3"></div>
				<div class="cart-sec simpleCart_shelfItem">
					<div class="cart-item cyc">
						<img src="images/i7.jpg" class="img-responsive" alt="">
					</div>
					<div class="cart-item-info">
						<h3>
							<a href="#">product name</a>
						</h3>
						<div class="delivery">
							<ul class="qty">
								<li><p>
										Price: <b>Rs 60</b>
									</p></li>
								<li><p>
										<input type="number" min="1" max="10" maxlength="2">
									</p></li>
								<li><p>
										Total Price: <b>Rs 60</b>
									</p></li>
							</ul>
							<p>Service Charges : $10.00</p>
							<span>Delivered in 1-1:30 hours</span>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			</s:iterator>
		</div>
	</div>
	
	<!-- checkout -->
</div>
 
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>