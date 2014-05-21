﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Presentation.MemberPages.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>PROFILE</h1>
    
    </div>
        <asp:LoginView ID="LoginView1" runat="server">
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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                <asp:BoundField DataField="FreeBikes" HeaderText="FreeBikes" SortExpression="FreeBikes" />
                <asp:BoundField DataField="Slots" HeaderText="Slots" SortExpression="Slots" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" OnSelecting="ObjectDataSource1_Selecting" SelectMethod="getSingleUserFavouriteStations" TypeName="Business.DataObjectMethods">
            <SelectParameters>
                <asp:Parameter DbType="Guid" Name="UserId" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
