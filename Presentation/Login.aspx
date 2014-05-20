<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Presentation.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Nifty Modal Window Effects</title>
		<meta name="description" content="BikeWay />
		<meta name="keywords" content="modal, window, overlay, modern, box, css transition, css animation, effect, 3d, perspective" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="stylesheets/default.css" />
		<link rel="stylesheet" type="text/css" href="stylesheets/component.css" />
		<script src="js/modernizr.custom.js"></script>
</head>
<body>

    <div class="container">
            <!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Development/DynamicGrid/"><span>Previous Demo</span></a>
                <button class="md-trigger" data-modal="modal-16">Sign in</button>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=15313"><span>Back to the Codrops Article</span></a></span>
			</div>
			<header>
				<h1> BIKEWAY <span>The best source for shared-bikes information</span></h1>
			</header>
			<div class="main clearfix">
				<div class="login">
					<div class="login">
				    <form id="form1" runat="server">
                        <div>    
                            <h1>Login</h1>
                            <p>
                                <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx">
                                    <LayoutTemplate>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>

                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>

                                        <button class="md-close"><asp:LinkButton ID="submitLoginBtn" CommandName="Login" runat="server" class="md-close" >Login</asp:LinkButton></button>

                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>

                                        </LayoutTemplate>

                                </asp:Login>
                            </p>
                            <p>
                                &nbsp;</p>    
                        </div>
                    </form>				
				    </div>
				</div>
                <div class="column">
                    <p>Hello</p>		
                 </div>		
			</div>
		</div><!-- /container -->
		<div class="md-overlay"></div><!-- the overlay element -->

		<!-- classie.js by @desandro: https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
		<script src="js/modalEffects.js"></script>

		<!-- for the blur effect -->
		<!-- by @derSchepp https://github.com/Schepp/CSS-Filters-Polyfill -->
		<script>
		    // this is important for IEs
		    var polyfilter_scriptpath = '/js/';
		</script>
		<script src="js/cssParser.js"></script>
		<script src="js/css-filters-polyfill.js"></script>
</body>
</html>
