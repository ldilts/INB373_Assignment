﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Presentation.MemberPages.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Bikeway</title>
		<meta name="description" content="BikeWay />
		<meta name="author" content="Aline & Lucas" />
		<link rel="shortcut icon" href="../favicon.ico"> 
		<link rel="stylesheet" type="text/css" href="../stylesheets/default.css" />
		<link rel="stylesheet" type="text/css" href="../stylesheets/component.css" />
		<script src="javascript/modernizr.custom.js"></script>
</head>
<body>

    <div class="container-profile container">
    <!-- Top Navigation -->
	<div class="codrops-top clearfix" >
		<div class="codrops-top clearfix">
            <asp:LoginView>
                <AnonymousTemplate>
                    <span class="right"><button class="md-trigger" data-modal="modal-16">Sign in</button></span>
                </AnonymousTemplate>
            </asp:LoginView>                				
	</div>
	</div>
	<header>
		<h1> BIKEWAY </h1>
	</header>
        <div class="main clearfix">
            <div class="column" >

            </div>
            <div class="column" >
                <asp:ListView runat="server" ID="StationsListView" 
                    DataSourceID="ObjectDataSource1" class="station-list">
                    <LayoutTemplate>
                    <table cellpadding="2" runat="server" id="stations" 
                        >
                        <tr runat="server" id="itemPlaceholder">
                        </tr>
                    </table>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <tr id="Tr1" runat="server" class="station-list-container" >
                        <td colspan="2" align="center" 
                            class="StationName">
                            <asp:Label  ID="FirstNameLabel" runat="server" 
                            Text='<%#Eval("Name") %>' class="station-name"/> 
                        
                        <br />
                       
                           <asp:Label ID="Label2" runat="server" Text="Bikes:" CssClass="station-list-label" />
                            <asp:Label  ID="Label5" runat="server" 
                            Text='<%#Eval("FreeBikes") %>' class="station-name"/>
                       
                       
                           <asp:Label ID="Label3" runat="server" Text="Slots:" CssClass="station-list-label" />
                            <asp:Label  ID="Label4" runat="server" 
                            Text='<%#Eval("Slots") %>' class="station-name"/>
                       </td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" OnSelecting="ObjectDataSource1_Selecting" SelectMethod="getSingleUserFavouriteStations" TypeName="Business.DataObjectMethods">
                    <SelectParameters>
                        <asp:Parameter DbType="Guid" Name="UserId" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
            
            </div>
        </div>
    <form id="form1" runat="server">
        <asp:LoginView ID="LoginView1" runat="server" >
            <LoggedInTemplate>
                Welcome,
                <asp:LoginName ID="LoginName1" runat="server" />
                .<br />
                <asp:LoginStatus ID="LoginStatus2" runat="server" />
                <br />
            </LoggedInTemplate>
        </asp:LoginView>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        </form>
        <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                <asp:BoundField DataField="FreeBikes" HeaderText="FreeBikes" SortExpression="FreeBikes" />
                <asp:BoundField DataField="Slots" HeaderText="Slots" SortExpression="Slots" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            </Columns>
        </asp:GridView>--%>

        

    <script src="javascript/cssParser.js"></script>
	<script src="javascript/css-filters-polyfill.js"></script>
</body>
</html>
