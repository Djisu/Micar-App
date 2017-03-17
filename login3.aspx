<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login3.aspx.cs" Inherits="MiCar.login3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .auto-style1 {
            position: absolute;
            top: 190px;
            left: 10px;
            z-index: 1;
            width: 79px;
            right: 917px;
        }
        .auto-style2 {
            position: absolute;
            top: 251px;
            left: 37px;
            z-index: 1;
            width: 102px;
        }
        .auto-style3 {
            position: absolute;
            top: 298px;
            left: 36px;
            z-index: 1;
            width: 102px;
        }
        .auto-style4 {
            position: absolute;
            top: 244px;
            left: 111px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 242px;
            left: 270px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 291px;
            left: 110px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 293px;
            left: 273px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 335px;
            left: 266px;
            z-index: 1;
            width: 387px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style3" Text="Password:"></asp:Label>
        <br />
    <asp:Label ID="Label3" runat="server" CssClass="auto-style1" Text="User name:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style1" Text="User name:"></asp:Label>
        <asp:TextBox ID="txtUserName" runat="server" CssClass="auto-style4"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtUserName" CssClass="auto-style9" ErrorMessage="User name must be alphabets" ForeColor="#FF0066" ValidationExpression="\w{1,}"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style2" Text="User name:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style10" TextMode="Password"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPassword" CssClass="auto-style8" ErrorMessage="Invalid password" ForeColor="#FF0066" ValidationExpression="^(?&lt;pwd&gt;(?=\w{6,30}$)(?=.*?\d)(?!abc123|123456|password\d).*)"></asp:RegularExpressionValidator>
    <asp:LinkButton ID="cmdLogin" runat="server" BorderStyle="Outset" CssClass="auto-style5" OnClick="cmdLogin_Click" style="z-index: 1; position: absolute; top: 333px; left: 135px; width: 75px">Login</asp:LinkButton>
    </p>
    <p>
        <asp:Label ID="lblStatus" runat="server" CssClass="auto-style11" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
    </p>
    <p>
    </p>
</asp:Content>
