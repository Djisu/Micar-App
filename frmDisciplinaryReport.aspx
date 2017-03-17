<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDisciplinaryReport.aspx.cs" Inherits="MiCar.frmDisciplinaryReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 131px;
            left: 127px;
            z-index: 1;
            width: 242px;
            height: 8px;
        }
        .auto-style2 {
            position: absolute;
            top: 128px;
            left: 476px;
            z-index: 1;
            width: 112px;
            right: 363px;
        }
        .auto-style3 {
            position: absolute;
            top: 136px;
            left: 9px;
            z-index: 1;
            width: 102px;
        }
        .auto-style4 {
            left: 16px;
            top: 190px;
            height: 243px;
            width: 880px;
        }
        .auto-style5 {
            position: absolute;
            top: 170px;
            left: 477px;
            z-index: 1;
            width: 113px;
        }
        .auto-style24 {
            position: absolute;
            top: 168px;
            left: 15px;
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
    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Driver's Name:"></asp:Label>
    <asp:DropDownList ID="cboDriver" runat="server" AutoPostBack="True" CssClass="auto-style1" DataSourceID="SqlDataSource1" DataTextField="driverno" DataValueField="driverno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [driverno], [fname], [lname] FROM [tb_driver]"></asp:SqlDataSource>
    <asp:LinkButton ID="cmdReport" runat="server" BorderStyle="Outset" CssClass="auto-style2" OnClick="cmdReport_Click">Produce Report</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style4" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="driverno" HeaderText="driverno" SortExpression="driverno" />
            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style5">Exit</asp:LinkButton>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
