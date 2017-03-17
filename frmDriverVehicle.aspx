<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDriverVehicle.aspx.cs" Inherits="MiCar.frmDriverVehicle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 111px;
            left: 9px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 113px;
            left: 221px;<a href="frmDriverVehicle.aspx">frmDriverVehicle.aspx</a>
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 182px;
            left: 221px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 183px;
            left: 14px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 131px;
            left: 13px;
            z-index: 1;
            width: 126px;
        }
        .auto-style7 {
            position: absolute;
            top: 131px;
            left: 219px;
            z-index: 1;
            width: 126px;
        }
        .auto-style8 {
            position: absolute;
            top: 204px;
            left: 20px;
            z-index: 1;
            width: 126px;
        }
        .auto-style9 {
            position: absolute;
            top: 206px;
            left: 217px;
            z-index: 1;
            width: 126px;
        }
        .auto-style10 {
            position: absolute;
            top: 198px;
            left: 448px;
            z-index: 1;
            width: 84px;
        }
        .auto-style11 {
            position: absolute;
            top: 118px;
            left: 449px;
            z-index: 1;
            height: 19px;
            width: 84px;
        }
        .auto-style24 {
            position: absolute;
            top: 231px;
            left: 15px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
        .auto-style25 {
            position: absolute;
            top: 201px;
            left: 609px;
            z-index: 1;
            height: 11px;
        }
        .auto-style26 {
            position: absolute;
            top: 122px;
            left: 599px;
            z-index: 1;
            height: 19px;
            width: 84px;
        }
        .auto-style27 {
            position: absolute;
            top: 195px;
            left: 597px;
            z-index: 1;
            height: 19px;
            width: 84px;
        }
        .auto-style28 {
            left: 41px;
            top: 245px;
            width: 809px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Driver's Name:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Start Date"></asp:Label>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Text="End Date"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style1" Text="Vehicle Registration No:"></asp:Label>
    <asp:DropDownList ID="cboRegNo" runat="server" AutoPostBack="True" CssClass="auto-style6" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboDriverNo" runat="server" AutoPostBack="True" CssClass="auto-style7" DataSourceID="SqlDataSource2" DataTextField="driverno" DataValueField="driverno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [driverno], [fname], [lname] FROM [tb_driver]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboStartDate" runat="server" AutoPostBack="True" CssClass="auto-style8" DataSourceID="SqlDataSource3" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut] ORDER BY [date]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboEndDate" runat="server" AutoPostBack="True" CssClass="auto-style9" DataSourceID="SqlDataSource3" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style11" OnClick="cmdReport_Click1">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdExir" runat="server" BorderStyle="Outset" CssClass="auto-style10">Exit</asp:LinkButton>
    <asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style25"></asp:Label>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style26" OnClick="cmdReport_Click1">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style27" OnClick="cmdReport_Click1">Delete</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style28" DataSourceID="SqlDataSource4" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="driverno" HeaderText="driverno" SortExpression="driverno" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="start_date" HeaderText="start_date" SortExpression="start_date" />
            <asp:BoundField DataField="end_date" HeaderText="end_date" SortExpression="end_date" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_driver_vehicle]"></asp:SqlDataSource>
</asp:Content>
