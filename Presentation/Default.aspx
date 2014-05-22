<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Presentation.Default1" %>--%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head id="Head1" runat="server">
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Bikeway</title>
		<meta name="description" content="BikeWay />
		<meta name="author" content="Aline & Lucas" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="stylesheets/default.css" />
		<link rel="stylesheet" type="text/css" href="stylesheets/component.css" />
		<script src="javascript/modernizr.custom.js"></script>
</head>
	<body>
		<!-- All modals added here for the demo. You would of course just have one, dynamically created -->
		<div class="md-modal md-effect-16" id="modal-16">
			<div class="md-content">
				<h3>Bikeway</h3>
				<div>
                    
					<p>Welcome to bikeway! Please login or press continue</p>
                  <%--  <form id="form1" runat="server">
                           <asp:LoginView ID="LoginView1" runat="server">
                                <AnonymousTemplate>
                                    You&#39;re not logged in!
                                    <br />
                                    
                                </AnonymousTemplate>
                                <LoggedInTemplate>
                                    Welcome,
                                    <asp:LoginName ID="LoginName1" runat="server" />
                                    .<br />
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MemberPages/Profile.aspx">Profile</asp:HyperLink>
                                    <br />
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/MemberPages/Networks.aspx">Networks</asp:HyperLink>
                                    <br />
                                    <asp:LoginStatus ID="LoginStatus1" runat="server" />
                                </LoggedInTemplate>
                            </asp:LoginView>
                        </form>--%>
					<ul>
						
					</ul>
                    
					<button class="md-close">Close me!</button>
				</div>
			</div>
		</div>

		<div class="container">
            <!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<div class="codrops-top clearfix">
                    <asp:LoginView>
                        <AnonymousTemplate>
                            <span class="right"><button class="md-trigger" data-modal="modal-16">Sign in</button></span>
                        </AnonymousTemplate>
                    </asp:LoginView>
                    				
			</div>
			</div>
			<header>
				<h1> BIKEWAY <span>The best source for shared-bikes information</span></h1>
			</header>
			<div class="main-page">

<%--				<div class="column">
					<p>Something here :)</p>
				</div>
				<div class="column">
				<button id="demo" onclick="getLocation()">Demo</button>	
					
				
				</div>--%>
                <form id="form2" runat="server"  >
                <div>
                    <asp:Label runat="server" Text="Type in your city" class="text-large"/>        
                    <br />
                    <div>
                        <asp:TextBox ID="cityInput" runat="server" CssClass="text-box-large" />
                        <asp:ImageButton ID="searchButton" runat="server" ImageUrl="/images/appbar.magnify.png"  CssClass="button search-button"   />
                        <button id="demo" onclick="getLocation()" class="button">Demo</button>	
                       
                        <br />
                        <%--<a href="#set-8" class="hi-icon hi-icon-contract">Contact</a>--%>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
                            <Columns>
                                <asp:BoundField DataField="StationId" HeaderText="StationId" SortExpression="StationId" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                                <asp:BoundField DataField="FreeBikes" HeaderText="FreeBikes" SortExpression="FreeBikes" />
                                <asp:BoundField DataField="Slots" HeaderText="Slots" SortExpression="Slots" />
                                <asp:BoundField DataField="StationTimeStamp" HeaderText="StationTimeStamp" SortExpression="StationTimeStamp" />
                                <asp:BoundField DataField="NetworkId" HeaderText="NetworkId" SortExpression="NetworkId" />
                            </Columns>
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="getStationsFromCity" TypeName="Business.DataObjectMethods">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="cityInput" Name="City" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        
                    </div>
                </div>
                </form>
			</div>

		</div><!-- /container -->
		<div class="md-overlay"></div><!-- the overlay element -->

		<!-- classie.js by @desandro: https://github.com/desandro/classie -->
		<script src="javascript/classie.js"></script>
		<script src="javascript/modalEffects.js"></script>

		<!-- for the blur effect -->
		<!-- by @derSchepp https://github.com/Schepp/CSS-Filters-Polyfill -->
		<script>
		    // this is important for IEs
		    var polyfilter_scriptpath = '/js/';
		</script>
		<script src="javascript/cssParser.js"></script>
		<script src="javascript/css-filters-polyfill.js"></script>

        <script>
            var x = document.getElementById("demo");
            function getLocation() {
                if (navigator.geolocation) {
                    navigator.geolocation.getCurrentPosition(showPosition);
                }
                else { x.innerHTML = "Geolocation is not supported by this browser."; }
            }
            function showPosition(position) {
                x.innerHTML = "Latitude: " + position.coords.latitude +
                "<br>Longitude: " + position.coords.longitude;
            }
</script>
	</body>
</html>