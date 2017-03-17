<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRoadWorthyReminderReport.aspx.cs" Inherits="MiCar.frmRoadWorthyReminderReport" %>
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
        .auto-style24 {
            position: absolute;
            top: 178px;
            left: 11px;
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
    <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Registration No:"></asp:Label>
    <asp:DropDownList ID="cboRegNo1" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:DropDownList ID="cboRegNo2" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style10" style="z-index: 1; position: absolute; top: 124px; left: 481px">Produce Report</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style9" style="z-index: 1; position: absolute; top: 183px; left: 481px; width: 84px">Exit</asp:LinkButton>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
