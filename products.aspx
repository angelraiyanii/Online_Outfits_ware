<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="demo3.products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        <link href="themes/css/bootstrappage.css" rel="stylesheet" />

        <!-- global styles -->
        <link href="themes/css/flexslider.css" rel="stylesheet" />
        <link href="themes/css/main.css" rel="stylesheet" />

        <!-- scripts -->
        <script src="themes/js/jquery-1.7.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="themes/js/superfish.js"></script>
        <script src="themes/js/jquery.scrolltotop.js"></script>
        <!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
        <style>
            .h {
                text-align: center;
                color: white;
                font-family: 'Times New Roman';
                font-size: 25px;
                margin: 10px;
                background-color: darkred;
            }

            .mg {
                margin: 20px;
                margin-top: 30px;
                width: 355px;
                height: 50%;
                border-color: black;
                border-style: solid;
            }

            .b1 {
                color: darkblue;
                font-size: 20px;
                font-family: 'Times New Roman';
                border: 5px solid darkred;
                width: 150px;
                margin-left:-150px;
                margin-right:10px;
                margin-top:10px;
                margin-bottom:10px;
            }
             .b2 {
                color: darkblue;
                font-size: 20px;
                font-family: 'Times New Roman';
                border: 5px solid darkred;
                width: 150px;
                margin-left:10px;
                margin-right:-160px;
                margin-top:-39px;
                margin-bottom:10px;
            }
        </style>
    </head>
    <body>
        <div id="top-bar" class="container">
            <div class="row">
                <div class="span4">
                    <form method="POST" class="search_form">
                        <input type="text" class="input-block-level search-query" placeholder="eg. T-sirt">
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
                    <a href="index.html" class="logo pull-left">
                        <img src="themes/images/logo.png" class="site_logo" alt=""></a>
                    <nav id="menu" class="pull-right">
                        <ul>
                            <li><a href="./products.html">Woman</a>
                                <ul>
                                    <li><a href="./products.html">Lacinia nibh</a></li>
                                    <li><a href="./products.html">Eget molestie</a></li>
                                    <li><a href="./products.html">Varius purus</a></li>
                                </ul>
                            </li>
                            <li><a href="./products.html">Man</a></li>
                            <li><a href="./products.html">Sport</a>
                                <ul>
                                    <li><a href="./products.html">Gifts and Tech</a></li>
                                    <li><a href="./products.html">Ties and Hats</a></li>
                                    <li><a href="./products.html">Cold Weather</a></li>
                                </ul>
                            </li>
                            <li><a href="./products.html">Hangbag</a></li>
                            <li><a href="./products.html">Best Seller</a></li>
                            <li><a href="./products.html">Top Seller</a></li>
                        </ul>
                    </nav>
                </div>
            </section>
            <section class="header_text sub">
                <img class="pageBanner" src="themes/images/pageBanner.png" alt="New products">
                <h4><span>New products</span></h4>
            </section>
            <section class="main-content">

                <div class="row">
                    <div class="span9">
                        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                            <ItemTemplate>
                                <center>
                                    <div class="mg">
                                        <asp:Image ID="Image1" Height="400px" Width="400px" runat="server" ImageUrl='<%# Eval("P_Image") %>' />
                                        <br />
                                        <div class="h">
                                            &nbsp;
                               
                                            <div style="font-size: 30px;">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("P_Name") %>' Font-Bold="True"></asp:Label>
                                            </div>

                                            <br />
                                            $
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("P_Price") %>' Font-Bold="True"></asp:Label>
                                            <br />
                                            <br />
                                            Size:
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("P_Size") %>' Font-Bold="True"></asp:Label>
                                            <br />

                                            <br />
                                            <br />
                                        </div>
                                        <div class="b1">
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">More Details</asp:LinkButton>

                                        </div>
                                        <div class="b2">
                                            <asp:LinkButton ID="LinkButton2" runat="server">Cart</asp:LinkButton>
                                        </div>


                                    </div>
                                </center>
                            </ItemTemplate>
                        </asp:DataList>
                        <!--<ul class="thumbnails listing-products">
							<li class="span3">
								<div class="product-box">
									<span class="sale_tag"></span>												
									<a href="product_detail.html"><img alt="" src="themes/images/ladies/9.jpg"></a><br/>
									<a href="product_detail.html" class="title">Fusce id molestie massa</a><br/>
									<a href="#" class="category">Phasellus consequat</a>
									<p class="price">$341</p>
								</div>
							</li>       
							<li class="span3">
								<div class="product-box">												
									<a href="product_detail.html"><img alt="" src="themes/images/ladies/8.jpg"></a><br/>
									<a href="product_detail.html" class="title">Praesent tempor sem</a><br/>
									<a href="#" class="category">Erat gravida</a>
									<p class="price">$28</p>
								</div>
							</li>
							<li class="span3">
								<div class="product-box">
									<span class="sale_tag"></span>												
									<a href="product_detail.html"><img alt="" src="themes/images/ladies/7.jpg"></a><br/>
									<a href="product_detail.html" class="title">Wuam ultrices rutrum</a><br/>
									<a href="#" class="category">Suspendisse aliquet</a>
									<p class="price">$341</p>
								</div>
							</li>
							<li class="span3">
								<div class="product-box">												
									<span class="sale_tag"></span>
									<a href="product_detail.html"><img alt="" src="themes/images/ladies/6.jpg"></a><br/>
									<a href="product_detail.html" class="title">Praesent tempor sem sodales</a><br/>
									<a href="#" class="category">Nam imperdiet</a>
									<p class="price">$49</p>
								</div>
							</li>
							<li class="span3">
								<div class="product-box">                                        												
									<a href="product_detail.html"><img alt="" src="themes/images/ladies/1.jpg"></a><br/>
									<a href="product_detail.html" class="title">Fusce id molestie massa</a><br/>
									<a href="#" class="category">Congue diam congue</a>
									<p class="price">$35</p>
								</div>
							</li>       
							<li class="span3">
								<div class="product-box">												
									<a href="product_detail.html"><img alt="" src="themes/images/ladies/2.jpg"></a><br/>
									<a href="product_detail.html" class="title">Tempor sem sodales</a><br/>
									<a href="#" class="category">Gravida placerat</a>
									<p class="price">$61</p>
								</div>
							</li>
							<li class="span3">
								<div class="product-box">												
									<a href="product_detail.html"><img alt="" src="themes/images/ladies/3.jpg"></a><br/>
									<a href="product_detail.html" class="title">Quam ultrices rutrum</a><br/>
									<a href="#" class="category">Orci et nisl iaculis</a>
									<p class="price">$233</p>
								</div>
							</li>
							<li class="span3">
								<div class="product-box">												
									<a href="product_detail.html"><img alt="" src="themes/images/ladies/4.jpg"></a><br/>
									<a href="product_detail.html" class="title">Tempor sem sodales</a><br/>
									<a href="#" class="category">Urna nec lectus mollis</a>
									<p class="price">$134</p>
								</div>
							</li>
							<li class="span3">
								<div class="product-box">												
									<a href="product_detail.html"><img alt="" src="themes/images/ladies/5.jpg"></a><br/>
									<a href="product_detail.html" class="title">Luctus quam ultrices</a><br/>
									<a href="#" class="category">Suspendisse aliquet</a>
									<p class="price">$261</p>
								</div>
							</li>
						</ul>-->
                        <hr>
                        <div class="pagination pagination-small pagination-centered">
                            <ul >
                                <li >
                                    <!--<a href="#">Prev</a>-->
                                    <asp:Button ID="pre" runat="server" Text="Pre" OnClick="pre_Click1" BackColor="Maroon" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#FFFFCC" Width="70px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </li>
                                <li class="active">
                                    <!--<a href="#">Prev</a>-->
                                    <asp:Button ID="next" runat="server" Text="Next" OnClick="next_Click1" BackColor="Maroon" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#FFFFCC" Width="70px" />
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="span3 col">
                        <div class="block">
                            <ul class="nav nav-list">
                                <li class="nav-header">SUB CATEGORIES</li>
                                <li><a href="products.html">Nullam semper elementum</a></li>
                                <li class="active"><a href="products.html">Phasellus ultricies</a></li>
                                <li><a href="products.html">Donec laoreet dui</a></li>
                                <li><a href="products.html">Nullam semper elementum</a></li>
                                <li><a href="products.html">Phasellus ultricies</a></li>
                                <li><a href="products.html">Donec laoreet dui</a></li>
                            </ul>
                            <br />
                            <ul class="nav nav-list below">
                                <li class="nav-header">MANUFACTURES</li>
                                <li><a href="products.html">Adidas</a></li>
                                <li><a href="products.html">Nike</a></li>
                                <li><a href="products.html">Dunlop</a></li>
                                <li><a href="products.html">Yamaha</a></li>
                            </ul>
                        </div>
                        <div class="block">
                            <h4 class="title">
                                <span class="pull-left"><span class="text">Randomize</span></span>
                                <span class="pull-right">
                                    <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                                </span>
                            </h4>
                            <div id="myCarousel" class="carousel slide">
                                <div class="carousel-inner">
                                    <div class="active item">
                                        <ul class="thumbnails listing-products">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <span class="sale_tag"></span>
                                                    <img alt="" src="themes/images/ladies/1.jpg"><br />
                                                    <a href="product_detail.html" class="title">Fusce id molestie massa</a><br />
                                                    <a href="#" class="category">Suspendisse aliquet</a>
                                                    <p class="price">$261</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="item">
                                        <ul class="thumbnails listing-products">
                                            <li class="span3">
                                                <div class="product-box">
                                                    <img alt="" src="themes/images/ladies/2.jpg"><br />
                                                    <a href="product_detail.html" class="title">Tempor sem sodales</a><br />
                                                    <a href="#" class="category">Urna nec lectus mollis</a>
                                                    <p class="price">$134</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="block">
                            <h4 class="title"><strong>Best</strong> Seller</h4>
                            <ul class="small-product">
                                <li>
                                    <a href="#" title="Praesent tempor sem sodales">
                                        <img src="themes/images/ladies/3.jpg" alt="Praesent tempor sem sodales">
                                    </a>
                                    <a href="#">Praesent tempor sem</a>
                                </li>
                                <li>
                                    <a href="#" title="Luctus quam ultrices rutrum">
                                        <img src="themes/images/ladies/4.jpg" alt="Luctus quam ultrices rutrum">
                                    </a>
                                    <a href="#">Luctus quam ultrices rutrum</a>
                                </li>
                                <li>
                                    <a href="#" title="Fusce id molestie massa">
                                        <img src="themes/images/ladies/5.jpg" alt="Fusce id molestie massa">
                                    </a>
                                    <a href="#">Fusce id molestie massa</a>
                                </li>
                            </ul>
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
                        <p class="logo">
                            <img src="themes/images/logo.png" class="site_logo" alt="">
                        </p>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
                        <br />
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
