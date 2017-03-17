<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmPartsRequisitionReport.aspx.cs" Inherits="MiCar.frmTyreRequisitionReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style4 {
            position: absolute;
            top: 113px;
            left: 10px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 114px;
            left: 114px;
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
        .auto-style5 {
            position: absolute;
            top: 161px;
            left: 12px;
            z-index: 1;
            right: 939px;
        }
        .auto-style6 {
            position: absolute;
            top: 161px;
            left: 113px;
            z-index: 1;
            width: 131px;
        }
        .auto-style7 {
            position: absolute;
            top: 161px;
            left: 290px;
            z-index: 1;
            width: 131px;
            height: 13px;
        }
        .auto-style8 {
            position: absolute;
            top: 205px;
            left: 9px;
            z-index: 1;
            right: 942px;
            width: 30px;
        }
        .auto-style9 {
            position: absolute;
            top: 202px;
            left: 112px;
            z-index: 1;
            width: 131px;
        }
        .auto-style10 {
            position: absolute;
            top: 199px;
            left: 292px;
            z-index: 1;
            width: 131px;
            height: 13px;
            right: 558px;
        }
        .auto-style11 {
            position: absolute;
            top: 241px;
            left: 9px;
            z-index: 1;
            right: 890px;
        }
        .auto-style12 {
            position: absolute;
            top: 238px;
            left: 112px;
            z-index: 1;
            width: 131px;
            height: 13px;
            right: 738px;
        }
        .auto-style13 {
            position: absolute;
            top: 124px;
            left: 481px;
            z-index: 1;
            width: 95px;
            height: 24px;
            right: 391px;
        }
        .auto-style14 {
            position: absolute;
            top: 175px;
            left: 481px;
            z-index: 1;
            width: 95px;
            height: 24px;
            right: 391px;
        }
        .auto-style24 {
            position: absolute;
            top: 286px;
            left: 20px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel1" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Department:"></asp:Label>
    <asp:DropDownList ID="cboDate11" runat="server" AutoPostBack="True" CssClass="auto-style6" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:DropDownList ID="cboDept22" runat="server" AutoPostBack="True" CssClass="auto-style10" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Registration No:"></asp:Label>
    <asp:DropDownList ID="cboRegNo1" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:DropDownList ID="cboRegNo2" runat="server" AutoPostBack="True" CssClass="auto-style3" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="Date:"></asp:Label>
    <asp:DropDownList ID="cboDept11" runat="server" AutoPostBack="True" CssClass="auto-style9" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:DropDownList ID="cboDate22" runat="server" AutoPostBack="True" CssClass="auto-style7" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style11" Text="Part:"></asp:Label>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style14">Exit</asp:LinkButton>
    <asp:LinkButton ID="cmdReport1" runat="server" BorderStyle="Outset" CssClass="auto-style13">Produce Report</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:DropDownList ID="cboPart11" runat="server" AutoPostBack="True" CssClass="auto-style12" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:Label ID="lblResults1" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <br />
    <br />
</asp:Content>
