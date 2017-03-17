<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmTypes1.aspx.cs" Inherits="MiCar.frmTypes1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 173px;
            left: 10px;
        }
        .auto-style2 {
            position: absolute;
            top: 171px;
            left: 111px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 171px;
            left: 385px;
            z-index: 1;
            width: 199px;
        }
        .auto-style5 {
            position: absolute;
            top: 166px;
            left: 622px;
            z-index: 1;
            width: 80px;
        }
        .auto-style6 {
            position: absolute;
            top: 199px;
            left: 622px;
            z-index: 1;
            width: 80px;
        }
        .auto-style7 {
            position: absolute;
            top: 231px;
            left: 623px;
            z-index: 1;
            width: 80px;
        }
        .auto-style8 {
            position: absolute;
            top: 263px;
            left: 623px;
            z-index: 1;
            width: 80px;
        }
        .auto-style9 {
            position: absolute;
            top: 204px;
            left: 26px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 263px;
            left: 20px;
            z-index: 1;
            width: 388px;
        }
        .auto-style11 {
            left: 11px;
            top: 274px;
            width: 512px;
            position: absolute;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Machine type id:"></asp:Label>
    <asp:TextBox ID="txtTypesId" runat="server" CssClass="auto-style2"></asp:TextBox>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style5">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style6">Edit</asp:LinkButton>
    <asp:TextBox ID="txtName" runat="server" CssClass="auto-style4"></asp:TextBox>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style7">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style8">Exit</asp:LinkButton>
    <asp:Label ID="txtUserlabel" runat="server" CssClass="auto-style9" Visible="False"></asp:Label>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style10" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style11" DataKeyNames="typesId" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="typesId" HeaderText="typesId" ReadOnly="True" SortExpression="typesId" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_types]"></asp:SqlDataSource>
</asp:Content>
