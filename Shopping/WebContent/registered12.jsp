
<jsp:include page="header.jsp"></jsp:include>

		<!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="index.jsp">Home</a> / <span>Registered</span></h3>
				<script src="js/validation.js"></script>
				
			</div>
		</div>
		
	<!--banner-->

	<!--content-->
		<div class="content">
				<!--login-->
			<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">
					<h3>Register</h3>
					<form action="reg" method="post" name="form1">
					<div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Username" name="Username" id="name" onfocus="this.value = '';  required="" onkeyup="namevalid(document.form1.name);">
							<span id="message1"></span>
						
							<div class="clearfix"></div>
						</div>
						
					<!-- <div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Username" name="Username" id="username" onfocus="this.value = ''; required="" onkeyup="fname(document.form1.username);">
                            <span id="message1"></span>
							<div class="clearfix"></div>
						</div>
					 -->	<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
														
							<input  type="text" value="Email" name="Email" id="email" onfocus="this.value = ''; required="" onkeyup="emailvalid(document.form1.email);">
							<span id="message2"></span>
							<div class="clearfix"></div>
						</div>
					<div class="key">
							<i class="fa fa-phone" aria-hidden="true"></i>
							<input  type="text" value="Mobile" name="Mobile" id="phone" onfocus="this.value = ''; required="" onkeyup="mobilevalid(document.form1.phone);">
							<span id="message3"></span>
							<div class="clearfix"></div> 
						</div>
					<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input type="password" value="Password" placeholder="password" name="password" id="password" onfocus="this.value = '';" onkeyup="return passd();" >
							
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Confirm Password" placeholder="confirm password"  name="Confirm_Password" id="retypepassword" onfocus="this.value = '';" onkeyup="return passd();">
							<span id="message4"></span>
							<div class="clearfix"></div>
						</div>
					
		
					<input type="submit" value="Submit"
					onclick="return formsubmit();"/>
					<span id="message5"></span>
					</form>
					</div>
						<!-- <div class="key">
							<i class="fa fa-user" aria-hidden="true"></i>
							<input  type="text" value="Username" name="Username" id="name" onfocus="this.value = '';  required="" onkeyup="namevalid(document.form1.name);">
							<span id="message1"></span>
						
							<div class="clearfix"></div>
						</div>
						
						<div class="key">
							<i class="fa fa-envelope" aria-hidden="true"></i>
														
							<input  type="text" value="Email" name="Email" id="email" onfocus="this.value = ''; required="" onkeyup="emailvalid(document.form1.email);">
							<span id="message2"></span>
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-phone" aria-hidden="true"></i>
							<input  type="text" value="Mobile" name="Mobile" id="phone" onfocus="this.value = ''; required="" onkeyup="mobilevalid(document.form1.phone);">
							<span id="message3"></span>
							<div class="clearfix"></div> -->
						</div>
						<!-- <div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input type="password" value="Password" placeholder="password" name="password" id="password" onfocus="this.value = '';" onkeyup="passdvalid();" required="">
							
							<div class="clearfix"></div>
						</div>
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Confirm Password" placeholder="confirm password"  name="Confirm_Password" id="password" onfocus="this.value = '';" onkeyup="passdvalid();" required="">
							<span id="message4"></span>
							<div class="clearfix"></div>
						</div>
 -->						
						
					<!-- </form>
		 -->		</div>
				
			</div>
		</div>
				<!--login-->
		</div>
		<!--content-->
		
		<jsp:include page="footer.jsp"></jsp:include>
				

</body>
</html>