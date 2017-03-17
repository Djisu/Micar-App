<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmManufacturer.aspx.cs" Inherits="MiCar.frmManufacturer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 112px;
            left: 10px;
        }
        .auto-style2 {
            position: absolute;
            top: 110px;
            left: 273px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 109px;
            left: 399px;
            z-index: 1;
            width: 194px;
        }
        .auto-style4 {
            position: absolute;
            top: 109px;
            left: 114px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 135px;
            left: 400px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 178px;
            left: 362px;
            z-index: 1;
        }
        .auto-style26 {
            left: 29px;
            top: 268px;
            width: 710px;
            height: 229px;
        }
        .auto-style27 {
            position: absolute;
            top: 173px;
            left: 10px;
            z-index: 1;
            width: 321px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtManufacturerId0" CssClass="auto-style5" ErrorMessage="Name must be alphabetic" ForeColor="#FF3399" SetFocusOnError="True"></asp:RegularExpressionValidator>
    <asp:TextBox ID="txtManufacturerName0" runat="server" CssClass="auto-style3"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Manufacturer Name::"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Manufacturer Id:"></asp:Label>
    <asp:TextBox ID="txtManufacturerId1" runat="server" CssClass="auto-style4"></asp:TextBox>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style9" style="z-index: 1; position: absolute; top: 228px; left: 633px; width: 84px">Exit</asp:LinkButton>
    <asp:LinkButton ID="cmdAdd2" runat="server" BorderStyle="Outset" CssClass="auto-style9" style="z-index: 1; position: absolute; top: 110px; left: 633px; width: 84px">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdEdit2" runat="server" BorderStyle="Outset" CssClass="auto-style9" style="z-index: 1; position: absolute; top: 149px; left: 632px; width: 84px">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete2" runat="server" BorderStyle="Outset" CssClass="auto-style9" style="z-index: 1; position: absolute; top: 188px; left: 631px; width: 84px">Delete</asp:LinkButton>
    <asp:Label ID="lblResults1" runat="server" CssClass="auto-style27" Font-Bold="True" ForeColor="#FF0066" Text="Label"></asp:Label>
    <asp:Label ID="txtUser" runat="server" CssClass="auto-style25" Visible="False"></asp:Label>
    <asp:GridView ID="GridView11" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style26" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="mfrID" HeaderText="mfrID" SortExpression="mfrID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_manufacturer]"></asp:SqlDataSource>
</asp:Content>
