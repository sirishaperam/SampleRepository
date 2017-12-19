<jsp:include page="header.jsp"></jsp:include>
<%@ taglib prefix="s" uri="/struts-tags"%>

		<!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="index.jsp">Home</a> / <span>Login</span></h3>
			 
				
			</div>
		</div>
	<!--banner-->

	<!--content-->
	
		<div class="content">
				<!--login-->
				
			<div class="login">
			
				<div class="main-agileits">
				<s:actionerror/>
					<div class="form-w3agile">
						<h3>Login To New Shop</h3>
						
						<form action="login" method="post">
							<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
							<input  type="text" value="Email" name="Email" id="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
							<div class="clearfix"></div>
						   </div>
							<div class="key">
								<i class="fa fa-lock" aria-hidden="true"></i>
								<input  type="password" value="Password" name="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
								<div class="clearfix"></div>
							</div>
							<input type="submit" value="Login">
							</form>
							</div>
					<div class="forg">
						<a href="#" class="forg-left">Forgot Password</a>
						<a href="registered.jsp" class="forg-right">Register</a>
					<div class="clearfix"></div>
					</div>
				
				
				
				
				
				</div>
			</div>
				<!--login-->
		</div>
		<!--content-->
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>