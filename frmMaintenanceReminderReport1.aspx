<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmMaintenanceReminderReport1.aspx.cs" Inherits="MiCar.frmMaintenanceReminderReport1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .auto-style4 {
            position: absolute;
            top: 115px;
            left: 9px;
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
        .auto-style25 {
            position: absolute;
            top: 181px;
            left: 10px;
            z-index: 1;
            width: 343px;
            height: 19px;
        }
        .auto-style24 {
            position: absolute;
            top: 211px;
            left: 17px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Registration No:"></asp:Label>
    <asp:DropDownList ID="cboRegNo1" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <br />
    <asp:DropDownList ID="cboRegNo2" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style10" style="z-index: 1; position: absolute; top: 124px; left: 481px">Produce Report</asp:LinkButton>
    <asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style25"></asp:Label>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style5" style="z-index: 1; position: absolute; top: 180px; left: 481px; width: 81px">Exit</asp:LinkButton>
    <br />
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <br />
</asp:Content>
