<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDriverVehicleReport.aspx.cs" Inherits="MiCar.frmDriverVehicleReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 112px;
            left: 10px;
            right: 911px;
        }
        .auto-style2 {
            position: absolute;
            top: 108px;
            left: 81px;
            z-index: 1;
            width: 119px;
        }
        .auto-style3 {
            position: absolute;
            top: 105px;
            left: 238px;
            z-index: 1;
            width: 119px;
        }
        .auto-style4 {
            position: absolute;
            top: 110px;
            left: 409px;
            z-index: 1;
            width: 92px;
            height: 15px;
        }
        .auto-style24 {
            position: absolute;
            top: 178px;
            left: 6px;
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
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Driver No:"></asp:Label>
    <asp:DropDownList ID="cboDriver1" runat="server" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="driverno" DataValueField="driverno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [driverno], [fname], [lname] FROM [tb_driver] ORDER BY [driverno]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboDriver2" runat="server" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="driverno" DataValueField="driverno">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style4">Produce Report</asp:LinkButton>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
