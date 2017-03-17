<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmLogRetentionPeriod1.aspx.cs" Inherits="MiCar.frmLogRetentionPeriod1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 172px;
            left: 12px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 171px;
            left: 339px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 165px;
            left: 399px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 164px;
            left: 101px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 211px;
            left: 399px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 204px;
            left: 14px;
            z-index: 1;
            width: 273px;
        }
        .auto-style7 {
            position: absolute;
            top: 200px;
            left: 566px;
            z-index: 1;
            width: 148px;
        }
        .auto-style8 {
            position: absolute;
            top: 157px;
            left: 563px;
            z-index: 1;
            width: 148px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Start Date:"></asp:Label>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style6" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="End Date:"></asp:Label>
    <asp:DropDownList ID="cboStartDate" runat="server" AutoPostBack="True" CssClass="auto-style4" DataSourceID="SqlDataSourceDate" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceDate" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboEndDate" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SqlDataSourceDate" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style5" Visible="False"></asp:Label>
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style8" OnClick="cmdReport_Click">Produce Report</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style7" OnClick="cmdExit_Click">Exit</asp:LinkButton>
</asp:Content>
