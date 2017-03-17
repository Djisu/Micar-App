<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmInsuranceReminderReport1.aspx.cs" Inherits="MiCar.frmInsuranceReminderReport1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .auto-style4 {
            position: absolute;
            top: 124px;
            left: 9px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 124px;
            left: 285px;
            z-index: 1;
            width: 131px;
            height: 13px;
        }
        .auto-style2 {
            position: absolute;
            top: 123px;
            left: 118px;
            z-index: 1;
            width: 131px;
        }
        .auto-style25 {
            position: absolute;
            top: 219px;
            left: 314px;
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
    <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Registration No:"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="cboRegNo2" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style10" style="z-index: 1; position: absolute; top: 124px; left: 481px">Produce Report</asp:LinkButton>
    <br />
    <asp:DropDownList ID="cboRegNo1" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style25"></asp:Label>
    <br />
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style9" style="z-index: 1; position: absolute; top: 183px; left: 481px; width: 84px">Exit</asp:LinkButton>
    <br />
    <br />
</asp:Content>
