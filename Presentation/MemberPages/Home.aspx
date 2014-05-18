<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Presentation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>NETWORKS</h1>
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="NetworkId" DataSourceID="ObjectDataSource1" Height="50px" Width="125px" AllowPaging="True">
            <Fields>
                <asp:BoundField DataField="NetworkId" HeaderText="NetworkId" ReadOnly="True" SortExpression="NetworkId" />
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:BoundField DataField="Href" HeaderText="Href" SortExpression="Href" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
            </Fields>
        </asp:DetailsView>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NetworkId" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="NetworkId" HeaderText="NetworkId" ReadOnly="True" SortExpression="NetworkId" />
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:BoundField DataField="Href" HeaderText="Href" SortExpression="Href" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="deleteNetwork" InsertMethod="insertNetwork" OldValuesParameterFormatString="original_{0}" SelectMethod="getNetworks" TypeName="Business.Class1" UpdateMethod="updateNetwork">
            <DeleteParameters>
                <asp:Parameter Name="Original_NetworkId" Type="Int64" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NetworkId" Type="Int64" />
                <asp:Parameter Name="Company" Type="String" />
                <asp:Parameter Name="Href" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Longitude" Type="Double" />
                <asp:Parameter Name="Latitude" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Company" Type="String" />
                <asp:Parameter Name="Href" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Longitude" Type="Double" />
                <asp:Parameter Name="Latitude" Type="Double" />
                <asp:Parameter Name="Original_NetworkId" Type="Int64" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MemberPages/Profile.aspx">My Profile</asp:HyperLink>
    </form>
</body>
</html>
