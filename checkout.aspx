﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="demo3.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Bootstrap E-commerce Templates</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form method="POST" class="search_form">
						<input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">				
							<li><a href="#">My Account</a></li>
							<li><a href="cart.html">Your Cart</a></li>
							<li><a href="checkout.html">Checkout</a></li>					
							<li><a href="Registration.aspx">Login</a></li>	
							<li><a href="logout.html">Logout</a></li>	
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.html" class="logo pull-left"><img src="themes/images/logo.png" class="site_logo" alt=""></a>
					<nav id="menu" class="pull-right">
						<ul>
							<li><a href="./products.aspx">Woman</a>					
								<ul>
									<li><a href="./products.aspx">Lacinia nibh</a></li>									
									<li><a href="./products.aspx">Eget molestie</a></li>
									<li><a href="./products.aspx">Varius purus</a></li>									
								</ul>
							</li>															
							<li><a href="./products.aspx">Man</a></li>			
							<li><a href="./products.aspx">Sport</a>
								<ul>									
									<li><a href="./products.aspx">Gifts and Tech</a></li>
									<li><a href="./products.aspx">Ties and Hats</a></li>
									<li><a href="./products.aspx">Cold Weather</a></li>
								</ul>
							</li>							
							<li><a href="./products.aspx">Hangbag</a></li>
							<li><a href="./products.aspx">Best Seller</a></li>
							<li><a href="./products.aspx">Top Seller</a></li>
						</ul>
					</nav>
				</div>
			</section>				
			<section class="header_text sub">
			<img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
				<h4><span>Check Out</span></h4>
			</section>	
			<section class="main-content">
				<div class="row">
					<div class="span12">
						<div class="accordion" id="accordion2">
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">Checkout Options</a>
								</div>
								<div id="collapseOne" class="accordion-body in collapse">
									<div class="accordion-inner">
										<div class="row-fluid">
											<div class="span6">
												<h4>New Customer</h4>
												<p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
												<form action="#" method="post">
													<fieldset>
														<label class="radio" for="register">
															<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                                                                <asp:ListItem>Register Account</asp:ListItem>
                                                                <asp:ListItem>Guest Checkout</asp:ListItem>
                                                        </asp:RadioButtonList>
														<!--	<input type="radio" name="account" value="register" id="register" checked="checked">Register Account-->
														</label>
														<!--<label class="radio" for="guest">
															<input type="radio" name="account" value="guest" id="guest">Guest Checkout
														</label>-->
														<br>
														<button class="btn btn-inverse" data-toggle="collapse" data-parent="#collapse2">Continue</button>
													</fieldset>
												</form>
											 </div>
											 <div class="span6">
												<h4>Returning Customer</h4>
												<p>I am a returning customer</p>
												<form action="#" method="post">
													<fieldset>
														<div class="control-group">
															<label class="control-label">Username</label>
															<div class="controls">
															<!--	<input type="text" placeholder="Enter your username" id="username" class="input-xlarge">-->
																<asp:TextBox ID="uname" runat="server" type="text" placeholder="Enter your username"  class="input-xlarge"></asp:TextBox>
															</div>
														</div>
														<div class="control-group">
															<label class="control-label">Password</label>
															<div class="controls">
															<!--<input type="password" placeholder="Enter your password" id="password" class="input-xlarge"> -->
																<asp:TextBox ID="password" runat="server" type="password" placeholder="Enter your password"  class="input-xlarge"></asp:TextBox>
															</div>
														</div>
														<button class="btn btn-inverse">Continue</button>
													</fieldset>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Account &amp; Billing Details</a>
								</div>
								<div id="collapseTwo" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="row-fluid">
											<div class="span6">
												<h4>Your Personal Details</h4>
												<div class="control-group">
													<label class="control-label">First Name</label>
													<div class="controls">
														<!-- <input type="text" placeholder="" class="input-xlarge"> -->
														<asp:TextBox ID="fname" runat="server" type="text" placeholder="First Name" class="input-xlarge"></asp:TextBox>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Last Name</label>
													<div class="controls">
														<!--<input type="text" placeholder="" class="input-xlarge"> -->
														<asp:TextBox ID="lname" runat="server" type="text" placeholder="Last Name" class="input-xlarge"></asp:TextBox>
													</div>
												</div>					  
												<div class="control-group">
													<label class="control-label">Email Address</label>
													<div class="controls">
														<!-- <input type="text" placeholder="" class="input-xlarge"> -->
														<asp:TextBox ID="email" runat="server" type="text" placeholder="Email Address" class="input-xlarge"></asp:TextBox>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Telephone</label>
													<div class="controls">
													<!--	<input type="text" placeholder="" class="input-xlarge"> -->
														<asp:TextBox ID="phonenumber" type="text" placeholder="Enter mobile number" class="input-xlarge" runat="server"></asp:TextBox>
													</div>
												</div>
												<!--<div class="control-group">
													<label class="control-label">Fax</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge">
													</div>
												</div>-->
											</div>
											<div class="span6">
												<h4>Your Address</h4>
												<div class="control-group">
													<label class="control-label">Company</label>
													<div class="controls">
														<!--<input type="text" placeholder="" class="input-xlarge"> -->
														<asp:TextBox ID="Company" runat="server" type="text" placeholder="Company" class="input-xlarge"></asp:TextBox>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Company ID:</label>
													<div class="controls">
														<!-- <input type="text" placeholder="" class="input-xlarge"> -->
														<asp:TextBox ID="companyid" runat="server"  type="text" placeholder="Company id" class="input-xlarge"></asp:TextBox>
													</div>
												</div>					  
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> Address 1:</label>
													<div class="controls">
													<!--	<input type="text" placeholder="" class="input-xlarge"> -->
														<asp:TextBox ID="add1" runat="server" type="text" placeholder="Address 1" class="input-xlarge"></asp:TextBox>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Address 2:</label>
													<div class="controls">
														<!--<input type="text" placeholder="" class="input-xlarge">-->
														<asp:TextBox ID="add2" type="text" placeholder="Address 2" class="input-xlarge" runat="server"></asp:TextBox>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> City:</label>
													<div class="controls">
													<!--	<input type="text" placeholder="" class="input-xlarge"> -->
														<asp:TextBox ID="city" runat="server" type="text" placeholder="City" class="input-xlarge"></asp:TextBox>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> Post Code:</label>
													<div class="controls">
													<!--	<input type="text" placeholder="" class="input-xlarge"> -->
														<asp:TextBox ID="postcode" runat="server" type="text" placeholder="Post Code" class="input-xlarge"></asp:TextBox>
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> Country:</label>
													<div class="controls">
														<asp:DropDownList ID="DropDownList1" runat="server">
                                                            <asp:ListItem>Afghanistan</asp:ListItem>
                                                            <asp:ListItem>Albania</asp:ListItem>
															<asp:ListItem>Algeria</asp:ListItem>
															<asp:ListItem>American</asp:ListItem>
															<asp:ListItem>Andorra</asp:ListItem>
															<asp:ListItem>Angola</asp:ListItem>
                                                        </asp:DropDownList>
														<!--<select class="input-xlarge">
															<option value="1">Afghanistan</option>
															<option value="2">Albania</option>
															<option value="3">Algeria</option>
															<option value="4">American Samoa</option>
															<option value="5">Andorra</option>
															<option value="6">Angola</option>
														</select> -->
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required">*</span> Region / State:</label>
													<div class="controls">
													<!--	<select name="zone_id" class="input-xlarge">
															<option value=""> --- Please Select --- </option>
															<option value="3513">Aberdeen</option>
															<option value="3514">Aberdeenshire</option>
															<option value="3515">Anglesey</option>
															<option value="3516">Angus</option>
															<option value="3517">Argyll and Bute</option>
														</select>-->
														<asp:DropDownList ID="DropDownList2" runat="server">
                                                            <asp:ListItem>Aberdeen</asp:ListItem>
                                                            <asp:ListItem>Aberdeenshire</asp:ListItem>
                                                            <asp:ListItem>Anglesey</asp:ListItem>
                                                            <asp:ListItem>Argyll</asp:ListItem>
                                                            <asp:ListItem>Angus</asp:ListItem>
                                                        </asp:DropDownList>
												
														</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">Confirm Order</a>
								</div>
								<div id="collapseThree" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="row-fluid">
											<div class="control-group">
												<label for="textarea" class="control-label">Comments</label>
												<div class="controls">
												<!--	<textarea rows="3" id="textarea" class="span12"></textarea> -->
													<asp:TextBox ID="textarea" runat="server" rows="3" class="span12"></asp:TextBox>
												</div>
											</div>									
											<button class="btn btn-inverse pull-right">Confirm order</button>
										</div>
									</div>
								</div>
							</div>
						</div>				
					</div>
				</div>
			</section>			
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="./index.html">Homepage</a></li>  
							<li><a href="./about.html">About Us</a></li>
							<li><a href="./contact.html">Contac Us</a></li>
							<li><a href="./cart.html">Your Cart</a></li>
							<li><a href="./register.html">Login</a></li>							
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
							<li><a href="#">My Account</a></li>
							<li><a href="#">Order History</a></li>
							<li><a href="#">Wish List</a></li>
							<li><a href="#">Newsletter</a></li>
						</ul>
					</div>
					<div class="span5">
						<p class="logo"><img src="themes/images/logo.png" class="site_logo" alt=""></p>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
						<br/>
						<span class="social_icons">
							<a class="facebook" href="#">Facebook</a>
							<a class="twitter" href="#">Twitter</a>
							<a class="skype" href="#">Skype</a>
							<a class="vimeo" href="#">Vimeo</a>
						</span>
					</div>					
				</div>	
			</section>
			<section id="copyright">
				<span>Copyright 2013 bootstrappage template  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
    </body>

</html>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
