<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Presentation.MemberPages.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>PROFILE</h1>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="ObjectDataSource1" Height="50px" Width="125px">
            </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OnSelecting="ObjectDataSource1_Selecting"></asp:ObjectDataSource>
        </p>
    
    </div>
    </form>
</body>
</html>
