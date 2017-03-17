<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDriverReport.aspx.cs" Inherits="MiCar.frmDriverReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 107px;
            left: 260px;
            z-index: 1;
            width: 165px;
        }
        .auto-style3 {
            position: absolute;
            top: 112px;
            left: 459px;
            z-index: 1;
            width: 87px;
        }
        .auto-style4 {
            position: absolute;
            top: 169px;
            left: 458px;
            z-index: 1;
            width: 87px;
        }
        .auto-style5 {
            position: absolute;
            top: 108px;
            left: 83px;
            z-index: 1;
            width: 165px;
        }
        .auto-style24 {
            position: absolute;
            top: 178px;
            left: 9px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
        .auto-style25 {
            position: absolute;
            top: 112px;
            left: 0px;
            z-index: 1;
            width: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <asp:Label ID="txtUserLabel0" runat="server" CssClass="auto-style25">Driver No:</asp:Label>
    <asp:DropDownList ID="cboDriver1" runat="server" AutoPostBack="True" CssClass="auto-style5" DataSourceID="SqlDataSource1" DataTextField="driverno" DataValueField="driverno">
    </asp:DropDownList>
    <asp:DropDownList ID="cboDriver2" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="driverno" DataValueField="driverno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [driverno], [fname], [lname] FROM [tb_driver] ORDER BY [driverno]"></asp:SqlDataSource>
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style3">Produce Report</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style4">Exit</asp:LinkButton>
</asp:Content>
