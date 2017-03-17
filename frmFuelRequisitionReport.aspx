<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmFuelRequisitionReport.aspx.cs" Inherits="MiCar.frmFuelRequisitionReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 170px;
            left: 8px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 114px;
            left: 118px;
            z-index: 1;
            width: 131px;
        }
        .auto-style3 {
            position: absolute;
            top: 113px;
            left: 290px;
            z-index: 1;
            width: 131px;
            height: 13px;
        }
        .auto-style4 {
            position: absolute;
            top: 115px;
            left: 9px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 206px;
            left: 111px;
            z-index: 1;
            width: 131px;
        }
        .auto-style6 {
            position: absolute;
            top: 166px;
            left: 117px;
            z-index: 1;
            width: 131px;
        }
        .auto-style7 {
            position: absolute;
            top: 211px;
            left: 8px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 172px;
            left: 292px;
            z-index: 1;
            width: 131px;
        }
        .auto-style9 {
            position: absolute;
            top: 202px;
            left: 508px;
            z-index: 1;
            width: 82px;
        }
        .auto-style10 {
            position: absolute;
            top: 128px;
            left: 507px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 256px;
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
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Date:"></asp:Label>
    <asp:DropDownList ID="cboRegNo1" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboRegNo2" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Registration No:"></asp:Label>
    <asp:DropDownList ID="cboDate1" runat="server" AutoPostBack="True" CssClass="auto-style6" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboDate2" runat="server" AutoPostBack="True" CssClass="auto-style8" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Fuel:"></asp:Label>
    <asp:DropDownList ID="cboFuel" runat="server" AutoPostBack="True" CssClass="auto-style5" DataSourceID="SqlDataSource4" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [code] FROM [tb_fuel]"></asp:SqlDataSource>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style9">Exit</asp:LinkButton>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style10">Produce Report</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
