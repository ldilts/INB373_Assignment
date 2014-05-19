<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Presentation.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Login</h1>
        <p>
            <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Default.aspx">
            </asp:Login>
        </p>
        <p>
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
