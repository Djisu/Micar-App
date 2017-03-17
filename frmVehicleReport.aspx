<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmVehicleReport.aspx.cs" Inherits="MiCar.frmVehicleReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


        .auto-style1 {
            position: absolute;
            top: 106px;
            left: 10px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 104px;
            left: 169px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 103px;
            left: 376px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 123px;
            left: 575px;
            z-index: 1;
            width: 97px;
        }
        .auto-style18 {
            position: absolute;
            top: 178px;
            left: 576px;
            z-index: 1;
            width: 95px;
        }
        .auto-style24 {
            position: absolute;
            top: 162px;
            left: 29px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label8" runat="server" CssClass="auto-style1" Text="Vehicle Registration No:"></asp:Label>
    <asp:DropDownList ID="cboRegNo1" runat="server" AutoPostBack="True" CssClass="auto-style15" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" Width="142px">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style17">Produce Report</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style18">Exit</asp:LinkButton>
    <asp:DropDownList ID="cboRegNo2" runat="server" AutoPostBack="True" CssClass="auto-style16" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" Width="142px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
