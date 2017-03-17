<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmIncExpReport.aspx.cs" Inherits="MiCar.frmIncExpReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        position: absolute;
        top: 173px;
        left: 10px;
    }
    .auto-style2 {
        position: absolute;
        top: 175px;
        left: 120px;
        z-index: 1;
    }
    .auto-style3 {
        position: absolute;
        top: 174px;
        left: 318px;
        z-index: 1;
    }
    .auto-style4 {
        position: absolute;
        top: 176px;
        left: 559px;
        z-index: 1;
    }
    .auto-style5 {
        position: absolute;
        top: 172px;
        left: 619px;
        z-index: 1;
        width: 139px;
    }
    .auto-style6 {
        position: absolute;
        top: 176px;
        left: 385px;
        z-index: 1;
        width: 139px;
    }
    .auto-style7 {
        position: absolute;
        top: 261px;
        left: 388px;
        z-index: 1;
        width: 83px;
    }
    .auto-style8 {
        position: absolute;
        top: 206px;
        left: 387px;
        z-index: 1;
    }
    .auto-style9 {
        position: absolute;
        top: 226px;
        left: 560px;
        z-index: 1;
    }
        .auto-style24 {
            position: absolute;
            top: 252px;
            left: 27px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Registration No:"></asp:Label>
<asp:DropDownList ID="cboRegNo" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
<asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="End Date:"></asp:Label>
<asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style9" Visible="False"></asp:Label>
<asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Start Date::"></asp:Label>
<asp:DropDownList ID="cboStartDate" runat="server" AutoPostBack="True" CssClass="auto-style6" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut] ORDER BY [date]"></asp:SqlDataSource>
<asp:DropDownList ID="cboEndDate" runat="server" AutoPostBack="True" CssClass="auto-style5" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date">
</asp:DropDownList>
<asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style8">Produce Report</asp:LinkButton>
<asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style7">Exit</asp:LinkButton>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    </asp:Content>
