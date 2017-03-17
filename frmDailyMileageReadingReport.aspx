<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDailyMileageReadingReport.aspx.cs" Inherits="MiCar.frmDailyMileageReadingReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style13 {
            z-index: 1;
            left: 6px;
            top: 240px;
            position: absolute;
            width: 481px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 10px; top: 178px; position: absolute" Text="Vehicle Registration No:"></asp:Label>
    <asp:DropDownList ID="cboRegno1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" style="z-index: 1; left: 165px; top: 172px; position: absolute; height: 13px; width: 157px">
    </asp:DropDownList>
    <asp:DropDownList ID="cboRegno2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" style="z-index: 1; left: 345px; top: 174px; position: absolute; width: 157px">
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 10px; top: 216px; position: absolute" Text="Date:"></asp:Label>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style2" style="z-index: 1; position: absolute; top: 219px; left: 565px; width: 83px">Exit</asp:LinkButton>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style13" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:DropDownList ID="cboDate1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date" style="z-index: 1; left: 167px; top: 217px; position: absolute; width: 157px">
    </asp:DropDownList>
    <asp:DropDownList ID="cboDate2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date" style="z-index: 1; left: 344px; top: 213px; position: absolute;  width: 157px">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style1" style="z-index: 1; position: absolute; top: 163px; left: 565px">Produce Report</asp:LinkButton>
</asp:Content>
