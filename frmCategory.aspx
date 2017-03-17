<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCategory.aspx.cs" Inherits="MiCar.frmCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        position: absolute;
        top: 196px;
        left: 7px;
        z-index: 1;
    }
    .auto-style2 {
        position: absolute;
        top: 193px;
        left: 383px;
        z-index: 1;
        right: 246px;
    }
    .auto-style3 {
        position: absolute;
        top: 198px;
        left: 291px;
        z-index: 1;
    }
    .auto-style4 {
        position: absolute;
        top: 196px;
        left: 87px;
        z-index: 1;
        right: 603px;
    }
    .auto-style5 {
        position: absolute;
        top: 223px;
        left: 689px;
        z-index: 1;
        width: 76px;
    }
    .auto-style6 {
        position: absolute;
        top: 178px;
        left: 689px;
        z-index: 1;
        width: 76px;
    }
    .auto-style7 {
        position: absolute;
        top: 176px;
        left: 563px;
        z-index: 1;
        width: 76px;
    }
    .auto-style8 {
        position: absolute;
        top: 223px;
        left: 565px;
        z-index: 1;
        width: 76px;
    }
    .auto-style9 {
        left: 73px;
        top: 273px;
        width: 607px;
    }
        .auto-style10 {
            position: absolute;
            top: 244px;
            left: 78px;
            z-index: 1;
            width: 433px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style9" DataSourceID="SqlDataSource1" GridLines="Horizontal">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="categoryID" HeaderText="categoryID" SortExpression="categoryID" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_category]"></asp:SqlDataSource>
<asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Category name:"></asp:Label>
<asp:TextBox ID="txtCategoryid" runat="server" CssClass="auto-style4" OnTextChanged="txtCategoryid_TextChanged"></asp:TextBox>
<asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text="Category Id:"></asp:Label>
<asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style6">Edit</asp:LinkButton>
<asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style7">Delete</asp:LinkButton>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style10" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <asp:Label ID="txtUserLabel" runat="server" Visible="False"></asp:Label>
<br />
<asp:TextBox ID="txtname" runat="server" CssClass="auto-style2" OnTextChanged="txtCategoryid_TextChanged"></asp:TextBox>
<asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style8">Add</asp:LinkButton>
<asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style5">Exit</asp:LinkButton>
<br />
<br />
<br />
</asp:Content>
