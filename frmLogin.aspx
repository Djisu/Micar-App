<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="MiCar.frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 15px;
            left: 10px;
        }
        .auto-style2 {
            position: absolute;
            top: 58px;
            left: 12px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 58px;
            left: 96px;
            z-index: 1;
            width: 168px;
            right: 525px;
        }
        .auto-style4 {
            position: absolute;
            top: 19px;
            left: 99px;
            z-index: 1;
            width: 168px;
            right: 522px;
        }
        .auto-style5 {
            position: absolute;
            top: 24px;
            left: 392px;
            z-index: 1;
            width: 108px;
        }
        .auto-style6 {
            z-index: 1;
            left: 26px;
            top: 113px;
            position: absolute;
            width: 312px;
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" style="z-index: 1" Text="User Name:"></asp:Label>
        <asp:Button ID="cmdLogin" runat="server" CssClass="auto-style5" OnClick="cmdLogin_Click" Text="Login" />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server" CssClass="auto-style4"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style3" TextMode="Password"></asp:TextBox>
    
    </div>
        <p>
            <asp:Label ID="lblStatus" runat="server" ForeColor="#FF0066" CssClass="auto-style6"></asp:Label>
        </p>
    </form>
</body>
</html>
