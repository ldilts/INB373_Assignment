<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Networks.aspx.cs" Inherits="Presentation.Default" %>

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
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            </Fields>
        </asp:DetailsView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="deleteNetwork" InsertMethod="insertNetwork" OldValuesParameterFormatString="original_{0}" SelectMethod="selectNetworks" TypeName="Business.DataObjectMethods" UpdateMethod="updateNetwork">
            <DeleteParameters>
                <asp:Parameter Name="Original_NetworkId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NetworkId" Type="String" />
                <asp:Parameter Name="Company" Type="String" />
                <asp:Parameter Name="Href" Type="String" />
                <asp:Parameter Name="Latitude" Type="Double" />
                <asp:Parameter Name="Longitude" Type="Double" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Company" Type="String" />
                <asp:Parameter Name="Href" Type="String" />
                <asp:Parameter Name="Latitude" Type="Double" />
                <asp:Parameter Name="Longitude" Type="Double" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Original_NetworkId" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="NetworkId" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="NetworkId" HeaderText="NetworkId" ReadOnly="True" SortExpression="NetworkId" />
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:BoundField DataField="Href" HeaderText="Href" SortExpression="Href" />
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" SortExpression="Latitude" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" SortExpression="Longitude" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MemberPages/Profile.aspx">My Profile</asp:HyperLink>
        <br />
        <asp:LoginStatus ID="LoginStatus2" runat="server" />
    </form>
</body>
</html>
