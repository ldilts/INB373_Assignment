<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Presentation.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Home</h1>
        <p>
            <asp:LoginView ID="LoginView1" runat="server">
                <AnonymousTemplate>
                    You are not logged in.
                </AnonymousTemplate>
                <LoggedInTemplate>
                    Welcome,
                    <asp:LoginName ID="LoginName1" runat="server" />
                    .
                </LoggedInTemplate>
            </asp:LoginView>
        </p>
        <p>
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </p>
    
    </div>
    </form>
</body>
</html>
