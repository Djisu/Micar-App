<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRole2.aspx.cs" Inherits="MiCar.frmRole2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 164px;
            left: 433px;
            z-index: 1;
            width: 85px;
            height: 18px;
        }
        .auto-style4 {
            position: absolute;
            top: 199px;
            left: 434px;
            z-index: 1;
            width: 85px;
            right: 277px;
            height: 18px;
        }
        .auto-style5 {
            position: absolute;
            top: 164px;
            left: 551px;
            z-index: 1;
            width: 85px;
            right: 160px;
            height: 18px;
        }
        .auto-style6 {
            position: absolute;
            top: 200px;
            left: 551px;
            z-index: 1;
            width: 85px;
            right: 160px;
            height: 18px;
        }
        .auto-style7 {
            position: absolute;
            top: 174px;
            left: 229px;
            z-index: 1;
            width: 146px;
        }
        .auto-style8 {
            position: absolute;
            top: 179px;
            left: 118px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 242px;
            left: 10px;
        }
        .auto-style10 {
            left: 106px;
            top: 231px;
        }
        .auto-style11 {
            position: absolute;
            top: 157px;
            left: 92px;
            z-index: 1;
            width: 289px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style5" OnClick="cmdAdd_Click">Edit</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="MainContent">
    <p>
        <br />
        <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style6" OnClick="cmdAdd_Click">Delete</asp:LinkButton>
        <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style3" OnClick="cmdAdd_Click" PostBackUrl="~/Default.aspx">Exit</asp:LinkButton>
    </p>
    <p>
        <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style4" OnClick="cmdAdd_Click">Add</asp:LinkButton>
        <asp:TextBox ID="txtRole" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Text="Role:"></asp:Label>
        <asp:Label ID="lblResults" runat="server" CssClass="auto-style11" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
    </p>
    <p>
        <asp:Label ID="txtUserlabel" runat="server" CssClass="auto-style9" style="z-index: 1" Text="txtUserlabel" Visible="False"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style10" DataKeyNames="role" DataSourceID="SqlDataSourceRole" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="role" HeaderText="role" ReadOnly="True" SortExpression="role" />
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
        <asp:SqlDataSource ID="SqlDataSourceRole" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_Role]"></asp:SqlDataSource>
    </p>
</asp:Content>

