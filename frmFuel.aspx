<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmFuel.aspx.cs" Inherits="MiCar.frmFault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 112px;
            left: 10px;
        }
        .auto-style3 {
            position: absolute;
            top: 162px;
            left: 12px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 161px;
            left: 215px;
            z-index: 1;
            right: 710px;
        }
        .auto-style5 {
            position: absolute;
            top: 206px;
            left: 12px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 128px;
            left: 8px;
            z-index: 1;
            height: 9px;
        }
        .auto-style9 {
            position: absolute;
            top: 181px;
            left: 215px;
            z-index: 1;
            right: 579px;
            height: 12px;
        }
        .auto-style10 {
            position: absolute;
            top: 227px;
            left: 12px;
            z-index: 1;
            right: 825px;
        }
        .auto-style11 {
            position: absolute;
            top: 240px;
            left: 355px;
            z-index: 1;
            width: 76px;
        }
        .auto-style12 {
            position: absolute;
            top: 123px;
            left: 358px;
            z-index: 1;
            width: 76px;
        }
        .auto-style13 {
            position: absolute;
            top: 200px;
            left: 356px;
            z-index: 1;
            width: 76px;
        }
        .auto-style14 {
            position: absolute;
            top: 160px;
            left: 356px;
            z-index: 1;
            width: 76px;
        }
        .auto-style15 {
            position: absolute;
            top: 177px;
            left: 13px;
            z-index: 1;
            right: 880px;
        }
        .auto-style16 {
            position: absolute;
            top: 232px;
            left: 149px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 257px;
            left: 19px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
        .auto-style25 {
            left: 19px;
            top: 275px;
            height: 68px;
            position: absolute;
            z-index: 1;
            width: 774px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:DropDownList ID="cboFuel1" runat="server" AutoPostBack="True" CssClass="auto-style6" DataSourceID="SqlDataSource1" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="End Date:"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Code:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style3" Text="Start Date:"></asp:Label>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Unit Price:"></asp:Label>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style14">Edit</asp:LinkButton>
    <asp:DropDownList ID="cboStartDate" runat="server" CssClass="auto-style15" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style13">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style11">Exit</asp:LinkButton>
    <asp:TextBox ID="txtCost" runat="server" CssClass="auto-style10"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCost" CssClass="auto-style16" ErrorMessage="Unit price must be numeric" ForeColor="#FF0066" SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style12">Add</asp:LinkButton>
    <asp:DropDownList ID="cboEndDate" runat="server" CssClass="auto-style9" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date" AutoPostBack="True">
    </asp:DropDownList>
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style25" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
            <asp:BoundField DataField="unit_cost" HeaderText="unit_cost" SortExpression="unit_cost" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_fuel]"></asp:SqlDataSource>
</asp:Content>
